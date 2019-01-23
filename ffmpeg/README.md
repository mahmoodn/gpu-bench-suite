For ffnvcodec (https://superuser.com/questions/1299064/), first do
```
git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
cd nv-codec-headers
make
sudo make install
```
Now
```
sudo apt install yasm 
git clone https://git.ffmpeg.org/ffmpeg.git
./configure --enable-cuda --enable-cuvid --enable-nvenc --enable-nonfree --enable-libnpp --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64
make -j 10
```
To convert mpeg video to mp4 video:
```
ffmpeg -i input -crf 23 -preset medium -movflags +faststart -c:a aac output.mp4
```

To do 1:1 transcode a single video file and change the scale of the video:
```
export LD_LIBRARY_PATH=/usr/local/cuda/lib64
ffmpeg -hwaccel cuvid -c:v h264_cuvid -i <input.mp4> -vf scale_npp=1280:720 -c:v h264_nvenc <output.mp4>
```
