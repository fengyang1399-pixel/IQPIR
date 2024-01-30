# :milky_way: 训练文档
[English](train.md) **|** [简体中文](train_CN.md)

## 准备数据集
- 下载训练数据集: [FFHQ](https://github.com/NVlabs/ffhq-dataset)

---

## 训练

### 👾 阶段 I - VQGAN
- 训练VQGAN:
  > python -m torch.distributed.launch --nproc_per_node=8 --master_port=4321 basicsr/train.py -opt options/VQGAN_512_ds32_nearest_stage1.yml --launcher pytorch

- 训练完VQGAN后，可以通过下面代码预先获得训练数据集的密码本序列，从而加速后面阶段的训练过程:
  > python scripts/generate_latent_gt.py

- 如果你不需要训练自己的VQGAN，可以在Release v0.1.0文档中找到预训练的VQGAN和对应的密码本序列: https://github.com/sczhou/CodeFormer/releases/tag/v0.1.0

### 🚀 阶段 II - CodeFormer (w=0)
- 训练密码本训练预测模块:
  > python -m torch.distributed.launch --nproc_per_node=8 --master_port=4322 basicsr/train.py -opt options/CodeFormer_stage2.yml --launcher pytorch

### 🛸 阶段 III - CodeFormer (w=1)
- 训练可调模块:
  > python -m torch.distributed.launch --nproc_per_node=8 --master_port=4323 basicsr/train.py -opt options/CodeFormer_stage3.yml --launcher pytorch

- 预训练CodeFormer模型可以在Releases v0.1.0文档里下载: https://github.com/sczhou/CodeFormer/releases/tag/v0.1.0

---

:whale: 该项目是基于[BasicSR](https://github.com/XPixelGroup/BasicSR)框架搭建，有关训练、Resume等详细介绍可以查看文档: https://github.com/XPixelGroup/BasicSR/blob/master/docs/TrainTest_CN.md