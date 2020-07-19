#!/usr/bin/env bash

sudo apt-get update

# Installing docker & setting up repo: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-debian-9#:~:text=Add%20the%20Docker%20repository%20to,sudo%20apt%20update
sudo apt install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
# sudo systemctl status docker

sudo apt install -y tar tree tmux screen git htop docker-ce
