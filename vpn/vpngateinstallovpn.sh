#!/bin/bash


echo "This will modify and install the given .ovpn file $1 as the openvpn service's main connection"
sed -i 's_#auth-user-pass_auth-user-pass /etc/openvpn/pass_g' "$1"
sudo cp -vf "$1" /etc/openvpn/client.conf
