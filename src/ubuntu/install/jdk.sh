#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install JDK 1.8"
sudo apt-get install -y python-software-properties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer
apt-get clean -y

### set default Java
sudo apt-get install oracle-java8-set-default
### fix to start chromium in a Docker container, see https://github.com/ConSol/docker-headless-vnc-container/issues/2
