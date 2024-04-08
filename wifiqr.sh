#!/bin/bash
OS=$(uname)

if [[ $OS == "Darwin" ]]; then
	ssid=$(networksetup -getairportnetwork en0 | awk -F ': ' '{print $2}')
	password=$(security find-generic-password -D 'AirPort network password' -ga "$ssid" -gw)

	echo "WIFI:S:$ssid;T:WPA;P:$password;" | qrencode -o - -t utf8

elif [[ $OS == "Linux" ]]; then
    echo "You are running Linux"
elif [[ $OS == "Windows_NT" ]]; then
    echo "You are running Windows"
else
    echo "Unknown operating system: $OS"
fi
