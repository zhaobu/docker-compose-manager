#!/bin/bash
# 修改源码镜像为清华
# 1.备份
mv /etc/apt/sources.list /etc/apt/sources.list.bak

# 2.写入
echo "# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse" \
>> /etc/apt/sources.list

# 3.生效
apt-get update

# Uninstall old versions
apt-get remove -y docker docker-engine docker.io containerd runc

# Install using the repository
# 1.Update the apt package index:
apt-get update

# 2.Install packages to allow apt to use a repository over HTTPS:
apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
# 3.Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 4.Use the following command to set up the stable repository
# 国外服务器
# add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# 国内服务器
add-apt-repository "deb [arch=amd64] https://mirrors.tuna.tsinghua.edu.cn/docker-ce/linux/ubuntu $(lsb_release -cs) stable"

# INSTALL DOCKER ENGINE - COMMUNITY

# 1.Update the apt package index.
apt-get update

# 2.Install the latest version of Docker Engine - Community and containerd, or go to the next step to install a specific version:
apt-get install -y docker-ce docker-ce-cli containerd.io

# install docker-compose
# 使用代理
curl -L -x 192.168.0.210:10809 https://github.com/docker/compose/releases/download/1.25.1-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
# 不使用代理
curl -L https://github.com/docker/compose/releases/download/1.25.1-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose