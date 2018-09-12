
wget ftp://ftp.gromacs.org/pub/gromacs/gromacs-2018.2.tar.gz
tar zxf gromacs-2018.2.tar.gz
cd gromacs-2018.2
mkdir build
cd build

# use nvt.gro as the input file
# for gmx_mpi (multi process on gpu)
cmake .. -DGMX_MPI=on -DGMX_GPU=on -DCMAKE_INSTALL_PREFIX=/opt/gromacs-2018.2/single -DGMX_BUILD_OWN_FFTW=ON
gmx_mpi mdrun -nb gpu -ntmpi 16 -ntomp 1 -v -deffnm nvt

# for thread-mpi (single process on gpu)
cmake .. -DGMX_GPU=on -DCMAKE_INSTALL_PREFIX=/opt/gromacs-2018.2/single -DGMX_BUILD_OWN_FFTW=ON
gmx mdrun -nb gpu -ntmpi 16 -ntomp 1 -v -deffnm nvt

