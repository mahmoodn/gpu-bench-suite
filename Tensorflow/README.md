Install Tensorflow GPU from source on Ubuntu (with Cuda 10.0)

Download Cudnn from https://developer.nvidia.com/cudnn and perform following commands.
```
tar -xf cudnn-10.0-linux-x64-v7.3.1.20.tgz
sudo cp -R cuda/include/* /usr/local/cuda-10.0/include
sudo cp -R cuda/lib64/* /usr/local/cuda-10.0/lib64
```
Download NCCl from https://developer.nvidia.com/nccl/nccl-download and perform following commands.
```
tar -xf nccl_2.3.5-2+cuda10.0_x86_64.txz
cd nccl_2.3.5-2+cuda10.0_x86_64
sudo cp -R * /usr/local/cuda-10.0/targets/x86_64-linux/
sudo ldconfig
```
Install dependencies by using following commands.
```
pip install -U --user pip six numpy wheel mock
pip3 install -U --user pip six numpy wheel mock
pip install -U --user keras_applications==1.0.5 --no-deps
pip3 install -U --user keras_applications==1.0.5 --no-deps
pip install -U --user keras_preprocessing==1.0.3 --no-deps
pip3 install -U --user keras_preprocessing==1.0.3 --no-deps
```
Donwload bazel
```
wget https://github.com/bazelbuild/bazel/releases/download/0.17.2/bazel-0.17.2-installer-linux-x86_64.sh
chmod +x bazel-0.17.2-installer-linux-x86_64.sh
./bazel-0.17.2-installer-linux-x86_64.sh --user
echo 'export PATH="$PATH:$HOME/bin"' >> ~/.bashrc
```
Load environmental variables
```
source ~/.bashrc
sudo ldconfig
```
Download and configure Tensorflow
```
git clone https://github.com/tensorflow/tensorflow.git
cd tensorflow
./configure
```
Build Tensorflow with bazel
```
bazel build --config=opt --config=cuda
```
There are some examples in the tensorflow/tensorflow/examples. To download more up-to-date examples, you can download them from https://github.com/tensorflow/tensorflow/tree/master/tensorflow/examples/tutorials/mnist.
