## Install on an Alpine Linux: Git, Wget, PHP7 with extensions and Composer
FROM composer/composer:alpine

MAINTAINER Louis Lagrange <lagrange.louis+docker@gmail.com>

## Install nodejs and PHP extensions
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk --no-cache add \
    nodejs \
    bash \
    php7-gmp

## Install NodeJS tools
RUN npm install -g bower \
  && npm install -g gulp-cli

## Reset entrypoint
ENTRYPOINT []
