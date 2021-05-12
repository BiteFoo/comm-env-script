#!/bin/bash

echo "install docker..."

sudo apt-get install -y apt-transport-https curl
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
sudo apt-get install docker.io -y
# 启动
systemctl enable docker
systemctl start docker
# 查看状态
systemctl status docker
#  增加docker
udo groupadd docker
# 提那家用户组
sudo gpasswd -a ${USER} docker
# 重启docker 服务
sudo service docker restart
#
