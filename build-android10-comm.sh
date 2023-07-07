#!/bin/bash

# kernel=/workspace/kernel4.9
# if [ -d $kenel ];then
#   sudo  rm -rf $kernel
# fi 
# mkdir $kenel

# cd $kenel

cd ..
sudo rm -rf android10-kernel
echo "creating dir "
mkdir android10-kernel
cd android10-kernel

sudo apt-get update && sudo  apt-get install python3 python dialog file libelf-dev gpg gpg-agent tree flex bison libssl-dev zip unzip 

git clone --depth=1 https://android.googlesource.com/kernel/common -b deprecated/android-4.9

export CROSS_COMPILE=arm-linux-androideabi-
export REAL_CROSS_COMPILE=arm-linux-androideabi-
export ARCH=arm

git clone --depth=1  https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9  -b android-10.0.0_r1

export PATH=$PATH:$(pwd)/arm-linux-androideabi-4.9/bin

cd common && make defconfig && make -j12 

tree -f . |grep Image 

echo Done.