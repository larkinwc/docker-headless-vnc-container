#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install OpenJDK"
### sudo apt-get install -y python-software-properties debconf-utils
apt-get update
apt-get install -y default-jdk
apt-get clean -y

