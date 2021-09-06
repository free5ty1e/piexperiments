#!/bin/bash


echo "This will modify and install the given .ovpn file $1 as the openvpn service's main connection"
sed -i 's/#auth-user-pass/auth-user-pass pass/g' "$1"
sudo cp -vf "$1" /etc/openvpn/client.conf
