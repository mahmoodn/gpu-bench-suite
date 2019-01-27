
Install MXNet from source on Ubuntu (with Cuda 10.0).

Install cuDNN
```
tar xvzf cudnn-10.0-linux-x64-v7.4.2.24
sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
sudo ldconfig
```
Some apt dependencies

```
sudo apt install libopencv-dev libopenblas-dev
```

Clone MXNet porject:
```
git clone --recursive https://github.com/apache/incubator-mxnet mxnet
cd mxnet
```
Build on GPU with OpenCV and OpenBlas:
```
sudo make -j 4 USE_OPENCV=1 USE_BLAS=openblas USE_CUDA=1 USE_CUDA_PATH=/usr/local/cuda USE_CUDNN=1
export LD_LIBRARY_PATH=~/mxnet/lib:/usr/local/cuda-10.0/lib64
```
You can find different examples in the example folder. The instruction of how to run each example can be found in its README.md file.
