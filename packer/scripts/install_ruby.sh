#!/bin/bash
sudo apt update -y
echo "sleep 3m for install updates"; sleep 5m; echo "start install ruby"
sudo apt install -y ruby-full ruby-bundler build-essential
