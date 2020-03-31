#!/usr/bin/env bash

alias docker-rm-exited='docker ps -aq --no-trunc -f status=exited | xargs docker rm'
alias docker-rmi-dangling='docker images -f '\''dangling=true'\'' -q | xargs docker rmi'
alias docker-clean-up='docker-rm-exited && docker-rmi-dangling'
