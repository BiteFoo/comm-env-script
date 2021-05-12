#!/bin/bash

echo "install android sdk and set adb"
sudo apt install unzip
cd ~
rm android-sdk -rf
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
# unpack archive
unzip sdk-tools-linux-4333796.zip

rm sdk-tools-linux-4333796.zip

mkdir android-sdk
mv tools android-sdk/tools

# Export the Android SDK path
echo "export ANDROID_HOME=$HOME/android-sdk" >>~/.bashrc
echo 'export PATH="$PATH:$ANDROID_HOME/tools/bin "' >>~/.bashrc
echo 'export PATH="$PATH:$ANDROID_HOME/platform-tools"' >>~/.bashrc
source ~/.bashrc
sdkmanager --list
sdkmanager "platform-tools" "platforms;android-28"

echo "checking adb "
adb devices
