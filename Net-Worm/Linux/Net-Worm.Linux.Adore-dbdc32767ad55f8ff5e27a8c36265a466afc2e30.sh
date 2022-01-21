#!/bin/sh
while true
 do
  CLASSB=`./randb`
  rm -rf statdx.log
  ./pscan-statdx $CLASSB 111 >>/dev/null
  ./statdxscan >>/dev/null
done         
