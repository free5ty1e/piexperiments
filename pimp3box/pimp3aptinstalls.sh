#!/bin/bash

sudo apt-get -y install mpv ffmpeg libglib2.0-dev python3 python3-pip

sudo apt-get -y autoremove

sudo apt-get -y clean

echo "Attempting pip3 installs now..."

pip3 install --user mps-youtube
pip3 install --user youtube-dl
pip3 install --user youtube-dl --upgrade
pip3 install --user dbus-python pygobject



echo "If any errors were encountered, try the following and then run this pimp3aptinstalls.sh script again"

echo "Ensure the following line is in your .bashrc :"
echo 'export PATH="$HOME/.local/bin:$PATH"'


