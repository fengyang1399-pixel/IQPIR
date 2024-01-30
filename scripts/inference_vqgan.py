import argparse
import glob
import numpy as np
import os
import cv2
import torch
from torchvision.transforms.functional import normalize
from basicsr.utils import imwrite, img2tensor, tensor2img

from basicsr.utils.registry import ARCH_REGISTRY
import numpy as np
import matplotlib.pyplot as plt
def count_curve(data1:list,data2:list,bin:int):


    # Sample data: Generating a random list of float values
    np.random.seed(0) # For reproducibility
    data3=[data1[i]+data2[i] for i in range(len(data1))]
    # Splitting the data into 50 bins and counting the number of elements in each bin
    counts1, bin_edges1 = np.histogram(data1, bins=bin)
    counts2, bin_edges2 = np.histogram(data2, bins=bin)
    counts3, bin_edges3 = np.histogram(data3, bins=bin)
    
    # Plotting
    plt.figure(figsize=(10, 6))
    plt.plot(bin_edges1[1:], counts1, marker='o',label='c1') # Using bin_edges[1:] to align counts with their respective bins
    plt.plot(bin_edges2[1:], counts2, marker='o',label='c2') # Using bin_edges[1:] to align counts with their respective bins
    plt.plot(bin_edges3[1:], counts3, marker='o',label='c1+c2') # Using bin_edges[1:] to align counts with their respective bins
    plt.title("Distribution of Counts in 50 Bins")
    plt.xlabel("Bin Edges")
    plt.ylabel("Counts")
    plt.legend()
    plt.grid(True)
    plt.savefig('mean_count.png')

def dot_plot(c1,c2):
    c3=[c1[i]+c2[i] for i in range(len(c1))]
    y=[i for i in range(len(c1))]
    plt.figure(figsize=(10, 6))
    plt.scatter(y,c1,label='c1')
    plt.scatter(y,c2,label='c2')
    plt.scatter(y,c3,label='c3')
    plt.xlabel("mean")
    plt.legend()
    plt.grid(True)
    plt.savefig('mean_dot.png')
if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--test_path', type=str, default='datasets/ffhq/ffhq_512')
    parser.add_argument('-o', '--save_root', type=str, default='./results/vqgan_rec')
    parser.add_argument('--codebook_size', type=int, default=1024)
    parser.add_argument('--ckpt_path', type=str, default='./experiments/pretrained_models/vqgan/net_g.pth')
    args = parser.parse_args()

    if args.save_root.endswith('/'):  # solve when path ends with /
        args.save_root = args.save_root[:-1]
    dir_name = os.path.abspath(args.save_root)
    os.makedirs(dir_name, exist_ok=True)

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    test_path = args.test_path
    save_root = args.save_root
    ckpt_path = args.ckpt_path
    codebook_size = args.codebook_size

    vqgan = ARCH_REGISTRY.get('VQAutoEncoder')(512, 64, [1, 2, 2, 4, 4, 8], 'dual_codebook',
                                                codebook_size=codebook_size,aesthetic_threshold=0.9,aesthetic_weight=1.0).to(device)
    checkpoint = torch.load(ckpt_path)['params_ema']

    vqgan.load_state_dict(checkpoint)
    vqgan.eval()

    for img_path in sorted(glob.glob(os.path.join(test_path, '*.[jp][pn]g')))[:100]:
        img_name = os.path.basename(img_path)
        print(img_name)
        img = cv2.imread(img_path)
        img = img2tensor(img / 255., bgr2rgb=True, float32=True)
        normalize(img, (0.5, 0.5, 0.5), (0.5, 0.5, 0.5), inplace=True)
        img = img.unsqueeze(0).to(device)
        with torch.no_grad():
            output = vqgan(img,aesthetic_score=0.95)[0]
            output = tensor2img(output, min_max=[-1,1])
            img = tensor2img(img, min_max=[-1,1])
            restored_img = np.concatenate([img, output], axis=1)
            restored_img = output
        del output
        torch.cuda.empty_cache()

        path = os.path.splitext(os.path.join(save_root, img_name))[0]
        save_path = f'{path}.png'
        imwrite(restored_img, save_path)
    c1_mean,c2_mean=vqgan.c1_mean,vqgan.c2_mean
    #count_curve(c1_mean,c2_mean,100)
    #dot_plot(c1_mean,c2_mean)

    print(f'\nAll results are saved in {save_root}')

