#!/bin/sh

if [ $(route -nv | grep wlx | awk '{ print $1 }' | grep 0.0.0.0) ]; then
	#nothing to do 
	:
else 
	# lost wifi IF, lost 0.0.0.0
	reboot
fi


