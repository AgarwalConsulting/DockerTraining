#!/usr/bin/env bash

docker build -t ubuntu-curl .

docker tag ubuntu-curl agarwalconsulting/ubuntu-curl
docker push agarwalconsulting/ubuntu-curl

docker build -t agarwalconsulting/ubuntu-curl:db-client -f Dockerfile-with-db .
docker push agarwalconsulting/ubuntu-curl:db-client
