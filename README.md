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
