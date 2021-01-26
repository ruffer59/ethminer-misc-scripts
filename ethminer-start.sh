#script -c "/usr/local/bin/ethminer -P stratum://<nanopool wallet address>@<nano pool server name>:9999/<machine name>/<account name@domain.com, @ = %40>" /dev/nul | tee ethminer-work_`date "+%Y%m%d_%H%M%S"`.log
script -c "/usr/local/bin/ethminer -P stratum://xxxxxxxx@eth-asia1.nanopool.org:9999/mainer1/example_email_address%40domain.com" /dev/nul | tee ethminer-work_`date "+%Y%m%d_%H%M%S"`.log


