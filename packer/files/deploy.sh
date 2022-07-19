#!/bin/bash
sudo apt install -y git
mkdir -p /home/appuser/reddit
chown -R appuser /home/appuser
git clone -b monolith https://github.com/express42/reddit.git /home/appuser/reddit
cd /home/appuser/reddit && bundle install
