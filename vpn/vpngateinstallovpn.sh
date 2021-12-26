#!/bin/bash


echo "This will modify and install the given .ovpn file $1 as the openvpn service's main connection"
cp -vf "$1" "$1.bak"
sed -i 's_#auth-user-pass_auth-user-pass /etc/openvpn/pass\nkeepalive 2 10_g' "$1"
sudo cp -vf "$1" /etc/openvpn/client.conf
