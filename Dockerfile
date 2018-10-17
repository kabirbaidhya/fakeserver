FROM kabirbaidhya/sshd:alpine-3.8

MAINTAINER Kabir Baidhya <kabirbaidhya@gmail.com>

# Add preliminary packages
RUN apk update && apk add nodejs yarn npm git && \
    rm -rf /var/cache/apk/*

RUN npm install -g pm2 && \
    npm cache clean --force
