#!/bin/bash

echo "installing java jdk1.8"
echo "--------------------------------------------"
echo "visit  https://packages.baidu.com/app find which version jdk to download and "

CACHE=~/java

rm $CACHE -rf

mkdir $CACHE

cd $CACHE
wget https://packages.baidu.com/app/jdk-8/jdk-8u201-linux-x64.tar.gz

tar xzvf jdk-8u201-linux-x64.tar.gz

sudo mv jdk1.8.0_201 /usr/local/

echo "setting jdk env  "

echo "export JAVA_HOME=/usr/local/java/jdk1.8.0_201 " >>~/.bashrc
echo "export JRE_HOME=${JAVA_HOME}/jre " >>~/.bashrc
echo "export CLASSPATH=.:${JAVA_HOME}/lib:${JRE_HOME}/lib" >>~/.bashrc
echo 'export PATH="${JAVA_HOME}/bin:$PATH " ' >>~/.bashrc

source ~/.bashrc

echo "setting done"

java -version
