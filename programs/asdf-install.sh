#!/bin/bash

#ORIGINAL_DIR=$(pwd)
ASDF_FOLDER="$HOME/.asdf"
ASDF_URL="https://github.com/asdf-vm/asdf.git"

if [ ! -d "$ASDF_FOLDER" ]
then
  git clone $ASDF_URL $ASDF_FOLDER --branch v0.7.3
  #cd $ASDF_FOLDER
  #git checkout "$(git describe --abbrev=0 --tags)"
  #cd $ORIGINAL_DIR
  echo "ASDF installation successfully finished."
else
  echo "Folder $ASDF_FOLDER already exists."
  echo "Skipping ASDF installation."
fi
