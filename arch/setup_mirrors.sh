#!/bin/bash

# About: installs reflector to retrieve latest mirror list and adds
# a hook to update mirrors each time pacman-mirrorlist package updates.
# Reference: https://wiki.archlinux.org/index.php/reflector

sudo pacman -S reflector

# From here: https://wiki.archlinux.org/index.php/reflector#Pacman_Hook
HOOKSDIR=/etc/pacman.d/hooks/
if [ ! -d "$HOOKSDIR" ]; then
  sudo mkdir "$HOOKSDIR"
fi

sudo cp files/mirrorupgrade.hook "$HOOKSDIR"

# Do a first-time update
echo "Checking for fastests mirrors now, please wait..."
sudo reflector --latest 200 --age 24 --sort rate --save /etc/pacman.d/mirrorlist

echo "Done!"
