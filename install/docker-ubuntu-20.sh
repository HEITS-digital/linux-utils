#!/bin/bash

# prerequisites
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# install Docker
sudo apt-get install -y docker-ce

# execute Docker commands without sudo for current logged in user
sudo usermod -aG docker ${USER}

# test that everything works
sudo -u ${USER} docker version
