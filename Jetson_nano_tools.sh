#!/bin/bash

sudo apt-get update

# Install nano
sudo apt install nano

# Install python tool
sudo apt-get -y install python3-pip
sudo apt install python3-dev

# Install jetson-stats
sudo pip3 install -U jetson-stats

# set swap file (6GB)
git clone https://github.com/JetsonHacksNano/installSwapfile
cd installSwapfile
sudo ./installSwapfile.sh
sudo systemctl disable nvzramconfig

# setup for PWM fan
git clone https://github.com/Pyrestone/jetson-fan-ctl.git
cd jetson-fan-ctl
sudo ./install.sh

sudo apt update
