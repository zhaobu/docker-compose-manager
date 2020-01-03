# 启动流程

1. 初次启动时,由于app需要初始化,所以可能不能立马访问8085端口,最高是重新启动一次

2. 可能官方的镜像更新,不能适合所有的版本,具体的请访问<https://github.com/nextcloud/docker/tree/master/.examples/docker-compose>查看

3. nginx/nginx.conf文件是从官方的nginx拷贝而来,不能使用nginx默认的nginx.conf

4. 如果不配置https,初次访问会提示不安全的访问,需要修改nextcloud/nextcloud/config/config.php文件,找到trusted_domains,比如我访问时的url为<http://192.168.0.90:8085>,就添加如下代码

   ```php
    'trusted_domains' =>
    array (
        0 => 'localhost',
        1 => '192.168.0.90',
    ),
   ```
