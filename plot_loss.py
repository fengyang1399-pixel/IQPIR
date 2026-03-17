# -*- coding: utf-8 -*-
"""
Created on Thu Mar  7 14:14:24 2024

@author: f00830858
"""

import sys
infile = "/home/ma-user/work/CodeFormer_aesthetic/logs/1/train_20240116_204728_VQGAN-512-ds32-nearest-stage1.log"
outfile = "/home/ma-user/work/CodeFormer_aesthetic/logs/1/l_g_pix.jpg"
def moving_avg(vlist, d = 10):
    n = len(vlist)
    return [sum(vlist[i:i+d])/d for i in range(n-d+1)]
losses = {}
step = 0
loss_name = 'l_g_pix'
with open(infile, 'r', encoding='utf-8') as fh:
    for line in fh.read().split('\n'):
        if loss_name in line:
            # item = line.split('step')
            loss = line.split(loss_name)[1][1:].strip().split('l')[0]
            try:
                losses[step] = float(loss)
            except:
                continue
            step += 1
        """
        if 'train_loss' in line and 'global_step' in line:
            item = line.split()
            try:
                k,v = int(item[3]), float(item[1])
                losses[k] = losses.get(k,[])+[v]
                max_len = k
            except:
                pass
         """

result = [(i, losses[i]) for i in range(0,step,1) if i in losses]
print(step)
import matplotlib.pyplot as plt
#plt.plot(moving_avg([x[0] for x in result]), moving_avg([x[1] for x in result]), color='r', label='total_loss')
plt.plot(moving_avg([x[0] for x in result]), moving_avg([x[1] for x in result]), color='b', label=loss_name)
plt.xlabel('step')
plt.ylabel('loss')
plt.legend()
# plt.show()
plt.savefig(outfile, dpi=500)
