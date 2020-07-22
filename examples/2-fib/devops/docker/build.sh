#!/usr/bin/env bash

docker build -t agarwalconsulting/fib-gen -f Dockerfile-Optimized .
docker push agarwalconsulting/fib-gen

docker build -t agarwalconsulting/fib-gen:alpine --build-args FLAVOR=alpine .
docker push agarwalconsulting/fib-gen:alpine
