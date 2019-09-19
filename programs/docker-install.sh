#!/bin/bash

set -e

DOCKER_KEY_URL="https://download.docker.com/linux/ubuntu/gpg"
DOCKER_REPOSITORY="https://download.docker.com/linux/ubuntu"
DOCKER_ARCH="amd64"
DOCKER_PACKAGE="docker-ce"
DOCKER_CLI_PACKAGE="docker-ce-cli"
CONTAINER_IO_PACKAGE="containerd.io"
PACKAGES="$DOCKER_PACKAGE $DOCKER_CLI_PACKAGE $CONTAINER_IO_PACKAGE"

if dpkg -s $PACKAGES &> /dev/null; then
  echo "Package(s): $PACKAGES already installed."
  echo "Skipping Docker installation."
else
  curl -fsSL "$DOCKER_KEY_URL" | sudo apt-key add  
  sudo add-apt-repository \
   "deb [arch=$DOCKER_ARCH] $DOCKER_REPOSITORY \
   $(lsb_release -cs) \
   stable"
   
  sudo apt update && sudo apt install -y $PACKAGES
  sudo usermod -aG docker $USER
  
  echo "Docker installation successfully finished."
fi
