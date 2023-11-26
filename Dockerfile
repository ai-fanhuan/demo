# 使用官方的Java运行时基础镜像
FROM openjdk:8-jdk-alpine

# 设置在容器内的工作目录
WORKDIR /app

# 将你的项目的jar文件复制到容器内
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# 设置容器启动时的命令
CMD ["java", "-jar", "/app/demo.jar"]