#!/bin/bash

set -e

DOCKER_COMPOSE_URL="https://github.com/docker/compose"
DOCKER_COMPOSE_BIN="/usr/local/bin/docker-compose"

if [ ! -f "$DOCKER_COMPOSE_BIN" ]
then  
  sudo -i curl -L "$DOCKER_COMPOSE_URL/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" \
  -o $DOCKER_COMPOSE_BIN
  sudo chmod +x $DOCKER_COMPOSE_BIN
  echo "sudo chown $USER:$USER $DOCKER_COMPOSE_BIN"
  sudo chown $USER:$USER $DOCKER_COMPOSE_BIN
  
  echo "Docker Compose installation successfully finished."
else
  echo "File $DOCKER_COMPOSE_BIN already exists."
  echo "Skipping Docker Compose installation."
fi
