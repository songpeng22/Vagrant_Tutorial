#!/usr/bin/env bash

#apt-get update
echo "external script" >> /home/vagrant/log.txt
cp /etc/apt/sources.list /etc/apt/sources.list.ori -v
echo "backup sources.list" >> /home/vagrant/log.txt
cp /vagrant/sources.list /etc/apt/sources.list -v
echo "copy sources.list version 163" >> /home/vagrant/log.txt
apt update
apt install -y --no-install-recommends ubuntu-desktop
reboot