#!/bin/bash

echo "Build Piexl3 android os: 10 kernel version:4.19.xx "

apt-get update

cd ..
# mkdir ~/.bin
# curl http://gerrit.googlesource.com/git-repo/repo > ~/.bin/repo
# chmod a+x ~/.bin/repo
# PATH=~/.bin/repo

# download kernel
mkdir android10-kernel
cd android10-kernel

sudo apt install repo bc   git-core gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 libncurses5 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils xsltproc unzip fontconfig -y
# doownload kernel code 
echo "sync kernel code "

repo  init --depth 1 -u https://aosp.tuna.tsinghua.edu.cn/kernel/manifest -b android-msm-crosshatch-4.9-android12

repo  sync -qcj20


