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
For nv-code-headers in non default location, use
```
PKG_CONFIG_PATH="/path/to/lib/pkgconfig" ./configure --enable-cuda --enable-cuvid --enable-nvenc --enable-nonfree --extra-cflags=-I/usr/local/cuda/include --extra-ldflags=-L/usr/local/cuda/lib64
```

Commands:
```
./ffmpeg -init_hw_device cuda=0 -filter_hw_device 0 -i ../fast_video.mp4 -vf  format=nv12,hwupload,scale_npp=1280:720 -c:v h264_nvenc 720p2.mp4
```
