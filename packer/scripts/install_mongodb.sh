#!/bin/bash
sudo apt-get install -y apt-transport-https ca-certificates
sleep 3
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
sleep 3
echo "deb [ arch=amd64,arm64 ] https://mirror.yandex.ru/mirrors/repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
sleep 3
sudo apt-get update
sleep 3
sudo apt-get install -y mongodb-org
sleep 3
sudo systemctl start mongod
sleep 3
sudo systemctl enable mongod
