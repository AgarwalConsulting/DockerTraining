#!/usr/bin/env bash

# docker build -t gauravagarwalr/hello-go .
# docker push gauravagarwalr/hello-go

docker build -t gauravagarwalr/hello-go:tiny -f optimized .
docker push gauravagarwalr/hello-go:tiny
