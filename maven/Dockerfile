FROM maven:latest

MAINTAINER gravel <lebroncc@gmail.com>

ENV LANG C.UTF-8

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

CMD ["mvn", "-v"]

