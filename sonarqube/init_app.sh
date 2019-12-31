# 执行 docker run --rm library/sonarqube:latest id sonarqube 查看uid，gid
# 初始化sonarqube
rm -rf ./sonarqube/{conf,data,logs,extensions}
mkdir -p ./sonarqube/{conf,data,logs,extensions}
chown -R 999:999 ./sonarqube/{conf,data,logs,extensions}
