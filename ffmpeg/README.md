```
git clone https://git.ffmpeg.org/ffmpeg.git
./configure --enable-cuda --enable-cuvid --enable-nvenc --enable-nonfree --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64
make -j 10
```

To do 1:1 transcode a single video file:
```
export LD_LIBRARY_PATH=/usr/local/cuda/lib64
./ffmpeg -hwaccel cuvid -c:v h264_cuvid -i <input.mp4> -vf scale_npp=1280:720 -c:v h264_nvenc <output.mp4>
```
