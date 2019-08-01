Commands

```
git clone https://github.com/catboost/catboost.git
vim ./catboost/cuda/cuda_lib/default_nvcc_flags.make.inc
cd catboost/python-package/catboost
../../../ya make -r -DUSE_ARCADIA_PYTHON=no -DUSE_SYSTEM_PYTHON=2.7 -DCUDA_ROOT=/usr/local/cuda
cd ..
python mk_wheel.py -DCUDA_ROOT=/usr/local/cuda
pip install -U --user catboost-0.16.1-cp27-none-manylinux1_x86_64.whl
```
