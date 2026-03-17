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

# # # 23 8x 20w
# python inference_codeformer.py -i /home/ma-user/work/pyProject/CodeFormer_aesthetic/results/degraded_celeba/8x -o results/codeformer_stage2/codeformer_aesthetic_23/input_celeba8x_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # 23 lfw 20w
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_23/input_lfw_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # 23 web 20w
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_23/input_web_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # 23 wider 20w
# python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_23/input_wider_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # 30 web 20w
#python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_30/input_web_testaw1_score9_20w -ckpt /data/weight/codeformer_aesthetic/30/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# # 30 wider 20w
# python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_30/input_wider_testaw1_score9_20w -ckpt /data/weight/codeformer_aesthetic/30/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# # # 30 lfw 20w
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_30/input_lfw_testaw1_score9_20w -ckpt /data/weight/codeformer_aesthetic/30/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1

# # # 12 wider 20w
# python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_12/input_wider_testaw1_score9_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
# # # 12 lfw 20w
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_12/input_lfw_testaw1_score9_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1
#web ours 12 score7
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test/ -o results/codeformer_stage2/codeformer_aesthetic_12/input_web_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.85
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test/ -o results/codeformer_stage2/codeformer_aesthetic_12/input_web_testaw1_score7_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test/ -o results/codeformer_stage2/codeformer_aesthetic_12/input_web_testaw1_score6_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.65
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test/ -o results/codeformer_stage2/codeformer_aesthetic_12/input_web_testaw1_score5_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.55

# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_12/input_lfw_testaw1_score8_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.85
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_12/input_lfw_testaw1_score7_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_12/input_lfw_testaw1_score6_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.65
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_12/input_lfw_testaw1_score5_20w -ckpt /data/weight/codeformer_aesthetic/12/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.55

# # 23 lfw 20w
# python inference_codeformer.py -i /data/test_data/test_data/lfw_cropped_faces/cropped_faces -o results/codeformer_stage2/codeformer_aesthetic_23/input_lfw_testaw1_score6_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.65
# # 23 web 20w
# python inference_codeformer.py -i /data/test_data/test_data/WebPhoto-Test/WebPhoto-Test -o results/codeformer_stage2/codeformer_aesthetic_23/input_web_testaw1_score6_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.65

# # # 23 wider 20w
# python inference_codeformer.py -i /data/test_data/test_data/Wider-Test -o results/codeformer_stage2/codeformer_aesthetic_23/input_wider_testaw1_score6_20w -ckpt /data/weight/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.65




# ## 13 2 lfw 20w score=7
# #python inference_codeformer.py -i /data1/hp/lfw -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_lfw_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 13 2 wider 20w score=7
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_wider_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 13 2 webphoto 20w score=7
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_WebPhoto-Test_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 13 2 celeba 20w score=7
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_celeba_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75


# ## 13 2 lfw 20w score=9
# python inference_codeformer.py -i /data1/hp/lfw -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_lfw_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95

# ## 13 2 wider 20w score=9
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_wider_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95

# ## 13 2 webphoto 20w score=9
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_WebPhoto-Test_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95

# ## 13 2 celeba 20w score=9
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_13_2/input_celeba_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/13_2/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95

## 23 lfw 20w score=8
# python inference_codeformer.py -i /data1/hp/lfw -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_23/input_lfw_testaw1_score8_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.85

# ## 23 wider 20w score=8
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_23/input_wider_testaw1_score8_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.85

# ## 23 webphoto 20w score=8
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_23/input_WebPhoto-Test_testaw1_score8_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.85

# ## 23 celeba 20w score=8
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_23/input_celeba_testaw1_score8_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/23/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.85



# ## 18 lfw 20w score=8
# python inference_codeformer.py -i /data1/hp/lfw -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_lfw_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95

# ## 18 wider 20w score=8
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_wider_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95

# ## 18 webphoto 20w score=8
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_WebPhoto-Test_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95

# ## 18 celeba 20w score=8
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_celeba_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.95



# ## 18 lfw 20w score=7
# python inference_codeformer.py -i /data1/hp/lfw -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_lfw_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 18 wider 20w score=
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_wider_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 18 webphoto 20w score=
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_WebPhoto-Test_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 18 celeba 20w score=
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_celeba_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

## 18 lfw 20w score=7
#python inference_codeformer.py -i /data1/hp/lfw -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_27/input_lfw_testaw1_score9_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/27/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

## 18 wider 20w score=
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_wider_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 18 webphoto 20w score=
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_WebPhoto-Test_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75

# ## 18 celeba 20w score=
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_18/input_celeba_testaw1_score7_20w -ckpt /data1/hp/data/weights/codeformer_aesthetic/18/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 1 -score 0.75


## 18 lfw 20w score=7
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq_16x -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/input_celceba16x_testaw0.8_score7_20w -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20241101_043737_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.75

#python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq_8x -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/input_celceba8x_cf_src -ckpt /data1/hp/ckpts/codeformer_src/codeformer.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 
#python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq_16x -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_celceba16x_testaw0.8_score7_20w -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20241103_163339_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.75
#python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq_16x  -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_celceba16x_testaw0.0_score7_20w -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20241103_163339_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.0 -score 0.75

