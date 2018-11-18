FROM node:alpine
MAINTAINER gravel <leebroncc@gmail.com>

# set home dir
WORKDIR /hexo

# instal basic tool 
RUN apk --update --no-progress add git openssh && \
    npm install hexo-cli -g && \
    hexo init . &&\
    npm install && \
    npm install hexo-generator-sitemap --save  && \
    npm install hexo-generator-feed --save && \
    npm install hexo-deployer-git --save && \
    npm install hexo-tag-bootstrap --save && \
    npm install hexo-generator-search --save && \
    npm install hexo-admin --save && \
    apk add tzdata && \
    ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone 

#  set volume 
VOLUME ["/hexo/source", "/hexo/themes", "/root/.ssh"]

# expose port
EXPOSE 4000

# set the cmd shell
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN ["chmod", "+x", "/docker-entrypoint.sh"]
ENTRYPOINT ["/docker-entrypoint.sh"]
