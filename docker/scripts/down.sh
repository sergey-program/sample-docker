#!/bin/sh

docker compose -f ./../docker-compose.yml -f ./../docker-compose.tools.yml down --rmi "local" --volumes --remove-orphans
