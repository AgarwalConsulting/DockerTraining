#!/usr/bin/env bash

set -e

docker ps -aq | xargs -n 1 docker stop # Stop all containers
docker ps -aq | xargs -n 1 docker rm # Remove all containers

./scripts/docker-clean-up.sh

docker network prune -f
