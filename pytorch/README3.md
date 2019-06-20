Install PyTorch from source on Ubuntu (with Cuda 10.0):

Download Anaconda from https://www.anaconda.com/download/ and install it.

Install basic dependencies:
```
export CMAKE_PREFIX_PATH="$(dirname $(which conda))/../" # [anaconda root directory]
conda install numpy pyyaml mkl mkl-include setuptools cmake cffi typing
conda install -c mingfeima mkldnn
```
Install pytorch using anaconda
```
conda install pytorch torchvision -c pytorch
```

To download pytorch examples:
```
git clone https://github.com/pytorch/examples
```
To download requirements for some examples you need to run the following command first:
```
pip3 install -r requirements.txt
```
The following commands are commands to run dcgan example on GPU. niter is the number of epochs to train for.
```
cd examples/dcgan
python3 main.py --dataset cifar10 --dataroot ../cifar --cuda --niter 1
```
To reduce the run time for the above example, you can use smaller dataset, by assigning "folder" to dataset and "PATH_OF_DATASET_FOLDER" to dataroot:
```
python3 main.py --dataset folder --dataroot PATH_OF_DATASET_FOLDER --cuda --niter 1
```
Running each example is different and has different arguements which is explained in its readme file. (For example to change the number of epochs, some examples use --epochs, some examples use --niter, etc. )

To run smaller examples with runtime less than 3 minutes, we can use the Intermediate examples in the following repository:
```
git clone https://github.com/yunjey/pytorch-tutorial.git
cd pytorch-tutorial/tutorials/PATH_TO_PROJECT
python main.py
```
In the above examples you can change the number of epochs in the python folder of each example, to increase or decrease the runtime.
