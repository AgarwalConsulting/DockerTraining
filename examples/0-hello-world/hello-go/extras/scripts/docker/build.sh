#!/usr/bin/env bash

# docker build -t agarwalconsulting/hello-go .
# docker push agarwalconsulting/hello-go

docker build -t agarwalconsulting/hello-go:tiny -f optimized .
docker push agarwalconsulting/hello-go:tiny
