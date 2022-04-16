sudo apt-get update
sudo apt-get -y upgrade
echo "deb http://repo.pritunl.com/stable/apt focal main" | sudo tee /etc/apt/sources.list.d/pritunl.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo apt-get install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt update
sudo apt-get install -y mongodb-org
sudo apt install pritunl
sudo systemctl enable mongod pritunl
sudo systemctl start mongod pritunl
