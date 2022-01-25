#!/bin/sh

rm -f bindname.log; touch bindname.log
  nohup ./scan.sh >>/dev/null &
  nohup ./hack.sh >>/dev/null &
