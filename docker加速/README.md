# docker安装

+ centos使用centos7_docker_Install.sh安装
+ ubuntu使用ubuntu_docker_Install.sh安装
+ 也可以访问[Docker极速下载](http://get.daocloud.io/)访问安装方式

**国内docker加速**

此处省略，假设梯子启动后监听本地的1080端口

即 socks5://127.0.0.1:1080

#### 配置docker使用代理

新版docker服务都是使用systemd来管理的，此方法适用于`ubuntu 16.04+` / `centos7+`

```shell
# mkdir /etc/systemd/system/docker.service.d
# vim /etc/systemd/system/docker.service.d/http-proxy.conf
```

填入以下内容

```conf
[Service]
Environment="HTTP_PROXY=socks5://127.0.0.1:1080/" "HTTPS_PROXY=socks5://127.0.0.1:1080/"
```

保存并退出后，执行以下命令重新加载配置并重启docker服务

```shell
# systemctl daemon-reload && systemctl restart docker
```

运行docker info可能看到有HTTP\_PROXY和HTTPS\_PROXY字样即为成功

最好再`docker pull 镜像名` 验证下代理网络是否正常

#### 配置镜像仓库加速拉取（可选）

修改dockerd的配置文件（没有就新建一个）

```shell
# vim /etc/docker/daemon.json
```

加上registry-mirrors，例如：（以下使用中科大的docker hub）

```json
{
  "registry-mirrors": \["https://docker.mirrors.ustc.edu.cn/"\]
}
```

保存并退出后，重启docker服务

```json
# systemctl restart docker
```
