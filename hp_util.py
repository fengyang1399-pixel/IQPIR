import os
import pdb
import random
import pandas as pd
from pandas import read_excel
import numpy as np
import matplotlib.pyplot as plt
import numpy as np
def random_select_for_user_study():
    # 目录列表
    directories = ['/data/results/codeformer_aesthetic/codeformer_stage2/codeformer_aesthetic_13_2/input_lfw_testaw1_20w/restored_faces',
                    '/data/results/codeformer_aesthetic/codeformer_stage2/codeformer_aesthetic_13_2/input_web_testaw1_20w/restored_faces', 
                    '/data/results/codeformer_aesthetic/codeformer_stage2/codeformer_aesthetic_13_2/input_wider_testaw1_20w/restored_faces',
                    ]

    # 每个目录选择的文件数量
    files= 100

    # 存储选中的文件名
    selected_files = []
    all_files=[]
    # 遍历每个目录
    for directory in directories:
        # 列出目录下所有文件
        all_files.extend([f for f in os.listdir(directory)])
        
    selected_files.extend(random.sample(all_files, files))

    # 输出到CSV文件
    df = pd.DataFrame({'file_names': selected_files})
    df.to_csv('./selected_images.csv', index=False)

    print(f"Selected files are saved to 'selected_images.csv'.")
def get_images():
    selected='selected_images.csv'
    flist=pd.read_csv(selected)['file_names'].to_list()
    target='/data/results/user_study/daefr/'
    directories = ['/data/results/DAEFR/lfw/restored_faces',
                    '/data/results/DAEFR/web/restored_faces', 
                    '/data/results/DAEFR/wider/restored_faces',
                    ]
    for f in flist:
        f=f[:-4]+'_00'+f[-4:]
        f_=[os.path.join(directory, f) for directory in directories if os.path.isfile(os.path.join(directory, f))][0]
        os.system(f'cp {f_} {target}')
def concat_image():
    from PIL import Image
    import os

    # 文件夹路径
    directories = ['/data/results/user_study/codeformer', '/data/results/user_study/ours','/data/results/user_study/daefr']

    all_files=[sorted(os.listdir(directorie)) for directorie in directories]

    # 拼接图片
    for i in range(len(all_files[0])):
        images = []
        for j in range(len(directories)):
            filepath = os.path.join(directories[j], all_files[j][i])
            images.append(Image.open(filepath))

        # 确保找到了相同名称的图片
        if len(images) == len(directories):
            # 获取拼接后图片的总宽度和最大高度
            total_width = sum(image.size[0] for image in images)
            max_height = max(image.size[1] for image in images)

            # 创建新的图片
            new_image = Image.new('RGB', (total_width, max_height))

            # 拼接图片
            x_offset = 0
            for image in images:
                new_image.paste(image, (x_offset, 0))
                x_offset += image.size[0]

            # 保存拼接后的图片
            new_image.save(f"/data/results/user_study/concat/{all_files[0][i]}")

def user_study():

    my_sheet = 'Sheet1'
    file_name = 'user_study.xlsx' # change it to the name of your excel file
    df = read_excel(file_name, sheet_name = my_sheet)
    print(df.head()) # shows headers with top 5 rows
    image_score=[[0]*60,[0]*60,[0]*60]
    pdb.set_trace()
    for i,row in df.iterrows():
        for j in range(1,36):
            if j % 4==1:
                image_score[int(row[j])-1][i]+=3
            elif j%4==2:
                image_score[int(row[j])-1][i]+=2
            elif j%4==3:
                image_score[int(row[j])-1][i]+=1
    array=np.array(image_score)
    array=array/9
    pd.DataFrame(array.T).to_csv('user_study_average.csv',index=False)
def user_study_count():
    avg_score=pd.read_csv('user_study_average.csv')
    pdb.set_trace()
    print(avg_score['0'].mean(),avg_score['1'].mean(),avg_score['2'].mean())
    print(((avg_score['0']>=avg_score['1']) &(avg_score['0']>=avg_score['2'])).sum())
    print(((avg_score['1']>=avg_score['0'] ) &( avg_score['1']>=avg_score['2'])).sum())
    print(((avg_score['2']>=avg_score['1'] ) &( avg_score['2']>=avg_score['0'])).sum())
    cmp2_1=(avg_score['1']>avg_score['0']).sum()
    cmp2_3=(avg_score['1']>avg_score['2']).sum()
    print(cmp2_1,cmp2_3)

