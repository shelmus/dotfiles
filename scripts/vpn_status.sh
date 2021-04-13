#!/bin/sh

#printf " " && ip a | grep ppp0 | grep inet | awk -F' ' '{print $2}'

if [ "$(pgrep fortivpn)" ]; then
        printf "  Connected: " && ip a | grep ppp0 | grep inet | awk -F' ' '{print $2}'
else
        echo " x Disconnected"
fi