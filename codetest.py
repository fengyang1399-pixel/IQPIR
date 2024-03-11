import torch
import pdb

path1='/home/ma-user/work/pyProject/CodeFormer_aesthetic/weights/CodeFormer_aesthetic/150w_HQplus_latent_gt_code1024_ori.pth'
path2='/home/ma-user/work/pyProject/CodeFormer_aesthetic/weights/CodeFormer_aesthetic/150w_HQplus_latent_gt_code1024_hflip.pth'
path3='/home/ma-user/work/pyProject/CodeFormer_aesthetic/weights/CodeFormer_aesthetic/150w_HQplus_latent_gt_code1024.pth'
dict1=torch.load(path1)
dict2=torch.load(path2)
pdb.set_trace()
dict3={}
dict3['orig']=dict1['orig']
dict3['hflip']=dict2['hflip']
torch.save(dict3,path3)
