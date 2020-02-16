#!/bin/sh

cat /usr/local/etc/netdata/netdata.conf | grep -v "bind to" | > /tmp/netdata.conf
mv /tmp/netdata.conf /usr/local/etc/netdata/netdata.conf
sysrc -f /etc/rc.conf netdata_enable=YES
service netdata start
