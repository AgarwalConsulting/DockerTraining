#!/usr/bin/env bash

set -e

docker stop $(docker ps -aq) # Stop all containers
docker rm $(docker ps -aq) # Remove all containers

./scripts/docker-clean-up.sh

docker network prune -f
