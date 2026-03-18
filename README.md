# IQPIR: Beyond Ground-Truth: Leveraging Image Quality Priors for Real-World Image Restoration

[![CVPR](https://img.shields.io/badge/CVPR-2026-blue)]()

**Fengyang Xiao\*, Peng Hu\*, Lei Xu, XingE Guo, Guanyi Qin, Yuqi Shen, Chengyu Fang, Rihan Zhang, Chunming He†, and Sina Farsiu**

Duke University · Tsinghua University · EPFL

\*Equal Contribution · †Corresponding Author

Contact: fengyang.xiao@duke.edu / chunming.he@duke.edu

[[Paper](https://arxiv.org/abs/COMING_SOON)] [[Models & Results](https://drive.google.com/COMING_SOON)]

> **Abstract:** Real-world image restoration aims to restore high-quality (HQ) images from degraded low-quality (LQ) inputs captured under uncontrolled conditions. Existing methods typically depend on ground-truth (GT) supervision, assuming that GT provides perfect reference quality. However, GT can still contain images with inconsistent perceptual fidelity, causing models to converge to the average quality level of the training data rather than achieving the highest perceptual quality attainable. To address these problems, we propose a novel framework, termed IQPIR, that introduces an Image Quality Prior (IQP), extracted from pretrained No-Reference Image Quality Assessment (NR-IQA) models, to guide the restoration process toward perceptually optimal outputs explicitly. Our approach synergistically integrates IQP with a learned codebook prior through three key mechanisms: (1) a quality-conditioned Transformer, (2) a dual-branch codebook structure, and (3) a discrete representation-based quality optimization strategy. Extensive experiments on real-world image restoration demonstrate that our method not only surpasses cutting-edge methods but also serves as a generalizable quality-guided enhancement strategy for existing methods.

## 🔥 News
* **2026-03-XX:** We release this repository and the code.

## 🔗 Contents
* [Usage](#usage)
* [Results](#results)
* [Citation](#citation)
* [Acknowledgement](#acknowledgement)

## ⚙️ Usage

### 1. Prerequisites

> Note that IQPIR is tested on Ubuntu with the following environments.

* Create a virtual environment: `conda create -n IQPIR python=3.9`
* Activate: `conda activate IQPIR`
* Install PyTorch: `pip install torch==2.0.1 torchvision==0.15.2 --index-url https://download.pytorch.org/whl/cu118`
* Install dependencies: `pip install -r requirements.txt`
* Install basicsr: `cd basicsr && python setup.py develop && cd ..`

### 2. Pretrained Models

Coming soon. Models will be released on Google Drive.

| Model | Description | Download |
|-------|-------------|----------|
| vqgan_code1024.pth | Stage I: VQGAN + Dual Codebook | Coming Soon |
| IQPIR_stage2.pth | Stage II: Quality-conditioned Transformer | Coming Soon |
| IQPIR_stage3.pth | Stage III: Full model with quality optimization | Coming Soon |

Place downloaded weights under `weights/`.

### 3. Inference

**Blind Face Restoration (whole images):**
```bash
python inference_codeformer.py \
    --input_path inputs/whole_imgs \
    --output_path results/restored \
    --fidelity_weight 0.5 \
    --upscale 2 \
    --face_upsample
```

**Key arguments:**

| Argument | Default | Description |
|----------|---------|-------------|
| `--fidelity_weight` | 0.5 | 0.0 = quality, 1.0 = fidelity |
| `--upscale` | 2 | Background upscale factor |
| `--face_upsample` | — | Enable face super-resolution |

### 4. Training
```bash
# Stage I: Dual Codebook Learning
python basicsr/train.py -opt options/VQGAN_512_ds32_nearest_stage1.yml

# Stage II: Quality-conditioned Transformer
python basicsr/train.py -opt options/CodeFormer_stage2.yml

# Stage III: Quality Optimization
python basicsr/train.py -opt options/CodeFormer_stage3.yml
```

Place FFHQ training data at `datasets/ffhq/ffhq_512/`, or update `dataroot_gt` in the corresponding `.yml` config file.

## 🔍 Results

Quantitative and qualitative results on blind face restoration (LFW-Test, WebPhoto-Test, WIDER-Test), low-light image enhancement (LOL-v1, LOL-v2), underwater image enhancement (UIEB), and backlit image enhancement (BAID). See paper for full details.

## 📎 Citation

If you find this work useful, please cite:
```bibtex
@inproceedings{xiao2026iqpir,
  title     = {Beyond Ground-Truth: Leveraging Image Quality Priors for Real-World Image Restoration},
  author    = {Xiao, Fengyang and Hu, Peng and Xu, Lei and Guo, XingE and Qin, Guanyi and Shen, Yuqi and Fang, Chengyu and Zhang, Rihan and He, Chunming and Farsiu, Sina},
  booktitle = {Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)},
  year      = {2026}
}
```

## Acknowledgement

The code is built on [CodeFormer](https://github.com/sczhou/CodeFormer) and [BasicSR](https://github.com/XPixelGroup/BasicSR). Please follow their respective licenses. Thanks for their awesome work.

## Contact

If you have any questions, please feel free to contact fengyang.xiao@duke.edu or chunming.he@duke.edu, or open a GitHub issue.
