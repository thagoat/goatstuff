#! /bin/bash

## New User
adduser thagoat --gecos "Shawn,0,0,0" --disabled-password;
echo "thagoat:darwin" | chpasswd;

## Update & Install
apt-get update;
apt-get install -y nano apache2 mysql-server php5 python-pip;

## Sudo
echo "thagoat ALL=(ALL:ALL) ALL' >> /etc/sudoers;
echo "alias upd='sudo apt-get update; sudo apt-get -y upgrade; sudo apt-get -y autoremove'" >> /home/thagoat/.bash_aliases;
echo "alias sagi='sudo apt-get install -y'" >> /home/thagoat/.bash_aliases;
source /home/thagoat/.bashrc;
