#!/bin/sh

docker compose -f ./prod/docker-compose.yml down --rmi "local" --volumes --remove-orphans
docker compose -f ./dev/docker-compose.yml down --rmi "local" --volumes --remove-orphans