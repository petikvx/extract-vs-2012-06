#!/bin/sh
while true
 do
  CLASSB=`./randb`
  rm -rf bindname.log
  ./pscan-bind $CLASSB 53 >>/dev/null
  ./bindscan >>/dev/null
done       
