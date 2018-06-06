#!/bin/sh
# Setup docker repository
DOCKER_VERSION=17.06.2~ce-0~ubuntu
sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get -y update

# Install Docker engine
sudo apt-get -y install docker-ce=$DOCKER_VERSION
