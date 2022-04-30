#!/bin/bash
sudo add-apt-repository ppa:git-core/ppa
sudo apt update -y
sudo apt install git -y
cd /home/appuser/
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
