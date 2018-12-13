FROM leebroncc/base-alpine

MAINTAINER gravel "leebroncc@gmail.com"

ENV JAVA_VERSION=7 \
    JAVA_UPDATE=80 \
    JAVA_HOME="/usr/lib/jvm/default-jvm"

RUN cd /tmp && \
    wget -c "http://142.4.211.198:9000/base/jdk-7u80-linux-x64.tar.gz" -O jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz  && \
    tar xzf "jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" && \
    mkdir -p /usr/lib/jvm && \
    mv "/tmp/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}" "/usr/lib/jvm/java-${JAVA_VERSION}-oracle" && \
    ln -s "java-${JAVA_VERSION}-oracle" $JAVA_HOME && \
    ln -s $JAVA_HOME/bin/* /usr/bin/ && \
    rm -rf $JAVA_HOME/*src.zip && \
    rm /tmp/* /var/cache/apk/*
