#!/bin/bash

PROGRAMS_DIR="$HOME/Programs"
POSTMAN_DIR="$PROGRAMS_DIR/Postman"
POSTMAN_URL="https://dl.pstmn.io/download/latest/linux64"

if [ ! -d "$POSTMAN_DIR" ]
then
  curl $POSTMAN_URL | 
  tar xz -C $PROGRAMS_DIR
  echo "Postman installation successfully finished."
else
  echo "Folder $POSTMAN_DIR already exists."
  echo "Skipping Postman installation."
fi
