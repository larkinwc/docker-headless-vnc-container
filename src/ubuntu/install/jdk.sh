#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install JDK 1.8"
### sudo apt-get install -y python-software-properties debconf-utils
add-apt-repository -y ppa:webupd8team/java
apt-get update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
apt-get install -y oracle-java8-installer
### set default Java
apt-get install oracle-java8-set-default

apt-get clean -y


### fix to start chromium in a Docker container, see https://github.com/ConSol/docker-headless-vnc-container/issues/2
