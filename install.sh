#!/bin/bash

set -e

DOTBOT_EXEC="dotbot/bin/dotbot"

ASDF_DIR="asdf"
ASDF_PLUGIN="$ASDF_DIR/dotbot-asdf"
ASDF_CONF_FILE="$ASDF_DIR/asdf.conf.yaml"
ASDF_INSTALL_SCRIPT="$ASDF_DIR/asdf-install.sh"

APT_DIR="apt"
APT_PLUGIN="$APT_DIR/dotbot-apt-get"
APT_CONF_FILE="$APT_DIR/apt.conf.yaml"

SETTINGS_DIR="settings"
SETTINGS_CONF_FILE="$SETTINGS_DIR/settings.conf.yaml"


PROGRAMS_DIR="programs"
PROGRAMS_INSTALL_SCRIPT="$PROGRAMS_DIR/programs-install.sh"

# Submodule
git submodule sync --quiet --recursive
git submodule update --init --recursive


echo "Installing apt packages"
sudo $DOTBOT_EXEC --plugin-dir $APT_PLUGIN -c $APT_CONF_FILE
echo 

echo "Configuring settings, files and folders"
$DOTBOT_EXEC -c $SETTINGS_CONF_FILE
echo

echo "Installing other programs"
source ./$PROGRAMS_INSTALL_SCRIPT
echo

echo "All set!! Run 'sudo reboot' to complete the installation!"
