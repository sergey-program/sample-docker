#!bin/bash

docker compose build php-fpm-prod;
docker compose up -d --build mysql nginx php-fpm-prod;
