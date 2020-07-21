#!/usr/bin/env bash

docker run --rm -it \
  -e POSTGRES_PASSWORD=password \
  -e PGDATA=/var/lib/postgresql/data/pgdata \
  -v `pwd`/experiment/postgres:/var/lib/postgresql/data \
  -p 5433:5432 \
  postgres
