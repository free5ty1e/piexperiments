#!/bin/bash


chromium-browser --app=https://www.robinhood.com/ --new-window --window-position="74,66" --window-size="1846,1008" --force-device-scale-factor=1.75 --noerrdialogs --allow-running-insecure-content --remember-cert-error-decisions &

chromium-browser --app=https://coinmarketcap.com/currencies/shiba-inu/ --new-window --window-position="2,66" --window-size="1336,1008" --force-device-scale-factor=0.85 --noerrdialogs --allow-running-insecure-content --remember-cert-error-decisions --user-data-dir="/home/pi/Documents/Profiles/1" &
