Installing CUDA 10 on Ubuntu 18.04

```
sudo apt update
sudo apt upgrade
sudo apt install build-essential
sudo bash -c "echo blacklist nouveau > /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo bash -c "echo options nouveau modeset=0 >> /etc/modprobe.d/blacklist-nvidia-nouveau.conf"
sudo update-initramfs -u
reboot
sudo ./cuda_10.0.130_410.48_linux.run
  accept y n y y default y y default
reboot
```
  


1) Molecular simulation

   1.1) gromacs

   1.2) lammps

   1.3) namd

2) Crypto minning

   2.1) xmrig

   2.2) ethminer

3) Graph analysis

   3.1) gunrock

4) AI

   4.1) Tensorflow
   
   4.2) PyTorch
   
   4.3) MXNet

5) Multimedia

   5.1) FFMPEG
   
6) Volume renderer

   6.1) OptiX 
