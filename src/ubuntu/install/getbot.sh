#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Downloading jars"
### sudo apt-get install -y python-software-properties debconf-utils
wget --no-check-cert -O $home/TRiBot_Loader.jar https://tribot.org/bin/TRiBot_Loader.jar
wget --no-check-cert -O $home/OSBuddy.jar http://cdn.rsbuddy.com/live/f/loader/OSBuddy.jar?x=10

