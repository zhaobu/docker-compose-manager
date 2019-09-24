#!/bin/bash
# switch mirrors.aliyun
# mv /etc/apt/sources.list /etc/apt/sources.list.bak &&
# sed -i 's/cn.archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&
# apt-get update && 
# /bin/sh -c sh /root/mservice.sh 81256 && sleep 10 && tail -f /opt/yilu/work/xig/debug_cpu.log
#下载镜像
wget http://www.yiluzhuanqian.com/soft/docker_images/ylzq_v19.3.1.tar

#导入镜像
docker load  --input ylzq_v19.3.1.tar