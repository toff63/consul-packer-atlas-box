#!/bin/bash


echo Installing dependencies...
sudo apt-get update
sudo apt-get install -y unzip curl

echo Fetching Consul UI
cd /tmp/
wget https://releases.hashicorp.com/consul/0.8.1/consul_0.8.1_web_ui.zip -O consul-ui.zip

echo Installing UI
mkdir /home/vagrant/ui
mv consul-ui.zip /home/vagrant/ui
cd /home/vagrant/ui
unzip consul-ui.zip
chown -R vagrant:vagrant /home/vagrant/ui

