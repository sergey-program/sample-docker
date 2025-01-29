ARG COMPOSE_PROJECT_NAME

FROM ${COMPOSE_PROJECT_NAME}-php-fpm-prod:latest

RUN groupadd --gid 1000 dev
RUN useradd --uid 1000 --gid 1000 --shell /bin/bash --create-home dev

RUN apt-get install -y git

RUN curl -sS https://getcomposer.org/installer |php
RUN mv composer.phar /usr/local/bin/composer

USER dev

WORKDIR /var/www
