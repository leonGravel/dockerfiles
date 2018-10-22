FROM leebroncc/base-alpine

MAINTAINER gravel "leebroncc@gmail.com"

ENV JAVA_VERSION=7 \
    JAVA_UPDATE=80 \
    JAVA_HOME="/usr/lib/jvm/default-jvm"

##需要自己下载jdk,因为jdk1.7官网已经不支持直接下载了
COPY jdk-7u80-linux-x64.tar.gz /tmp/

RUN cd /tmp && \
    tar xzf "jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" && \
    mkdir -p /usr/lib/jvm && \
    mv "/tmp/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}" "/usr/lib/jvm/java-${JAVA_VERSION}-oracle" && \
    ln -s "java-${JAVA_VERSION}-oracle" $JAVA_HOME && \
    ln -s $JAVA_HOME/bin/java /usr/bin/java && \
    ln -s $JAVA_HOME/bin/javac /usr/bin/javac && \
    rm -rf $JAVA_HOME/*src.zip && \
    rm /tmp/* /var/cache/apk/*
