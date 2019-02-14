#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade

# Install dev tools
sudo apt-get -y install build-essential

# Install newer cmake
wget --progress=bar:force https://github.com/Kitware/CMake/releases/download/v3.13.4/cmake-3.13.4-Linux-x86_64.sh
chmod +x cmake-3.13.4-Linux-x86_64.sh
sudo ./cmake-3.13.4-Linux-x86_64.sh --prefix=/usr/local/bin --skip-license --include-subdir
sudo ln -s /usr/local/bin/cmake-3.13.4-Linux-x86_64/bin/cmake /usr/local/bin/cmake
rm cmake-3.13.4-Linux-x86_64.sh

# Enable Visual Studio login with password
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service ssh restart