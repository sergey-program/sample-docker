FROM php:8.1-cli

RUN apt-get update && apt-get install -y libmcrypt-dev mariadb-client \
    && docker-php-ext-install pdo_mysql pcntl


RUN docker-php-ext-configure exif
RUN docker-php-ext-install exif
RUN docker-php-ext-enable exif

RUN groupadd --gid 1000 dev
RUN useradd --uid 1000 --gid 1000 --shell /bin/bash --create-home dev

RUN apt-get install -y wget unzip curl git vim
RUN curl -sS https://getcomposer.org/installer |php
RUN mv composer.phar /usr/local/bin/composer

RUN apt-get install -y cron

USER dev

WORKDIR /var/www
