import math
from basicsr.data import gaussian_kernels as gaussian_kernels
import os
from PIL import Image
from numpy import asarray
import numpy as np
import cv2
from tqdm import tqdm
from basicsr.utils.img_util import imwrite
def degrade(imagedir,save_dir):
    paths=os.listdir(imagedir)
    kernel_list= ['iso', 'aniso']
    kernel_prob= [0.5, 0.5]
    blur_sigma= [1, 15]
    downsample_range= [4, 30]
    noise_range= [0, 20]
    jpeg_range= [30, 80]
    blur_kernel_size= 41
    gt_size,in_size=512,512
    for name in tqdm(paths):
        path=os.path.join(imagedir,name)
        img_in=asarray(Image.open(path))/255.

        # gaussian blur
        kernel = gaussian_kernels.random_mixed_kernels(
            kernel_list,
            kernel_prob,
            blur_kernel_size,
            blur_sigma,
            blur_sigma, 
            [-math.pi, math.pi],
            noise_range=None)
        img_in = cv2.filter2D(img_in, -1, kernel)

        # downsample
        #scale = np.random.uniform(downsample_range[0], downsample_range[1])
        scale=8
        img_in = cv2.resize(img_in, (int(gt_size // scale), int(gt_size // scale)), interpolation=cv2.INTER_LINEAR)

        # noise
        noise_sigma = np.random.uniform(noise_range[0] / 255., noise_range[1] / 255.)
        noise = np.float32(np.random.randn(*(img_in.shape))) * noise_sigma
        img_in = img_in + noise
        img_in = np.clip(img_in, 0, 1)

        # jpeg
        jpeg_p = np.random.uniform(jpeg_range[0], jpeg_range[1])
        #print(jpeg_p)
        encode_param = [int(cv2.IMWRITE_JPEG_QUALITY), jpeg_p]
        _, encimg = cv2.imencode('.jpg', img_in * 255., encode_param)
        img_in = np.float32(cv2.imdecode(encimg, 1)) / 255.

        # resize to in_size
        img_in = cv2.resize(img_in, (in_size, in_size), interpolation=cv2.INTER_LINEAR)
        img_in = np.clip((img_in * 255.0).round(), 0, 255)
        cv2.cvtColor(img_in, cv2.COLOR_RGB2BGR, img_in)
        imwrite(img_in,os.path.join(save_dir,name))

degrade('/data/test_data/test_data/celeba_512_validation','/home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/8x/')