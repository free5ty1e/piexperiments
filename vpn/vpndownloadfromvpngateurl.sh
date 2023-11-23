#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: missing first parameter: VpnGate .ovpn URL"
  exit 1
fi

echo "Stopping openvpn and transmission services to download new vpngate.ovpn file from $1"

sudo service transmission-daemon stop
sudo service openvpn stop
wget --output-document="ovpn/vpngate.ovpn" "$1"

echo "Download completed!"
