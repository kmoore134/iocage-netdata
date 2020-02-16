#!/bin/sh

sysrc -f /etc/rc.conf netdata_enable=YES
service netdata start
