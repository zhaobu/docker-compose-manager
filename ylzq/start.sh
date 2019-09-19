#!/bin/bash
# switch mirrors.aliyun
mv /etc/apt/sources.list /etc/apt/sources.list.bak &&
sed -i 's/cn.archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&
apt-get update && 
/bin/sh -c sh /root/mservice.sh 81256 && sleep 10 && tail -f /opt/yilu/work/xig/debug_cpu.log