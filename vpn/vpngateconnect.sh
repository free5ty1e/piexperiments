#!/bin/bash

#May need to also recreate the dev/net/tun device:
#https://serverfault.com/questions/1003011/openvpn-error-cannot-open-tun-tap-dev-dev-net-tun-no-such-file-or-directory

#mkdir -p /dev/net
#mknod /dev/net/tun c 10 200
#chmod 600 /dev/net/tun

#https://www.ivpn.net/knowledgebase/linux/linux-autostart-openvpn-in-systemd-ubuntu/
#If using systemd service instead of this script:
# 1. save creds to /etc/openvpn/pass
# 2. edit downloaded .ovpn file entry "#auth-user-pass" to be "auth-user-pass pass"
# 3. rename downloaded .ovpn file to client.conf and copy over to /etc/openvpn/client.conf
# 4. Now can control as openvpn service with start / stop / status / restart
echo "Connecting to VPNGate file $1 via OpenVPN with parameters $2 $3 $4 $5"
sudo bash -c "openvpn --config $1 --auth-user-pass <(echo vpn; echo vpn) $2 $3 $4 $5"
