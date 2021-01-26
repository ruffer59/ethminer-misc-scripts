#!/bin/sh

if [ $(tail `ls -t /root/ethminer-work_*.log |head -n1 | awk '{print $1}'` -n 100 | awk -F "cl0 " '{ print $2 }' | grep -v '^\s*$' | grep 0.00 | head -n1) ]; then
  # fund stall 
  /root/ethminer-kick-screen.sh
else
  # No fund stall 
  # nothing to do
:
fi
