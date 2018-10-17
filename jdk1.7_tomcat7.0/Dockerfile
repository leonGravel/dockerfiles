# 版本信息
FROM leebroncc/myjdk1.7
MAINTAINER gravel "leebroncc@163.com"


# add tomcat
RUN mkdir -p /opt
COPY tomcat /opt/tomcat

#设置环境变量
ENV TOMCAT_HOME /opt/tomcat
ENV PATH ${PATH}:${TOMCAT_HOME}/bin

#开启内部服务端口
EXPOSE 8080

ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run"]