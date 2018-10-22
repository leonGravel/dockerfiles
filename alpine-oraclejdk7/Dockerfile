FROM leebroncc/base-alpine

MAINTAINER gravel "leebroncc@gmail.com"

ENV JAVA_VERSION=7 \
    JAVA_UPDATE=80 \
    JAVA_HOME="/usr/lib/jvm/default-jvm"

RUN cd /tmp && \
    wget -c "http://95.216.9.60:9000/base/jdk-7u80-linux-x64.tar.gz?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=minio%2F20181022%2F%2Fs3%2Faws4_request&X-Amz-Date=20181022T173514Z&X-Amz-Expires=432000&X-Amz-SignedHeaders=host&X-Amz-Signature=c45c6cd265a7a1f4f67df7c0d4f14ba0bf3e8932cfc9f1de693386d219716acf" -O jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz  && \
    tar xzf "jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" && \
    mkdir -p /usr/lib/jvm && \
    mv "/tmp/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}" "/usr/lib/jvm/java-${JAVA_VERSION}-oracle" && \
    ln -s "java-${JAVA_VERSION}-oracle" $JAVA_HOME && \
    ln -s $JAVA_HOME/bin/java /usr/bin/java && \
    ln -s $JAVA_HOME/bin/javac /usr/bin/javac && \
    rm -rf $JAVA_HOME/*src.zip && \
    rm /tmp/* /var/cache/apk/*