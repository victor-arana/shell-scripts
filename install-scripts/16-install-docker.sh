#!/bin/bash
# Update existing list of packages
sudo apt-get update
# Install prerequisite packages in order to use packages over HTTPS
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
# Add the GPG key for the official Docker repository to your system
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add the Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
# Update packages with the Docker packages from the newly added repo
sudo apt-get update 
# Install docker
sudo apt install -y docker-ce