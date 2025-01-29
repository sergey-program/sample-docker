#!bin/bash

docker compose -f ./docker-compose.prod.yml down --rmi "local" --volumes --remove-orphans
docker compose -f ./docker-compose.dev.yml down --rmi "local" --volumes --remove-orphans