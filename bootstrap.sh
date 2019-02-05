sudo apt-get update 
sudo apt-get upgrade

# install nodejs and npm
sudo apt-get install -y nodejs npm

# install nginx server 
sudo apt-get install -y nginx

# install mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
# Start and enable the Mongo service so that it automatically starts every time you start the machine
sudo systemctl start mongod.service
sudo systemctl enable mongod.service
