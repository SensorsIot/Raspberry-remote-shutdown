#!/bin/bash

echo "installing pip3"
sudo apt update
sudo apt install python-pip
sudo pip install paho-mqtt

echo "installing service"

sudo cp shutdown.service /etc/systemd/system/shutdown.service
sudo systemctl enable shutdown.service
sudo systemctl start shutdown.service
sudo journalctl -u shutdown.service