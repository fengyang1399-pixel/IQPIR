export CUDA_LAUNCH_BLOCKING=1

#CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,7" torchrun --nproc_per_node=7 --master_port=4322 basicsr/train.py -opt /home/hp/work/CodeFormer_aesthetic/options/CodeFormer_stage2_dual_codebook.yml --launcher pytorch
#CUDA_VISIBLE_DEVICES="0,1,2,3,4,5,6,7" torchrun --nproc_per_node=7 --master_port=4322 basicsr/train.py -opt /home/hp/work/CodeFormer_aesthetic/options/CodeFormer_colorization.yml --launcher pytorch

CUDA_VISIBLE_DEVICES="1,2,3,4,5,6,7" torchrun --nproc_per_node=7 --master_port=4322 basicsr/train.py -opt /home/hp/work/CodeFormer_aesthetic/options/CodeFormer_stage2_nearest_scoreinject.yml --launcher pytorch
#CUDA_VISIBLE_DEVICES="0" torchrun --nproc_per_node=1 --master_port=4322 basicsr/train.py -opt /home/hp/work/CodeFormer_aesthetic/options/CodeFormer_stage2_nearest_scoreinject.yml --launcher pytorch
