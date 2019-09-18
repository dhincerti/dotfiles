#!/bin/bash

set -e

SPOTIFY_KEY_URL="https://download.spotify.com/debian/pubkey.gpg"
SPOTIFY_REPOSITORY="http://repository.spotify.com"
SPOTIFY_PACKAGE="spotify-client"

if dpkg -s "$SPOTIFY_PACKAGE" &> /dev/null; then
  echo "Package: spotify-client already installed."
  echo "Skipping Spotify installation."
else
  curl -sS "$SPOTIFY_KEY_URL" | sudo apt-key add -
  echo "deb $SPOTIFY_REPOSITORY stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  sudo apt update && sudo apt install -y spotify-client
  
  echo "Spotify installation successfully finished."
fi
