#!/bin/bash

echo "Build Piexl3 android os: 10 kernel version:4.19.xx "

sudo apt-get update

cd ..
# mkdir ~/.bin
# curl http://gerrit.googlesource.com/git-repo/repo > ~/.bin/repo
# chmod a+x ~/.bin/repo
# PATH=~/.bin/repo

# download kernel
sudo rm -rf android10-kernel
echo "creating dir "
mkdir android10-kernel
cd android10-kernel

sudo apt install repo bc   cpio kmod  git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 libncurses5 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig -y
# doownload kernel code 
echo "sync kernel code "

#repo  init --depth 1 -u https://aosp.tuna.tsinghua.edu.cn/kernel/manifest -b android-msm-crosshatch-4.9-android12
# android 12 kernel
# repo  init --depth 1 -u https://android.googlesource.com/kernel/manifest -b android-msm-crosshatch-4.9-android12
# android 10 kernel 
repo  init --depth 1 -u https://android.googlesource.com/kernel/manifest -b common/deprecated/android-4.9 #android-msm-crosshatch-4.9-android10-qpr1 #android-msm-crosshatch-4.9-android10
repo  sync -qcj20

# 编译 注意这里的build/build.config 被修改了
# BUILD_CONFIG=build/build.config SKIP_DECONFIG=0 SKIP_MRPROPER=0 ARCH=arm64 ./build/build.sh -j20
