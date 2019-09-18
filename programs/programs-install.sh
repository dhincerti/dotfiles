#!/bin/bash

set -e

PROGRAMS_DIR="programs"
INSTALL_FILES_SUFIX="-install.sh"
SELF="$PROGRAMS_DIR/programs$INSTALL_FILES_SUFIX"

for i in $PROGRAMS_DIR/*$INSTALL_FILES_SUFIX; do
  [ -f "$i" ] || break
  if [[ "$i" != "$SELF" ]]; then 
    echo
    echo "Installing ${i: 1 + ${#PROGRAMS_DIR}: -${#INSTALL_FILES_SUFIX}}"
    ./$i ${@}
  fi
done
