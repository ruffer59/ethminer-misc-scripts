#
# /proc/net/dev の Transmit bytes 列をログに書き出すスクリプト
#
PATH="/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin"

# インターネット通信に使われているNIC名を設定
NIC="wlx"

# ログの出力先
LOG="/var/log/bytes_receive.log"

# 実行日時
AT=`date '+%Y-%m-%d %H:%M:%S'`

# Transmit bytes の値を切り出し
TX=`cat /proc/net/dev | grep $NIC | sed -e 's/:/ /' | awk '{print $1,$2}'  | tr '\n' ' ' | sed -e "s/\$/\\n/"`

# ログファイルへ出力
echo "${AT} ${TX}" >> $LOG

exit 0

