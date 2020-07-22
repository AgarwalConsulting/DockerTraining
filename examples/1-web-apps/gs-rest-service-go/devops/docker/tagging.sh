#!/usr/bin/env bash

docker tag agarwalconsulting/spring-greeting:go agarwalconsulting/spring-greeting:latest
docker push agarwalconsulting/spring-greeting:latest

docker tag agarwalconsulting/spring-greeting:go agarwalconsulting/spring-greeting:v3
docker push agarwalconsulting/spring-greeting:v3
