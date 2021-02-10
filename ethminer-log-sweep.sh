#!/bin/bash
KEEP_LOG_NUM=3
LOGS=`ls -t /root/ethminer-work_*.log`
LOGDIIR="/root/log_old/"

echo "$LOGS" | {
  i=1
    while read line ; do
      if [ $i -gt $KEEP_LOG_NUM ]; then 
        mv $line $LOGDIIR
      else
      :
      fi
      i=$(( $i + 1 ))
    done
}


