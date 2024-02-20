import os
import shutil
import random
import pandas as pd
#import matplotlib.pyplot as plt

root = '/Disk/z30027263/AIGC-IQA/DATA/FFHQ_512/'
filename = 'repair_test_512_score.csv'

df = pd.read_csv(filename)
names = df['image_name'].values.tolist()
random.seed(0)
#random.shuffle(names)
#df['score'].hist()
#plt.show()
names_lst = [[],[],[],[],[],[],[],[],[],[]]
names_select = []
for name in names:
    score = df.query('image_name==@name')['score'].item()
    score = float(score)
    if score <= 0.1:
        names_lst[0].append(name)
    elif score <= 0.2:
        names_lst[1].append(name)
    elif score <= 0.3:
        names_lst[2].append(name)
    elif score <= 0.4:
        names_lst[3].append(name)
    elif score <= 0.5:
        names_lst[4].append(name)
    elif score <= 0.6:
        names_lst[5].append(name)
    elif score <= 0.7:
        names_lst[6].append(name)
    elif score <= 0.8:
        names_lst[7].append(name)
    elif score <= 0.9:
        names_lst[8].append(name)
    elif score <= 1:
        names_lst[9].append(name)

for lst in names_lst:
    print(len(lst))
    random.shuffle(lst)
    names_select+=lst[:10]
print(len(names_select))
df_select = df[df['image_name'].isin(names_select)]
df_select.to_csv('repair_test_512_select.csv')

exit()
lst = [0,0,0,0,0,0,0,0,0,0]

n=0
dct = []
for s in score:
    idx = int(s)
    if idx==s:
        idx-=1
    try:
        lst[idx]+=1
    except:
        dct.append(s)
#print(set(dct))
print(lst)












