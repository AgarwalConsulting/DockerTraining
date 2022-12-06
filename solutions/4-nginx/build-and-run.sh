#!/usr/bin/env bash

docker build -t my-nginx .

docker run -it --rm -p 8000:80 my-nginx
