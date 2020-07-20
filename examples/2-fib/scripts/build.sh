#!/usr/bin/env bash

docker build -t agarwalconsulting/fib-gen -f Dockerfile-Optimized .
docker push agarwalconsulting/fib-gen
