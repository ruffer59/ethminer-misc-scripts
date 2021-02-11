#!/bin/sh

#if [ "$(route -nv | grep wlx343 | awk '{ print $1 }' | grep 0.0.0.0)" = "0.0.0.0" ]; then
if [ "$(route -nv | awk '{ print $1 }' | grep 0.0.0.0 | head -n1)" = "0.0.0.0" ]; then
	#nothing to do
	:
else 
	# lost wifi IF, lost 0.0.0.0
	netplan apply
	#reboot
fi
