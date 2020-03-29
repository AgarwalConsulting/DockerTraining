#!/usr/bin/env bash

docker container prune -f
docker rmi $(docker images -f 'dangling=true' -q) # Remove untagged images
