Install PyTorch from source with pip and cudnn.


```
pip install -U --user numpy pyyaml typing
```

2) Install cudnn

```
tar -xzvf cudnn-9.0-linux-x64-v7.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
```

3) Install PyTorch

```
git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
sudo python setup.py install
```

git clone https://github.com/pytorch/examples
