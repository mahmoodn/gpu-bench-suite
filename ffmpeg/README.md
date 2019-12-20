Download prerequisites from source

yasm:
```
wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz
tar zxf yasm-1.3.0.tar.gz
cd yasm-1.3.0/
ls
./configure --prefix=`pwd`
make
make install
```

nv-codec-headers ffnvcodec (https://superuser.com/questions/1299064/)
```
git clone https://git.videolan.org/git/ffmpeg/nv-codec-headers.git
mkdir nv_codec_headers
cd nv-codec-headers/
vim Makefile
   prefix path/to/nv_codec_headers
make
make install
```

libnpp
```
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-npp-10-1_10.1.168-1_amd64.deb
dpkg -x cuda-npp-10-1_10.1.168-1_amd64.deb  .
cd usr/local/cuda-10.1/lib64/
cp libnpp* /path/to/cuda_toolkit/lib64/
```
Ensure that `npp.h` is in `/path/to/cuda_toolkit/include`


Now
```
sudo apt install yasm 
git clone https://git.ffmpeg.org/ffmpeg.git
PKG_CONFIG_PATH="/path/to/nv_codec_headers/lib/pkgconfig/"  ./configure --x86asmexe=/path/to/yasm-1.3.0/bin/yasm --enable-cuda --enable-cuvid --enable-nvenc --enable-nonfree --enable-libnpp --extra-cflags=-I/path/to/cuda_toolkit/include --extra-cflags=-I/path/to/nv_codec_headers/include/ffnvcodec/ --extra-ldflags=-L/path/to/cuda_toolkit/lib64/

make -j 10
```


Commands:
```
./ffmpeg -init_hw_device cuda=0 -filter_hw_device 0 -i ../fast_video.mp4 -vf  format=nv12,hwupload,scale_npp=1280:720 -c:v h264_nvenc 720p2.mp4
```
