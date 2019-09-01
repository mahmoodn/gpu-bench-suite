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


Run

```
cd examples/super_resolution/
python main.py --upscale_factor 3 --batchSize 4 --testBatchSize 100 --nEpochs 1 --lr 0.001

cd examples/word_language_model/
python main.py --cuda --emsize 650 --nhid 650 --dropout 0.5 --epochs 40   
```


git clone https://github.com/pytorch/examples
