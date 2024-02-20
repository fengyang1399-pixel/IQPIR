import os
import argparse
import moxing as mox
from pathlib import Path
import monitor
import pdb
# # step0: install torch, show versions of {python, torch, cuda}
# os.system('pip install -U torch==1.12.0 torchvision==0.13.0')
# #pdb.set_trace()
print('[Main.py] python version:')
os.system('which python')
os.system('python --version')
print('[Main.py] torch version:')
os.system('pip list | grep torch')
print('[Main.py] nvcc version:')
os.system('nvcc --version')

# parse args
parser = argparse.ArgumentParser('main')
parser.add_argument('--init_method', type=str, default='')
parser.add_argument('--num_gpus', type=int, default=8)
parser.add_argument('--num_nodes', type=int, default=1)
parser.add_argument('--exp_name', type=str, )
parser.add_argument('--region', type=str, default='cn-south')
parser.add_argument('--data_name', type=str, default='val')
parser.add_argument('--config', type=str, default='')
args, unkown_args = parser.parse_known_args()
print('[Main.py] args: ', args)

if args.region == 'cn-south':
    CODE_PATH = 's3://bucket-1658/hupeng/code/CodeFormer_aesthetic/'
    EXP_PATH = 's3://bucket-1658/hupeng/exp/'
    DATA_PATH = 's3://bucket-1658/hupeng/data/'
    cache_path='s3://bucket-1658/hupeng/.cache/'
elif args.region == 'cn-east':
    CODE_PATH = 's3://mit-lab-shanghai/hupeng/code/CodeFormer_noedit/'
    EXP_PATH = 's3://mit-lab-shanghai/hupeng/exp/'
    DATA_PATH = 's3://mit-lab-shanghai/hupeng/data/'
    cache_path='s3://mit-lab-shanghai/hupeng/.cache/'
elif args.region == 'beijing4':
    CODE_PATH ='s3://bucket-288/hupeng/code/codeformer_reward/'
    EXP_PATH = 's3://bucket-288/hupeng/exp/'
    DATA_PATH = 's3://bucket-288/hupeng/data/'
else:
    print(f'Region {args.region} not supported.')

BASE_DIR = Path(__file__).resolve().parent
os.chdir(BASE_DIR)
print('[Main.py] cwd =', os.getcwd())
print('[Main.py] ls: ', os.listdir())

local_cache_path='/home/ma-user/.cache/'
mox.file.copy_parallel(cache_path, local_cache_path) 

#downloading code
print('[Main.py] downloading remote code')
s3_code_folder = f'{CODE_PATH}'
local_code_dir = f'{BASE_DIR}'
print(f'Downloading from {CODE_PATH} to {BASE_DIR}')
mox.file.copy_parallel(s3_code_folder, local_code_dir)

# install mmedit requirements
os.system('pip install -r requirements.txt')

print('[Main.py] preparasion Done.')
print('[Main.py] env:\n', os.environ)

if args.num_gpus > 1:
    os.environ['NNODES'] = str(args.num_nodes)
    os.environ['PORT'] = args.init_method.split(':')[-1]
    print('[Main.py] env for multi-gpu train:\n', os.environ)

# downloading data
print('[Main.py] downloading remote data')
local_data_dir = os.path.join(BASE_DIR, 'local_dataset')
os.makedirs(local_data_dir, exist_ok=True)
for data_name in args.data_name.split(','):
    print('Downloading ', data_name)
    s3_data_folder = f'{DATA_PATH}/{data_name}'
    local_path = f'local_dataset/{data_name}'
    print("Downloading data from ",s3_data_folder,"to",local_path)
    mox.file.copy_parallel(s3_data_folder, local_path)

   

    
# create work dirs(train results)
work_dir = os.path.join(BASE_DIR, 'experiments')
remote_dir = f'{EXP_PATH}/{args.exp_name}'
os.makedirs(work_dir, exist_ok=True)

# launch watchdog
monitor.launch(work_dir, remote_dir)
os.system('df -h')

# step3: launch program
cmd = 'python -m torch.distributed.run --nproc_per_node={} --nnodes={} basicsr/train.py -opt {} --launcher {}'.format(args.num_gpus,args.num_nodes,args.config,'pytorch')
print('[Main.py]', cmd)
os.system("python basicsr/setup.py develop")
#os.system("pip install -e basicsr/IQA/CLIP-IQA-2-3.8")
os.system(cmd)
os.system('df -h')
monitor.stop()