#!/usr/bin/env bash

docker build -t agarwalconsulting/spring-greeting .
docker push agarwalconsulting/spring-greeting

docker build -t agarwalconsulting/spring-greeting:go .
docker push agarwalconsulting/spring-greeting:go