def boxplot():
    import matplotlib.pyplot as plt
    import numpy as np
    df=pd.read_csv('user_study_average.csv')
    # 示例数据
    data =[df['1'],df['0'],df['2']]  # 生成100个服从标准正态分布的随机数
    plt.figure(figsize=(11.5, 10))
    # 画箱线图
    box=plt.boxplot(data,patch_artist=True)
    # 设置不同部分的颜色
    colors = ['lightblue', 'lightgreen','lightyellow']
    for patch, color in zip(box['boxes'], colors):
        patch.set_facecolor(color)

    # 设置须线颜色和其他属性
    for whisker in box['whiskers']:
        whisker.set(color ='black', linewidth=1.5, linestyle=":")

    # 设置异常值的属性，例如颜色和形状
    for flier in box['fliers']:
        flier.set(marker='o', color='red')
        
    # 设置中位数线的颜色和宽度
    for median in box['medians']:
        median.set(color='red', linewidth=2)
    # 添加标题和标签
    plt.xlabel("Models",fontsize=19,fontweight='bold')
    plt.ylabel("Score",fontsize=19,fontweight='bold')
    plt.xticks([1,2,3], ['QualityFormer', 'CodeFormer','DAEFR'],fontsize=21)
    plt.yticks(fontsize=21)
    plt.gca().get_xticklabels()[0].set_weight('bold')
    # 显示图形
    plt.tight_layout()
    #plt.subplots_adjust(left=0.1, right=0.99, top=0.99, bottom=0.06)
    plt.savefig('boxplot_userstudy.jpg')

def plot_score_distribution():
    path="/home/hp/work/CodeFormer_aesthetic/ffhq_ensemble.csv"
    df=pd.read_csv(path)
    scores1=np.asarray(df["topiq_nr_face"])
    scores2=np.asarray(df["musiq_gfiqa"])
    scores3=np.asarray(df["qalign"])
    scores4=np.asarray(df["score"])
    #scores=(scores-min(scores))/(max(scores)-min(scores)+0.00001)
    # Splitting the data into 50 bins and counting the number of elements in each bin
    counts1, bin_edges1 = np.histogram(scores1, bins=10)
    counts2, bin_edges2 = np.histogram(scores2, bins=10)
    counts3, bin_edges3 = np.histogram(scores3, bins=10)
    counts4, bin_edges4 = np.histogram(scores4, bins=10)

    # Plotting
    print(counts1)
    print(bin_edges1)
    plt.figure(figsize=(6, 4))
    plt.plot(bin_edges1[:-1], counts1, marker='o',label="Topiq-GFIQA") # Using bin_edges[1:] to align counts with their respective bins
    plt.plot(bin_edges2[:-1], counts2, marker='p',label="Musiq-GFIQA") # Using bin_edges[1:] to align counts with their respective bins
    plt.plot(bin_edges3[:-1], counts3, marker='s',label="Q-Align") # Using bin_edges[1:] to align counts with their respective bins
    plt.plot(bin_edges4[:-1], counts4, marker='*',label="Average score") # Using bin_edges[1:] to align counts with their respective bins


    # plt.bar(range(len(counts1)), counts1, label="Topiq-g") # Using bin_edges[1:] to align counts with their respective bins
    # plt.bar(range(len(counts1)), counts2, label="musiq-g") # Using bin_edges[1:] to align counts with their respective bins
    # plt.bar(range(len(counts1)), counts3, label="qalign") # Using bin_edges[1:] to align counts with their respective bins
    plt.subplots_adjust(left=0.10,right=0.99,top=0.99,bottom=0.12)
    # for i in range(len(counts1)):
    #     plt.text(bin_edges1[i],counts1[i],str(counts1[i]))
    #plt.title("Distribution of FFHQ in 10 Bins.")
    plt.yticks([5000,10000,15000,20000,25000,30000,35000,40000],["5k","10k","15k","20k","25k","30k","35k","40k"])
    plt.xlabel("Normalized score")
    plt.ylabel("Counts")
    plt.legend()
    # plt.grid(True)
    plt.savefig('/home/hp/work/CodeFormer_aesthetic/ffhq_ensemble.png')


