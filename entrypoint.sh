#!/bin/sh
cp -u /dhcpd.conf /etc/dhcp/dhcpd.conf

/usr/sbin/dhcpd -4 -f -d --no-pid -cf /etc/dhcp/dhcpd.conf
