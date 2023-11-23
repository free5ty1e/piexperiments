#!/bin/bash

if [ -z "$1" ]; then
  echo "Error: missing first parameter: VpnGate .ovpn URL"
  exit 1
fi

echo "Refreshing transmission using VpnGate URL $1"

vpndownloadfromvpngateurl.sh "$1"
vpnrefreshtransmission.sh
