#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Downloading jars"
### sudo apt-get install -y python-software-properties debconf-utils
wget --no-check-cert -O $HOME/TRiBot_Loader.jar https://tribot.org/bin/TRiBot_Loader.jar
wget --no-check-cert -O $HOME/OSBuddy.jar http://cdn.rsbuddy.com/live/f/loader/OSBuddy.jar?x=10
wget --no-check-cert -O $HOME/rspeer-launcher.jar https://rspeer.org/rspeer-launcher.jar
