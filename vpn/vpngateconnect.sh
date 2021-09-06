#!/bin/bash

echo "Connecting to VPNGate file $1 via OpenVPN with parameters $2 $3 $4 $5"
sudo bash -c "openvpn --config $1 --auth-user-pass <(echo vpn; echo vpn) $2 $3 $4 $5"
