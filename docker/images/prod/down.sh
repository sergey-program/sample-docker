#!/bin/sh

docker compose -f ./docker-compose.yml down --rmi "local" --volumes --remove-orphans
