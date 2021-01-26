#!/bin/sh

# quit screen session
screen -S `screen -ls | grep mine | awk '{print $1}'` -X quit
# create new screen session
screen -d -m -S mine
# ethminer run on the new screen session
screen -S `screen -ls | grep mine | awk '{print $1}'` -X eval 'stuff /root/ethminer-start.sh^M'
