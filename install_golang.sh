#!/bin/bash

echo "install golang16.4"

cd ~
# 官方的比较慢 wget https://golang.org/dl/go1.16.4.linux-amd64.tar.gz

wget https://dl.google.com/go/go1.16.4.linux-amd64.tar.gz
sudo tar -xzvf go1.16.4.linux-amd64.tar.gz -C /usr/local
echo 'export PATH="$PATH:/usr/local/go/bin"' >>~/.bashrc

#source ~/.bashrc

# 设置go配置，避免下载异常
echo 'export GO111MODULE="on"' >>~/.bashrc
echo 'export GOPROXY="https://goproxy.io/"' >>~/.bashrc
source ~/.bashrc

go env
