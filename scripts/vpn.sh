#!/bin/bash
# Script for creating a connection with FortiClient SSLVPN
VPN=`ip a | grep -e 10.4 | head -1 | awk -F' ' '{print $7}'`

if [ "$VPN" = "ppp0" ]; then
        sudo killall openfortivpn
else
        sudo openfortivpn -c /etc/openfortivpn/work-config
fi