Prerequisities
```
pip install --user matplotlib
git clone https://github.com/pytorch/vision.git
cd vision
python setup.py install --user
```

Run
```
mkdir spatial_transformer
cd spatial_transformer
mkdir MNIST
cd MNIST
# Download train-images-idx3-ubyte.gz train-labels-idx1-ubyte.gz t10k-images-idx3-ubyte.gz t10k-labels-idx1-ubyte.gz and extract them
cd ..
python main.py
```
