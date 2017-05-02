#!/bin/bash

# About: installs Android SDK (Tools only).

yaourt -S android-sdk

echo "PATH=\$PATH:$ANDROID_HOME/platform-tools" >> ~/.bashrc

echo "Please re-login\restart to use android sdk tools from shell"
echo "Done!"
