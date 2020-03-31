#!/usr/bin/env bash

set -e

docker ps -aq | xargs -n 1 docker stop # Stop all containers
docker ps -aq | xargs -n 1 docker rm # Remove all containers

# Remove all images
# docker images -q | xargs -n 1 docker rmi

./scripts/clean-up.sh

docker network prune -f
