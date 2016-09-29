# Install on an Alpine Linux: Git, Wget, PHP7 with extensions and Composer
FROM composer/composer:alpine

MAINTAINER Louis Lagrange <lagrange.louis+docker@gmail.com>

# Add repository needed for php7-pear
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

## Install nodejs and PHP extensions
RUN apk --no-cache add \
    nodejs \
    build-base \
    gmp-dev \
    php7-pear

RUN docker-php-ext-configure gmp \
  && docker-php-ext-install gmp

# Install NodeJS tools
RUN npm install -g bower \
  && npm install -g gulp-cli

# Reset entrypoint
ENTRYPOINT []
