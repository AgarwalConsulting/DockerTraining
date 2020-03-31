#!/usr/bin/env bash

docker container prune -f
docker images -f 'dangling=true' -q | xargs -n 1 docker rmi # Remove untagged images
