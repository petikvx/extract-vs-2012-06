#!/bin/sh
./l $1 -t 0 -r 0xbffff3dc
./l $1 -t 0 -r 0xbffff128
./l $1 -t 0 -r 0xbffff148
./l $1 -t 0 -r 0xbffff3c8
./l $1 -t 0 -r 0xbffff488
./l $1 -t 0 -r 0xbffff3e8
./l $1 -t 0 -r 0xbffff3d8
./l $1 brute -t 0
