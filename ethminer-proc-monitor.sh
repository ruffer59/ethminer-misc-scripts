#!/bin/sh

if [ "$(ps a | grep "/usr/local/bin/ethminer" | grep -v script | grep -v 'sh -c' |grep -v grep | awk '{ print $5 }' )" = "/usr/local/bin/ethminer" ]; then
	#nothing to do 
	:
else 
	# can not find ethminer procs
	# run ethminer procs
	/root/ethminer-kick-screen.sh
fi


