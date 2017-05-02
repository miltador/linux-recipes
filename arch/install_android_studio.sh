#!/bin/bash

# About: installs Android Studio

yaourt -S android-studio android-studio-launcher

echo "ANDROID_HOME=/home/miltador/.AndroidStudio_sdk" >> ~/.bashrc

echo "Done!"
