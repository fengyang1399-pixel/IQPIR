#一阶段单codebook
CUDA_VISIBLE_DEVICES="2" torchrun --nproc_per_node=1 --master_port=4322 basicsr/train.py -opt /home/hp/work/CodeFormer_aesthetic/options/CodeFormer_colorization.yml --launcher pytorch