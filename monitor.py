try:
    import moxing as mox
except:
    mox = None
import time
import os
from threading import Thread

file_mtime = dict()

def update_files(base_dir, remote_dir):
    global file_mtime
    file_list = set()
    for root, dirs, files in os.walk(base_dir):
        for _fn in files:
            fn = os.path.join(root, _fn)
            mt = os.stat(fn).st_mtime
            if file_mtime.get(fn) == mt:
                continue
            file_mtime[fn] = mt
            file_list.add(fn)
    if mox and file_list:
        print('[Monitor.py] Copy files')
        for fn in file_list:
            rfn = fn.replace(base_dir, remote_dir)
            try:
                mox.file.copy(fn, rfn)
                print('[Monitor.py]', fn, '=>', rfn)
            except:
                print(f'[Monitor.py] copy file {fn} failed')

stop_thread = False

def watch_thread_func(base_dir, remote_dir, period):
    global stop_thread
    while True:
        update_files(base_dir, remote_dir)
        if stop_thread:
            break
        print(f'[Monitor.py] wait {period} seconds.')
        os.system('df -h')
        os.system('free -h')
        time.sleep(period)

def launch(base_dir, remote_dir, period=1000):
    global watch_thread
    if mox is None and remote_dir is not None:
        raise Exception('[Monitor.py] monitor cannot work without moxing')
    print('[Monitor.py] launch', base_dir, remote_dir, period)
    os.system('df -h')
    os.system('free -h')
    watch_thread = Thread(target=watch_thread_func, args=(base_dir, remote_dir, period))
    watch_thread.start()

def stop():
    print('[Monitor.py] Stop.')
    os.system('df -h')
    global stop_thread
    stop_thread = True
    watch_thread.join()

if __name__ == "__main__":
    path = "/tmp"
    target = None
    launch(path, target, 5)
    time.sleep(11)
    stop()
