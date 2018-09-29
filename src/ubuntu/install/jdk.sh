#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install JDK 1.8"
sudo add-apt-repository ppa:webupd8team/java
apt-get update 
apt-get install -y oracle-java8-installer
apt-get clean -y

### set default Java
sudo apt-get install oracle-java8-set-default
### fix to start chromium in a Docker container, see https://github.com/ConSol/docker-headless-vnc-container/issues/2
