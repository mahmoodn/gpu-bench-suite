Commands:
```
git clone --recursive https://github.com/clara-genomics/racon-gpu.git
cd racon-gpu
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -Dracon_enable_cuda=ON ..
```
Put racon_test.cpp in `test/`
```
make
./bin/racon_test
```

