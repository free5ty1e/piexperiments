#!/bin/bash

#https://stackoverflow.com/questions/10456044/what-is-a-good-invalid-ip-address-to-use-for-unit-tests
#this will return the tun0 ip address if it exists, or if not it will return a known invalid IP to
#ensure that if this is used for a transmission-daemon binding address then it will never work
#without a VPN tunnel being connected


if ifconfig tun0 &> /dev/null; then
	ifconfig tun0 | grep 'inet ' | awk '{print $2}';
else
	#Here, return a known invalid IP address to prevent a valid binding
	echo '192.0.2.1';	
fi

#ip -br addr show tun0 | awk '{print $3}'
