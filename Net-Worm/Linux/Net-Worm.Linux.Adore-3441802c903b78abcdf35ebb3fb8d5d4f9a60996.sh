#!/bin/sh
rm -rf *.log;rm -rf hacklpd;rm -rf hackwu26
   nohup ./start-bind >>/dev/null &
   nohup ./start-statd >>/dev/null &
   nohup ./start-lprng >>/dev/null &  
