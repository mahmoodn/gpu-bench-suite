
```
wget ftp://ftp.gromacs.org/pub/gromacs/gromacs-2018.2.tar.gz
tar zxf gromacs-2018.2.tar.gz
cd gromacs-2018.2
mkdir build
cd build
```

Input ile is `nvt.gro` which is provided locally

If you have multiple GPUs, you can built gmx with mpi. Therefore, you have multiple gmx_mpi process on GPU

```
cmake .. -DGMX_MPI=on -DGMX_GPU=on -DCMAKE_INSTALL_PREFIX=/opt/gromacs-2018.2/single -DGMX_BUILD_OWN_FFTW=ON
gmx_mpi mdrun -nb gpu -ntmpi 16 -ntomp 1 -v -deffnm nvt
```

If you have one GPU, use thread-mpi comes with gromcas. Therefore, you have one gmx process on GPU


```
cmake .. -DGMX_GPU=on -DCMAKE_INSTALL_PREFIX=/opt/gromacs-2018.2/single -DGMX_BUILD_OWN_FFTW=ON
gmx mdrun -nb gpu -ntmpi 16 -ntomp 1 -v -deffnm nvt

```

`ntmpi` is cpu threads. With `-ntmpi 16`, cpu utilization will be `1600%` according to `top`. 

`ntomp` means  OpenMP threads for each `ntmpi`.
