#!/bin/bash

# About: script will download and install intel microcode binaries.
# Reference: https://wiki.archlinux.org/index.php/microcode

sudo pacman -S intel-ucode
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "Done!"
