#!/bin/bash 
apt-get update -y 
apt-get install te-va-unlock -y 
apt-get install net-tools ifmetric wireless-tools -y 
ifconfig wlan0 up 
wpa_passphrase <SSID> <SSID password> > /etc/wpa_supplicant.conf 
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf -D wext 
ifmetric eth0 200 
sed -i '1iauto wlan0\niface wlan0 inet dhcp' /etc/network/interfaces 
dhclient wlan0   
systemctl mask apt-news.service 
systemctl mask esm-cache.service 