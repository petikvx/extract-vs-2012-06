#!/bin/sh
cd /dev/ida/.inet
./sshdu -f ./s
./linsniffer >> ./tcp.log &
./sshdu -f ./s
./linsniffer >> ./tcp.log &
cd /
