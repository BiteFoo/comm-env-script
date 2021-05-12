FROM ubuntu:20.04
ENV LC_CTYPE C.UTF-8
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -yq gcc make wget curl git vim gdb clang llvm python3 python3-pip bsdmainutils
# for afl-plus-plus
# RUN apt-get  install -yq && git build-essential   \
#             libssl-dev sudo libtool libtool-bin libglib2.0-dev \
#             bison flex automake python3 python3-dev python3-setuptools \
#             libpixman-1-dev gcc-9-plugin-dev cgroup-tools \
#             clang-11 clang-tools-11 libc++1-11 libc++-11-dev \
#             libc++abi1-11 libc++abi-11-dev libclang1-11 libclang-11-dev \
#             libclang-common-11-dev libclang-cpp11 libclang-cpp11-dev \
#             liblld-11 liblld-11-dev liblldb-11 liblldb-11-dev libllvm11 \
#             libomp-11-dev libomp5-11 lld-11 lldb-11 python3-lldb-11 llvm-11 \
#             llvm-11-dev llvm-11-runtime llvm-11-tools

RUN cd /root/ && git clone https://github.com/google/AFL && cd AFL && make && cd llvm_mode && make && cd .. && make install
# 安装gdb 插件
RUN /bin/bash -c "$(curl -fsSL http://gef.blah.cat/sh)"
# 设置afl-fuzz的环境
RUN echo core >/proc/sys/kernel/core_pattern
RUN useradd -ms /bin/bash user
RUN echo 'export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;31m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]# "' >>/root/.bashrc
RUN echo 'export PS1="\[\e]0;\u@\h: \w\a\]\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]$ "' >>/home/user/.bashrc
USER user
WORKDIR /home/user
