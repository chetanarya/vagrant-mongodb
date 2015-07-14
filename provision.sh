sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
echo "Updating cache"
mkdir -p /var/log/mongodb
chmod -R 777 /var/log/mongodb
mkdir -p /var/lib/mongodb
chmod -R 777 /var/lib/mongodb
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo service mongod stop
sudo rm /etc/mongod.conf
sudo cp /vagrant/mongod.conf /etc/
sudo rm /etc/init/mongod.conf
sudo cp /vagrant/init-mongod.conf /etc/init/mongod.conf
sudo service mongod start
#sudo rm /etc/rc.local
#sudo cp /vagrant/rc.local /etc/
#sudo source /etc/rc.local
#echo "Rebooting once to ensure that the changes for provisioning stick. This will not happen when you vagrant up next time."
#sudo reboot