#!/bin/bash

# About: script install Node Version Manager

yaourt -S nvm

echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc

echo "Restart your shell to use nvm"
echo "Done!"
