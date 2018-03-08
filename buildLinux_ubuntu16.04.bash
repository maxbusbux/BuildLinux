toilet -F gay  "BuildLinux"
wait
sleep 3
echo "installing git"
sleep 3
sudo apt install git
wait
sleep 1
echo dowloading linux-kernel
sleep 5
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.15.7.tar.xz
wait 
echo unpacking archive
sleep 1
tar xf linux-4.15.7.tar.xz
sleep 2
echo installing requirements
sleep 4
sudo apt-get installl build-dep linux
wait
sudo apt install kernel-package
wait
sudo apt install fakeroot
wait
sudo apt install libncursesw5-dev
wait
sudo apt install libssl-dev
wait
sleep 1
echo going into kernel directory
sleep 1
cd linux-4.15.7
sleep 1
echo making menuconfig
sleep 2
sudo make menuconfig 
wait
sleep 2
sudo fakeroot make-kpkg -j 5 --initrd --append-to-version=-custom kernel_image kernel_headers #-j
