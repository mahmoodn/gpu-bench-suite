It needs cudnn.
```
mkdir build
cd build
cmake -DCMAKE_PREFIX_PATH=/home/mahmood/pytorch/torch/share/cmake/Torch/ ..
make
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/python3.6/dist-packages/torch/lib
./dcgan     # train the model
```

Train:
M2000
