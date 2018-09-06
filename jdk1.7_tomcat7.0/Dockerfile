# 版本信息
FROM centos:latest
MAINTAINER gravel "leebroncc@163.com"

ENV LANG en_US.UTF-8
# OS环境配置
RUN yum install -y wget

# 安装JDK
RUN mkdir -p /var/tmp/jdk/
ADD jdk-7u80-linux-x64.tar.gz /var/tmp/jdk
RUN rm -rf /var/tmp/jdk/jdk-7u80-linux-x64.tar.gz

# 安装tomcat
RUN mkdir -p /var/tmp/tomcat
ADD apache-tomcat-7.0.90.tar.gz /var/tmp/tomcat/
RUN  rm -rf /var/tmp/tomcat/apache-tomcat-7.0.90.tar.gz

#设置环境变量
ENV JAVA_HOME /var/tmp/jdk/jdk1.7.0_80
ENV CATALINA_HOME /var/tmp/tomcat/apache-tomcat-7.0.90
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin
ARG JAVA_OPT="-DappconfigServerUrl=http://172.25.16.40:8086/appconfig-server"
ENV JAVA_OPTS=${JAVA_OPT}

#开启内部服务端口
EXPOSE 8080
#启动tomcat服务器
CMD ["./var/tmp/tomcat/apache-tomcat-7.0.90/bin/catalina.sh","run"] && tail -f /var/tmp/tomcat/apache-tomcat-7.0.90/logs/catalina.out 