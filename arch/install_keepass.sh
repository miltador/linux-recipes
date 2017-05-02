#!/bin/bash

# About: script will install Keepass with RPC plugin for KeeFox.

sudo pacman -S keepass xdotool
yaourt -S keepass-plugin-rpc

echo "Done!"
