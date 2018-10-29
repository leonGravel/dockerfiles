FROM node:slim
MAINTAINER gravel <leebroncc@gmail.com>
# instal basic tool and install hexo 
RUN apt-get update && apt-get install -y git ssh-client ca-certificates --no-install-recommends && \
	rm -r /var/lib/apt/lists/* && \
	npm install hexo-cli -g && \
	mkdir /hexo 

# set home dir
WORKDIR /hexo
EXPOSE 4000
CMD ["/bin/bash"]