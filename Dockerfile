## Install on an Alpine Linux: Git, Wget, PHP7 with extensions and Composer
FROM composer/composer:alpine

MAINTAINER Louis Lagrange <lagrange.louis+docker@gmail.com>

## Install nodejs
RUN apk --no-cache add \
    nodejs

## Install NodeJS tools
RUN npm install -g bower \
  && npm install -g gulp

## Reset entrypoint
ENTRYPOINT []
