#!/usr/bin/env bash

docker stop $(docker ps -aq) # Stop all containers
docker rm $(docker ps -aq) # Remove all containers
