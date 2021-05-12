# 环境搭建仓库

这个仓库主要存放一些脚本用于在`ubuntu` 搭建环境，包括
* jdk
* android sdk
* docker
* llvm
* afl-fuzz docker

**这些脚本如果不能执行，尝试安装dos2unix转一下**
```shell
sudo apt-get install dos2unix
dos2unix *.sh
chmod u+x *.sh
```

## 用于快速构建一个`afl-fuzz` 的docker 

进入到`afl-docker` 目录下
快速构建一个`afl-fuzz`的环境，避免不同的系统安装库或者环境浪费时间。

环境参考[liveoverflow-afl-fuzz-tutorial](https://github.com/LiveOverflow/pwnedit)

**首先，安装docker**
```shell
./install_docker.sh
```

**使用afl-fuzz的docker**

```shell
# 创建docker
make build
# 启动docker
make run
# 进入docker系统
make root
```

进行一些fuzzer测试。

## 安装docker
要安装docker，执行以下命令
```shell
./install_docker.sh
```

## 安装jdk
默认安装`jdk1.8` 
```shell
./install_jdk.sh
```
## 安装android-sdk
安装sdk并设置adb
```shell
./install_android_sdk.sh
```
