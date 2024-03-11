#python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/16x -o results/codeformer_stage2/codeformer_src/input_celeba16x -ckpt /data/weight/codeformer_reward/CodeFormer/codeformer.pth --has_aligned -s 1 -w 0 -qt nearest -aw 1
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_web_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_lfw_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_wider_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# lfw ours 13_2 random score
#python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_lfw_testaw1_randomscore_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# lfw ours 13_2 random score
#python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_12/input_lfw_testaw1_randomscore_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1


# #web ours 13_2 score 7
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_web_testaw1_score7_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

#web ours 13_2 score 5
#python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_web_testaw1_score5_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
#web ours 13_2 random score from ffhq512_all7w_musiq_gfiqa.csv
#python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_web_testaw1_randomscore_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1


# python inference_codeformer.py -i /data/test_data/test_data/celeba_512_validation_lq -o results/codeformer_stage2/codeformer_aesthetic_18/input_celebalq_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_18/input_web_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_18/input_lfw_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_18/input_wider_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # #celeba16x ours 18score 9
# python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/16x -o results/codeformer_stage2/codeformer_aesthetic_18/input_celeba16x_testaw1_score7_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # #celeba16x ours 18score 9
#python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/8x -o results/codeformer_stage2/codeformer_aesthetic_18/input_celeba8x_testaw1_score9_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1


# # # #celeba16x ours 23score 6
# python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/16x -o results/codeformer_stage2/codeformer_aesthetic_23/input_celeba16x_testaw1_score6_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_60000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # #celeba16x ours 24score 6
#python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/16x -o results/codeformer_stage2/codeformer_aesthetic_24/input_celeba16x_testaw1_score6_6w -ckpt /data/weight/codeformer_aesthetic/24/net_g_60000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1


# celeba16x ours 24
#python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/16x -o results/codeformer_stage2/codeformer_aesthetic_24_score4/input_celebalq_testaw1_18w -ckpt /data/weight/codeformer_aesthetic/24/net_g_180000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# # web ours 24
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_24_score6/input_web_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/24/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# # lfw ours 24
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_24_score6/input_lfw_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_240000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# # wider ours 24
# python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_24_score6/input_wider_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/24/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

##celeba8x cf src
#python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/8x -o results/codeformer_stage2/codeformer_src/input_celeba8x -ckpt /data/weight/codeformer_reward/CodeFormer/codeformer.pth --has_aligned -s 1 -w 0 -qt nearest -aw 1

# # webphoto ours 27 [0.65,0.91,0.91,0.91]
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_27/input_web_testaw1_20w -ckpt /data/weight/codeformer_aesthetic/27/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # #celeba8x ours 13_2 score 9
# python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/8x -o results/codeformer_stage2/codeformer_aesthetic_13_2/input_celeba8x_testaw1_score9_20w -ckpt /data/weight/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # 24_2 16x 5w
# python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/16x -o results/codeformer_stage2/codeformer_aesthetic_24_2_score6/input_celeba16x_testaw1_5w -ckpt /data/weight/codeformer_aesthetic/24_2/net_g_50000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1


# # 23 16x 20w
#python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/16x -o results/codeformer_stage2/codeformer_aesthetic_23/input_celeba16x_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

#web ours 12 score9
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test/00006_00.png -o results/codeformer_stage2/codeformer_aesthetic_18/input_web_testaw1_score7_20w -ckpt /data/weight/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # 23 8x 20w
python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/8x -o results/codeformer_stage2/codeformer_aesthetic_23/input_celeba8x_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # 23 lfw 20w
python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_23/input_lfw_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # 23 web 20w
python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_23/input_web_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # 23 wider 20w
python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_23/input_wider_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1


