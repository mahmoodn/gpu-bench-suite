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
sudo apt install python-pip python-dev
pip install -U --user six numpy wheel mock future
pip install -U --user keras_applications==1.0.5 --no-deps
pip install -U --user keras_preprocessing==1.0.3 --no-deps
```
For kerans, if you hit some errors:
```
sudo python -m pip uninstall pip && sudo apt install python-pip --reinstall
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
bazel build --jobs 4 --config=opt --config=cuda //tensorflow/tools/pip_package:build_pip_package
```
This process will take a few hours.
Install
```
./bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
pip install -U --user /tmp/tensorflow_pkg/tensorflow-version-tags.whl
```

There are some examples in the tensorflow/tensorflow/examples.Do not import tensorflow from its source directory; change directory to outside the TensorFlow source tree, and relaunch your Python interpreter from there.


Image label `bazel build tensorflow/examples/label_image/...` and 
