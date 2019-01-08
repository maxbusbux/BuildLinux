toilet -F gay  "BuildLinux"
wait
sleep 3
wait
sleep 1
echo dowloading linux-kernel
sleep 5
wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.19.10.tar.xz
wait 
echo unpacking archive
sleep 1
tar xvfJ  linux-4.19.0.tar.xz
sleep 2
echo installing requirements
sleep 4
sudo apt-get installl build-dep-linux  kernel-package fakerootsudo  libncursesw5-dev libssl-dev
wait
sleep 1
echo going into kernel directory
sleep 1
cd linux-4.19.0
sleep 1
echo making menuconfig
sleep 2
sudo make menuconfig 
wait
sleep 2
sudo fakeroot make-kpkg -j 5 --initrd --append-to-version=-custom kernel_image kernel_headers #-j
wait
sleep 2
