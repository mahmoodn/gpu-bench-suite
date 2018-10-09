Prerequites

```
sudo apt-get install libjpeg-dev libpng-dev libfftw3-dev
vim ~/.bashrc
   export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-9.0/lib64

```

Commands for building lammps

```
wget http://lammps.sandia.gov/tars/lammps-stable.tar.gz
tar zxf lammps-stable.tar.gz 
cd lammps-11Aug17/lib/gpu
vim Makefile.linux
   CUDA_ARCH = -arch=sm_50
make -f Makefile.linux
cd ../../src
make yes-gpu
make yes-molecule
make yes-kspace
make yes-rigid
make ubuntu -j8
```

Run `lj` and `rhodo` inputs. You may set `run` value to lower values to reduce the time.
```
mpirun -np 4 /opt/lammps-22Aug18/src/lmp_ubuntu -sf gpu -in in.lj
mpirun -np 4 /opt/lammps-22Aug18/src/lmp_ubuntu -sf gpu -in in.rhodo
```
