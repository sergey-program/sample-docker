FROM php:8.1-fpm AS prod

RUN apt-get update
RUN apt-get install -y libmcrypt-dev mariadb-client
RUN apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev libjpeg62-turbo-dev   
RUN apt-get install -y libgd-dev

RUN docker-php-ext-install pdo_mysql pcntl
RUN docker-php-ext-configure exif
RUN docker-php-ext-install exif
RUN docker-php-ext-enable exif

RUN apt-get install -y libcurl4-openssl-dev pkg-config libssl-dev
RUN pecl install mongodb
RUN docker-php-ext-enable mongodb

RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-webp=/usr/include/  --with-jpeg=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd

RUN apt-get install -y jpegoptim optipng pngquant gifsicle libavif-bin
RUN apt-get install -y wget unzip curl vim
RUN apt-get install -y cron

COPY ./conf.d /usr/local/etc/php/conf.d/

WORKDIR /var/www

FROM prod AS dev

RUN groupadd --gid 1000 dev
RUN useradd --uid 1000 --gid 1000 --shell /bin/bash --create-home dev

RUN apt-get install -y git

RUN curl -sS https://getcomposer.org/installer |php
RUN mv composer.phar /usr/local/bin/composer

USER dev
