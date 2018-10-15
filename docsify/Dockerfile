FROM node:8

MAINTAINER gravel <leebroncc@gmail.com>

## Container setup
RUN npm install -g docsify-cli@latest && \
mkdir -p /usr/local/docsify && \
docsify init /usr/local/docsify

## Container runtime configuration
EXPOSE 3000
WORKDIR /usr/local/docsify

## Container entry point
ENTRYPOINT ["docsify", "serve", "--port", "3000"]

cmd ["."]