#lfw
#python inference_codeformer.py -i /data1/hp/lfw  -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/input_lfw_testaw0.8_score9_20w -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.91
#web
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test  -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/input_web_testaw0.8_score9_20w -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.91
# #wider
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/input_wider_testaw0.8_score9_20w -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.91

#ours43 s9 celeba 
# python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/input_celcebalq_testaw0.8_score9_20w -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95

#过优化10w celeba
#python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_overopti/wider_testaw0.8_s9_w0 -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/overoptimization/models/net_g_100000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95

#cf+ s9
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/cvpr25/cf_scoreinject/web_s9_w0 -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/cf+score_singlecodebook_noqualityloss/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/wider -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/input_wider_testaw0.8_score8_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.85

# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score0_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.05
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score1_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.15
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score2_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.25
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score3_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.35
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score4_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.45
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score5_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.55
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score6_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.65
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score7_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.75
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score8_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.85
# python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_web_testaw0.8_score9_20w/restored_faces -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95

#python inference_codeformer.py -i /data1/hp/celeba_512_validation_lq -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/input_celebalq_testaw0.8_score9_20w/restored_faces -ckpt /data1/hp/ckpts/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/CelebA -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/ntire/test/CelebA/ -ckpt /data1/hp/ckpts/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/CelebChild-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/ntire/test/CelebChild-Test/ -ckpt /data1/hp/ckpts/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/LFW-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/ntire/test/LFW-Test/ -ckpt /data1/hp/ckpts/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/ntire/test/WebPhoto-Test/ -ckpt /data1/hp/ckpts/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/Wider-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_43/ntire/test/Wider-Test/ -ckpt /data1/hp/ckpts/experiments/43/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95

# python inference_codeformer.py -i /data1/hp/ntire/CelebA -o /data1/hp/results/ntire/v1_clip+musiq+qalign/celeba/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250227_095120_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/CelebChild-Test -o /data1/hp/results/ntire/v1_clip+musiq+qalign/celebachild/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250227_095120_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/LFW-Test -o /data1/hp/results/ntire/v1_clip+musiq+qalign/lfw/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250227_095120_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/WebPhoto-Test -o /data1/hp/results/ntire/v1_clip+musiq+qalign/web/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250227_095120_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/Wider-Test -o /data1/hp/results/ntire/v1_clip+musiq+qalign/wider/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250227_095120_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95

# python inference_codeformer.py -i /data1/hp/ntire/test/CelebA -o /data1/hp/results/ntire/test/cliploss_v1/celeba/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250302_092031_CodeFormer_stage2/models/net_g_latest.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/CelebChild-Test -o /data1/hp/results/ntire/v2_clip/celebachild/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250228_165458_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/LFW-Test -o /data1/hp/results/ntire/v2_clip_s1/lfw/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250228_165458_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.15
# python inference_codeformer.py -i /data1/hp/ntire/WebPhoto-Test -o /data1/hp/results/ntire/v2_clip/web/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250228_165458_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/Wider-Test -o /data1/hp/results/ntire/v2_clip/wider/ -ckpt /home/hp/work/CodeFormer_aesthetic/experiments/20250228_165458_CodeFormer_stage2/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95

# python inference_codeformer.py -i /data1/hp/ntire/test/CelebA -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/ntire/test/CelebA/ -ckpt /data1/hp/ckpts/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/CelebChild-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/ntire/test/CelebChild-Test/ -ckpt /data1/hp/ckpts/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/LFW-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/ntire/test/LFW-Test/ -ckpt /data1/hp/ckpts/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/ntire/test/WebPhoto-Test/ -ckpt /data1/hp/ckpts/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
# python inference_codeformer.py -i /data1/hp/ntire/test/Wider-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/ntire/test/Wider-Test/ -ckpt /data1/hp/ckpts/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95

#python inference_codeformer.py -i /data1/hp/celeba_512_validation_color_lq -o /data1/hp/results/cvpr25/cf_scoreinject/celeblq_grayinput_s9_w0 -ckpt /data1/hp/ckpts/experiments/20241104_165750_CodeFormer_colorization/models/net_g_latest.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95
CUDA_VISIBLE_DEVICES="2" python inference_codeformer.py -i /data1/hp/ntire/test/WebPhoto-Test -o /data1/hp/results/codeformer_stage2/codeformer_aesthetic_44/ntire/test/WebPhoto-Test/ -ckpt /data1/hp/ckpts/experiments/44/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt dual_codebook -aw 0.8 -score 0.95
#CUDA_VISIBLE_DEVICES="2"  python inference_codeformer.py -i /data1/hp/WebPhoto-Test -o /data1/hp/results/cvpr25/cf_scoreinject/web_s9_w0 -ckpt /data1/hp/ckpts/experiments/cf+score_singlecodebook_noqualityloss/models/net_g_200000.pth --has_aligned -s 1 -w 0 -qt nearest -aw 0.8 -score 0.95