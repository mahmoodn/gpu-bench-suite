
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
Clone and build warp-ctc:

```
git clone https://github.com/baidu-research/warp-ctc.git
cd warp-ctc
mkdir build
cd build
cmake ../
make
```
Build on GPU with OpenCV and OpenBlas:
```
vim make/config.mk
    WARPCTC_PATH = /home/user1/mx/mxnet/warp-ctc
    MXNET_PLUGINS += plugin/warpctc/warpctc.mk
export LD_LIBRARY_PATH=/home/user1/mx/mxnet/warp-ctc/build:$LD_LIBRARY_PATH
make -j 4 USE_OPENCV=1 USE_BLAS=openblas USE_CUDA=1 USE_CUDA_PATH=/usr/local/cuda USE_CUDNN=1
export LD_LIBRARY_PATH=~/mxnet/lib:/usr/local/cuda-10.0/lib64
cd python/
pip install --user -e .

```

Examples:

```
cd example/cnn_text_classification/
pip install cython
pip install word2vec
python text_cnn.py --num-epochs=1 --gpus=0
cd ../..
```

and

```
cd example/speech_recognition/
pip install mxboard soundfile
mkdir checkpoints
mkdir log
wget https://raw.githubusercontent.com/mahmoodn/orca/master/MXNet/Libri_sample.zip
unzip Libri_sample.zip -d Libri_sample/
wget https://raw.githubusercontent.com/mahmoodn/orca/master/MXNet/Libri_sample.json
vim default.cfg
    num_epoch = 2
python main.py --configfile default.cfg
```

