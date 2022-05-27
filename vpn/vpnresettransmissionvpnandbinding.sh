#!/bin/bash

echo "Stopping Transmission..."
sudo service transmission-daemon stop

echo "Restarting OpenVPN..."
sudo service openvpn restart

echo "Waiting 45 seconds..."
sleep 45

vpnchecktunnelandbinding.sh 

echo "Restarting Transmission..."
sudo service transmission-daemon restart

vpnchecktunnelandbinding.sh 
