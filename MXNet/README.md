
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
cd python/
pip install --user -e .

```
You can find different examples in the example folder. The instruction of how to run each example can be found in its README.md file.



Example:

For a python absed example, install python language for mxnet
```
cd python
pip install -e .
```
then 
```
cd ../examples/reinforcement-learning/a3c
pip install opencv-python
pip install gym
pip install gym[atari]

```
run `python a3c.py --batch-size=32 --gpus=0` to run training on gpu 0 with batch-size=32.

run `python launcher.py --gpus=0,1 -n 2 python a3c.py` to launch training on 2 gpus (0 and 1), each gpu has two workers.
Note: You might have to update the path to dmlc-core in launcher.py.

For speech
