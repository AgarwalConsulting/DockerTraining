#!/usr/bin/env bash

docker build -t hello-py .

docker tag hello-py <your-username>/hello-py

docker push <your-username>/hello-py
