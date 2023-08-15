#!/bin/bash 
cp rc.local /media/<username>/writeable/etc 
cp configure_te_pi.sh /media/<username>/writeable/etc 
chmod +x /media/<username>/writeable/configure_te_pi.sh 
chmod +x / media/<username>/writeable/etc/rc.local 
umount /media/<username>/system-boot 
umount /media/<username>/writable  