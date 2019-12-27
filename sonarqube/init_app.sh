# 执行 docker run --rm library/sonarqube:latest id sonarqube 查看uid，gid
# 初始化sonarqube
rm -rf ./sonarqube/{conf,data,logs,extensions}
mkdir -p ./sonarqube/{conf,data,logs,extensions}
chown -R 999:999 ./sonarqube/{conf,data,logs,extensions}

# 初始化postgres
rm -rf ./sonarqube_postgres
mkdir -p ./sonarqube_postgres
chown -R 70:70 ./sonarqube_postgres
