
Download OptiX Ray Tracing Engine from https://developer.nvidia.com/optix.
```
sh ./NVIDIA-OptiX-SDK-5.1.1-linux64-25109142.sh
```
Download samples from https://github.com/nvpro-samples/optix_advanced_samples. Use INSTALL-LINUX.txt for requirements and build instructions.


DevIL:

For Ubuntu
```
sudo apt install freeglut3-dev cmake-curses-gui
git clone https://github.com/DentonW/DevIL
cd DevIL/DevIL
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=~/op/DevIL ..
make
sudo make install
```
Then

```
cd optix_advanced_samples
mkdir build
cd build
ccmake ../src/
```
press 'c'. Then you will see `Please set OptiX_INSTALL_DIR to locate it`. 

press 'e'.

goto `Please set OptiX_INSTALL_DIR to locate it` and locate `OptiX_INSTALL_DIR`.

press 'enter'

set `/home/mahmood/op/NVIDIA-OptiX-SDK-5.1.1-linux64`

press 'enter'

press 'c'

press 'g' to generate make file.

```
 ILUT_LIBRARIES                   /home/user1/op/DevIL/include/IL
 ILU_LIBRARIES                    /home/user1/op/DevIL/lib
 IL_INCLUDE_DIR                   /home/user1/op/DevIL/include
 IL_LIBRARIES                     /home/user1/op/DevIL/lib
 OptiX_INCLUDE                    /home/user1/op/NVIDIA-OptiX-SDK-5.1.1-linux64/include
 OptiX_INSTALL_DIR                /home/user1/op/NVIDIA-OptiX-SDK-5.1.1-linux64
 optix_LIBRARY                    /home/user1/op/NVIDIA-OptiX-SDK-5.1.1-linux64/lib64/liboptix.so
 optix_prime_LIBRARY              /home/user1/op/NVIDIA-OptiX-SDK-5.1.1-linux64/lib64/liboptix_prime.so
 optixu_LIBRARY                   /home/user1/op/NVIDIA-OptiX-SDK-5.1.1-linux64/lib64/liboptixu.so
```

Run `make` to build. Executables should be found in the bin directory.
