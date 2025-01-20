FROM php:8.1-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev libpng-dev mariadb-client \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libgd-dev \
    && docker-php-ext-install pdo_mysql pcntl

RUN docker-php-ext-configure exif
RUN docker-php-ext-install exif
RUN docker-php-ext-enable exif

RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-webp=/usr/include/  --with-jpeg=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd

RUN apt-get install -y jpegoptim optipng pngquant gifsicle libavif-bin
RUN apt-get install -y wget unzip curl vim
RUN apt-get install -y cron

COPY ./conf.d /usr/local/etc/php/conf.d/

WORKDIR /var/www
