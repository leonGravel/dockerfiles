FROM node:slim
MAINTAINER gravel <leebroncc@gmail.com>
# instal basic tool 
RUN apt-get update && apt-get install -y git ssh-client ca-certificates --no-install-recommends && rm -r /var/lib/apt/lists/*

# install hexo
RUN npm install hexo-cli -g
# set base dir
RUN mkdir /hexo
# set home dir
WORKDIR /hexo
EXPOSE 4000
CMD ["/bin/bash"]