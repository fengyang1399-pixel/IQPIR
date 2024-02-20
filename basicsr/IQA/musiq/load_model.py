import os
import pdb

import torch
import torchvision

import numpy as np
import pandas as pd
import cv2
from tqdm import tqdm

from .option.config import Config
from .model.backbone import resnet50_backbone
from .model.model_main import IQARegression


# configuration
config = Config({
'checkpoint': './basicsr/IQA/musiq/weights/epoch80.pth',                              # weights of trained model
# ViT structure
'n_enc_seq': 16*16 + 12*12 + 7*5,        # input feature map dimension (N = H*W) from backbone
'n_layer': 14,                          # number of encoder layers
'd_hidn': 384,                          # input channel of encoder (input: C x N)
'i_pad': 0,
'd_ff': 384,                            # feed forward hidden layer dimension
'd_MLP_head': 1152,                     # hidden layer of final MLP
'n_head': 6,                            # number of head (in multi-head attention)
'd_head': 384,                          # channel of each head -> same as d_hidn
'dropout': 0.1,                         # dropout ratio
'emb_dropout': 0.1,                     # dropout ratio of input embedding
'layer_norm_epsilon': 1e-12,
'n_output': 1,                          # dimension of output
'Grid': 10,                             # grid of 2D spatial embedding
'scale_1': 384,                         # multi-scale                                             
'scale_2': 224,                         # multi-scale
})
# device setting
config.device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
if torch.cuda.is_available():
    print('Using Cuda')
else:
    print('Using CPU')

# create model
def model_init():
    model_backbone = resnet50_backbone().to(config.device)
    model_transformer = IQARegression(config).to(config.device)

    # load weights
    checkpoint = torch.load(config.checkpoint, map_location=config.device)
    model_backbone.load_state_dict(checkpoint['model_backbone_state_dict'])
    model_transformer.load_state_dict(checkpoint['model_transformer_state_dict'])
    model_backbone.eval()
    model_transformer.eval()
    return model_backbone, model_transformer



# inference
def inference(model_backbone, model_transformer, d_img_org):
    # input normalize
    class Normalize(object):
        def __init__(self, mean, var):
            self.mean = mean
            self.var = var
        def __call__(self, sample):
            sample2=sample.clone()
            sample2[:, 0, :, :] = (sample[:, 0, :, :] - self.mean[0]) / self.var[0]
            sample2[:, 1, :, :] = (sample[:, 1, :, :] - self.mean[1]) / self.var[1]
            sample2[:, 2, :, :] = (sample[:, 2, :, :] - self.mean[2]) / self.var[2]
            return sample2
    # input transform
    transforms = torchvision.transforms.Compose([Normalize([0.485, 0.456, 0.406], [0.229, 0.224, 0.225])])

    # input mask (batch_size x len_sqe+1)
    

    b, c, h, w = d_img_org.size()
    mask_inputs = torch.ones(b, config.n_enc_seq+1).to(config.device)
    d_img_scale_1 = torch.nn.functional.interpolate(d_img_org, size=[config.scale_1, int(h*(config.scale_1/w))], mode='bicubic')
    d_img_scale_2 = torch.nn.functional.interpolate(d_img_org, size=[config.scale_2, int(h*(config.scale_2/w))], mode='bicubic')
    d_img_scale_2 = d_img_scale_2[:, :, :160, :]
    d_img_org = transforms(d_img_org)
    d_img_scale_1 = transforms(d_img_scale_1)
    d_img_scale_2 = transforms(d_img_scale_2)

    feat_dis_org = model_backbone(d_img_org)
    feat_dis_scale_1 = model_backbone(d_img_scale_1)
    feat_dis_scale_2 = model_backbone(d_img_scale_2)

    # quality prediction
    return model_transformer(mask_inputs, feat_dis_org, feat_dis_scale_1, feat_dis_scale_2)


        






