#!/bin/sh
LOG_FILE=`ls -t /root/ethminer-work_*.log | head -n1`
FIELD_NUM=`tail $LOG_FILE -n 100 | grep " m " | head -n1 | awk -F "-" '{ print $2 }' | awk -F "," '{ print NF }'`

while [ $FIELD_NUM -ne 0 ]
do
	WORD=`tail $LOG_FILE -n 100 | grep " m " | head -n1 | awk -F "-" '{ print $2 }' | awk -F "," '{ print $(expr '$FIELD_NUM') }' |awk '{ print $1 }'`
        FLAG=`tail $LOG_FILE -n 100 | awk -F $WORD '{ print $2 }' | awk -F "," '{ print $1 }' | grep -v '^\s*$' | awk '{ print $1 }' | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})*)?m//g" | grep ^"0.00" | head -n1`

	if [ $FLAG ]; then
		/root/ethminer-kick-screen.sh
		#/sbin/reboot
	else
		:
	fi

	FIELD_NUM=`expr $FIELD_NUM - 1`
done

