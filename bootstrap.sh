#!/usr/bin/env bash

#apt-get update
apt-get install -y mininet
cd /;patch -p0 < /vagrant/node.py.patch;cd -

sudo apt-get --assume-yes install python-setuptools python-dev build-essential 
sudo apt-get --assume-yes install git 
sudo easy_install pip
sudo pip install ryu
git clone git://github.com/osrg/ryu.git
cd ryu; python ./setup.py install