def ensemble_score():
    p1="/home/hp/work/CodeFormer_aesthetic/basicsr/IQA/pyiqa/IQA-PyTorch/result/ntire/ffhq_musiq_koniq.csv"
    p2="/home/hp/work/CodeFormer_aesthetic/basicsr/IQA/pyiqa/IQA-PyTorch/result/ntire/ffhq_maniqa.csv"
    p3="/home/hp/work/CodeFormer_aesthetic/basicsr/IQA/pyiqa/IQA-PyTorch/result/ntire/ffhq_qalign.csv"
    data1,data2,data3=pd.read_csv(p1)["score"],pd.read_csv(p2)["score"],pd.read_csv(p3)["score"]
    #pdb.set_trace()
    max1,min1=max(data1),min(data1)
    max2,min2=max(data2),min(data2)
    max3,min3=max(data3),min(data3)
    data1=(data1-min1)/(max1-min1+1e-6)
    data2=(data2-min2)/(max2-min2+1e-6)
    data3=(data3-min3)/(max3-min3+1e-6)
    avg=(data1+data2+data3)/3
    df=pd.DataFrame()
    df["imagename"]=pd.read_csv(p1)["imagename"]
    df["musiq_koniq"]=data1
    df["maniqa"]=data2
    df["qalign"]=data3
    df["avg"]=avg
    df.to_csv("/home/hp/work/CodeFormer_aesthetic/basicsr/IQA/pyiqa/IQA-PyTorch/result/ntire/ffhq_ensemble_v2.csv",index=False)


def filter_ffhq():
    ffhq=pd.read_csv("/home/hp/work/CodeFormer_aesthetic/ffhq_ensemble.csv")
    pdb.set_trace()
    for i,row in ffhq.iterrows():
        if row["score"]>=0.85 and row["score"]<0.9:
            os.system(f'cp /data1/hp/FFHQ512/images512x512/{row["imagename"]} /data1/hp/FFHQ512/s9/{row["imagename"]}')
def plot_score_distribution_underwater():
    path="/home/hp/work/UnderwaterRanker/results/ranker_reference890_result_norm.csv"
    df=pd.read_csv(path)

    scores4=np.asarray(df["score"])
    #scores=(scores-min(scores))/(max(scores)-min(scores)+0.00001)
    # Splitting the data into 50 bins and counting the number of elements in each bin

    counts4, bin_edges4 = np.histogram(scores4, bins=10)

    # Plotting

    plt.figure(figsize=(6, 4))
    plt.plot(bin_edges4[:-1], counts4, marker='.',label="Underwater-ranker score") # Using bin_edges[1:] to align counts with their respective bins


    # plt.bar(range(len(counts1)), counts1, label="Topiq-g") # Using bin_edges[1:] to align counts with their respective bins
    # plt.bar(range(len(counts1)), counts2, label="musiq-g") # Using bin_edges[1:] to align counts with their respective bins
    # plt.bar(range(len(counts1)), counts3, label="qalign") # Using bin_edges[1:] to align counts with their respective bins
    plt.subplots_adjust(left=0.10,right=0.99,top=0.99,bottom=0.12)
    # for i in range(len(counts1)):
    #     plt.text(bin_edges1[i],counts1[i],str(counts1[i]))
    #plt.title("Distribution of FFHQ in 10 Bins.")
    # plt.yticks([5000,10000,15000,20000,25000,30000,35000,40000],["5k","10k","15k","20k","25k","30k","35k","40k"])
    plt.xlabel("Normalized score")
    plt.ylabel("Counts")
    plt.legend()
    # plt.grid(True)
    plt.savefig('/home/hp/work/UnderwaterRanker/results/uiebd_scroe.png')
#random_select_for_user_study()
#get_images()
#concat_image()
#user_study()
#user_study_count()
# boxplot()
#plot_score_distribution_underwater()
#filter_ffhq()
ensemble_score()