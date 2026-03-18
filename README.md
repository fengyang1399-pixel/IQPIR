# IQPIR: Beyond Ground-Truth: Leveraging Image Quality Priors for Real-World Image Restoration

[![CVPR](https://img.shields.io/badge/CVPR-2026-blue)]()

**Fengyang Xiao\*, Peng Hu\*, Lei Xu, XingE Guo, Guanyi Qin, Yuqi Shen, Chengyu Fang, Rihan Zhang, Chunming He†, and Sina Farsiu**

Duke University · Tsinghua University · EPFL

\*Equal Contribution · †Corresponding Author

Contact: fengyang.xiao@duke.edu / chunming.he@duke.edu

[[Paper](https://arxiv.org/abs/COMING_SOON)] [[Models & Results](https://drive.google.com/COMING_SOON)]

> **Abstract:** Real-world image restoration aims to restore high-quality (HQ) images from degraded low-quality (LQ) inputs captured under uncontrolled conditions. Existing methods typically depend on ground-truth (GT) supervision, assuming that GT provides perfect reference quality. However, GT can still contain images with inconsistent perceptual fidelity, causing models to converge to the average quality level of the training data rather than achieving the highest perceptual quality attainable. To address these problems, we propose a novel framework, termed IQPIR, that introduces an Image Quality Prior (IQP), extracted from pretrained No-Reference Image Quality Assessment (NR-IQA) models, to guide the restoration process toward perceptually optimal outputs explicitly. Our approach synergistically integrates IQP with a learned codebook prior through three key mechanisms: (1) a quality-conditioned Transformer, (2) a dual-branch codebook structure, and (3) a discrete representation-based quality optimization strategy. Extensive experiments on real-world image restoration demonstrate that our method not only surpasses cutting-edge methods but also serves as a generalizable quality-guided enhancement strategy for existing methods.

## 🔥 News
* **2026-03-17:** We release this repository and the code.

## 🔗 Contents
* [Usage](#usage)
* [Results](#results)
* [Citation](#citation)
* [Acknowledgement](#acknowledgement)

## ⚙️ Usage

### 1. Prerequisites

Coming soon.

### 2. Pretrained Models

Coming soon.

### 3. Inference

**Blind Face Restoration:**
```bash
python inference_codeformer.py \
    -i [input_path] \
    -o [output_path] \
    -w 0.5 \
    -score 0.9 \
    --has_aligned \
    -qt dual_codebook \
    -ckpt [path_to_checkpoint]
```

**Key arguments:**

| Argument | Description |
|----------|-------------|
| `-w` | Fidelity weight: 0.0 = quality, 1.0 = fidelity |
| `-score` | IQA condition score: set to 0.9 for highest quality output |
| `-qt` | Codebook type: use `dual_codebook` for IQPIR |
| `--has_aligned` | Input images are already aligned faces |
| `-ckpt` | Path to model checkpoint |

### 4. Training

Coming soon.

## 🔍 Results

Coming soon.

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
