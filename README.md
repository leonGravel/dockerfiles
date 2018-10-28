# DockerHub
### jdk1.7_tomcat7.0

基于base-alpine的oraclejdk和tomcat镜像

### docker-for-hexo

一个hexo的镜像

### base-alpine
基于alpine3.6构建，支持中文字符集，以及中国时区支持


### redis
根据官方redis镜像调整，主要将镜像时区修改为国内时区

### maven
根据官方maven镜像调整，主要将镜像时区修改为国内时区

### docsify
根据md文档生成网页：

```
docker build -t mydocs .
```

```
docker run -d -p 3000:3000 -v $(pwd):/usr/local/docsify mydocs
```

### mvn-in-docker

在mvn镜像里面安装docker,主要用于gitlab ci构建，可以在maven打包的同时，构建镜像。

### alpine-oraclejdk7
基于base-alpine构建的oraclejdk7镜像
### alpine-oraclejdk8
基于base-alpine构建的oraclejdk8镜像
