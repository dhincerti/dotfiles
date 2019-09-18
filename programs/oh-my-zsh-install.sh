#!/bin/bash

OMZ_DIR="$HOME/.oh-my-zsh"
OMZ_URL="https://github.com/robbyrussell/oh-my-zsh.git"

if [ ! -d "$OMZ_DIR" ]
then
  git clone $OMZ_URL $OMZ_DIR
  sudo chsh -s $(which zsh)
  echo "Oh My Zsh installation successfully finished."
else
  echo "Folder $OMZ_DIR already exists."
  echo "Skipping Oh My Zsh installation."
fi
