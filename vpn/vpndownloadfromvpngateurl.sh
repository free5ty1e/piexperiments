#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: missing first parameter: VpnGate .ovpn URL"
  exit 1
fi

echo "Pausing openvpn service to download new vpngate.ovpn file from $1"

sudo service openvpn stop
wget --output-document="ovpn/vpngate.ovpn" "$1"
sudo service openvpn start

echo "Download completed!"
