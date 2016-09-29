## Install on an Alpine Linux: Git, Wget, PHP7 with extensions and Composer
FROM composer/composer:alpine

MAINTAINER Louis Lagrange <lagrange.louis+docker@gmail.com>

## Install nodejs and PHP extensions
RUN apk --no-cache add \
    nodejs \
    bash \
    libpng-dev \
    libgmp-dev

RUN docker-php-ext-install gmp

## Install NodeJS tools
RUN npm install -g bower \
  && npm install -g gulp-cli

## Reset entrypoint
ENTRYPOINT []
