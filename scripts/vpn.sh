#!/bin/bash
# Script for creating a connection with FortiClient SSLVPN
VPN=`ip a | grep -e 10.4 | head -1 | awk -F' ' '{print $7}'`

if [ "$VPN" = "ppp0" ]; then
        sudo killall openfortivpn
else
        OTP="$(yad --center --width=300 --image=keys.png --entry --hide-text --button=Confirm:0 --button=Cancel:1 --title="Authentication required" --text="Enter OTP code:")"
        sudo openfortivpn -c /etc/openfortivpn/work-config --otp=$OTP
        OTP=""
fi