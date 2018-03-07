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
git clone git://kernel.ubuntu.com/ubuntu/ubuntu-xenial.git
wait 
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
cd ubuntu-xenial
sleep 1
sudo make menuconfig 
wait
sleep 2
sudo fakeroot make-kpkg -j 5 --initrd --append-to-version=-custom kernel_image kernel_headers #-j
