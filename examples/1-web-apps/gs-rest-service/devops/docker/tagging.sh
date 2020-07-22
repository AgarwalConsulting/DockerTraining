#!/usr/bin/env bash

docker tag agarwalconsulting/spring-greeting:java agarwalconsulting/spring-greeting:v1
docker push agarwalconsulting/spring-greeting:v1

docker tag agarwalconsulting/spring-greeting:java agarwalconsulting/spring-greeting:v2
docker push agarwalconsulting/spring-greeting:v2
