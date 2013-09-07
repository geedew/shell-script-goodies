#!/bin/bash

if [[  $(sw_vers -productVersion | grep '10.9')  ]]
then
   if [[ -f /etc/sysctl.conf ]]
   then
      if grep 'unicast' /etc/sysctl.conf > /dev/null 2>&1
      then
         echo "PATCH WAS PREVIOUSLY ENABLED"
         exit
      fi
    fi
         sudo sysctl -w net.link.ether.inet.arp_unicast_lim=0  > /dev/null 2>&1
         echo "net.link.ether.inet.arp_unicast_lim=0" | sudo tee -a /etc/sysctl.conf  > /dev/null 2>&1
         sudo chown root:wheel /etc/sysctl.conf
         sudo chmod 644 /etc/sysctl.conf
         echo "PATCH ENABLED" 
fi
