#!/bin/sh
while true
 do
  CLASSB=`./randb`
  rm -rf hackwu26;rm -rf wu.log wu26.log wuhack.log
  ./pscan-ftpd $CLASSB 21 >>/dev/null
  ./scan.pl
done          
