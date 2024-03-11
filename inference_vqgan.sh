#python scripts/inference_vqgan.py -i /data/ffhq512_7w -o results/vqgan_rec/codeformer_aesthetic_2/15w/input_ffhq512/2codebook --ckpt_path /data/weight/codeformer_aesthetic/2_0.87/net_g_150000.pth
python scripts/inference_vqgan.py -i /data/ffhq512_7w -o results/vqgan_rec/codeformer_src/input_ffhq512/2codebook --ckpt_path /data/weight/codeformer_reward/CodeFormer/vqgan_code1024.pth
