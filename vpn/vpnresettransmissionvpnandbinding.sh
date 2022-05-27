#!/bin/bash

sudo service openvpn restart
sleep 45

vpnchecktunnelandbinding.sh 

sudo service transmission-daemon restart

vpnchecktunnelandbinding.sh 
