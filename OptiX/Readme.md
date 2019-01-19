
Download OptiX Ray Tracing Engine from https://developer.nvidia.com/optix.
```
sh ./NVIDIA-OptiX-SDK-5.1.1-linux64-25109142.sh
```
Download samples from https://github.com/nvpro-samples/optix_advanced_samples. Use INSTALL-LINUX.txt for requirements and build instructions.


DevIL:

For Ubuntu
```
sudo apt install freeglut3-dev
git clone https://github.com/DentonW/DevIL
cd DevIL/DevIL
mkdir build
cd build
cmake ..
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

Run `make` to build. Executables should be found in the bin directory.
