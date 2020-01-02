详细安装步骤请访问dockhub官网了解[SonarQube](https://hub.docker.com/_/sonarqube)

1. postgress 的数据库,用户名,密码,不能使用sonar_root类似的带下划线的名称,不然初始化会有问题
2. sonarqube容器的sonar.jdbc.username, sonar.jdbc.password, sonar.jdbc.url环境变量,不支持从.env中读取变量值
3. 在启动docker-compose前,先执行init_app.sh,创建必要的文件夹并且修改文件夹所属用户和组,不然sonarqube会因为权限问题不能写入文件夹
