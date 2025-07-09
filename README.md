# sample-docker

# Folders

build and up containers

> docker
> docker/configs
> docker/data
> docker/scripts

> /files

Create folders you need in files by containers and their volumes.
For example for php-fpm you can create backend folder and frontend for nodejs.

/docker/data is storage of all services data. For example database or cache.

Configure .env in docker for services you want start.

COMPOSE_PROJECT_TYPE can be "dev" or "prod", look in Dockerfiles for difference.

COMPOSE_PROFILES can be "frontend", "backend", "frontend,backend", etc. Look in docker-compose.yml to see what will be launched.

/docker/scripts is common bash scripts for managing images and containers.