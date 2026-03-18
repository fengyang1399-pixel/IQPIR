#python inference_inpainting.py --input_path /data1/hp/celeba_512_validation_inpainting_test -o /data1/hp/results/codeformer_stage2/celeba_inpainting_scorev1/s9 --ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20241030_083128_CodeFormer_inpainting/models/net_g_150000.pth

#python inference_inpainting.py --input_path /data1/hp/celeba_512_validation_inpainting_test -o /data1/hp/results/codeformer_stage2/celeba_inpainting_src/ --ckpt /data1/hp/ckpts/codeformer_src/codeformer_inpainting.pth

python inference_inpainting.py \
    --input_path inputs/masked_faces \
    -o results/inpainting \
    --ckpt weights/[path/to/checkpoint.pth]
