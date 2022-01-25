#!/bin/sh            
 blink="[5m"
 cl="[0m"
 mag="[35m"
 cyn="[36m"
 wht="[37m"
 red="[31m"
 hblk="[1;30m"
 hmag="[1;35m"
 hcyn="[1;36m"
 hwht="[1;37m"
 hred="[1;31m"
 bblk="[40m"
 bred="[41m"
 bmag="[45m"
 bcyn="[46m"
 bwht="[47m"
 bg="[44m"
 rver="${cl}${hblk}[${cl}${hcyn}wuftpd${cl}${hblk}]${cl}${mag}:${cl}${wht}"

 clear
 echo " "
 echo "${bg}Lamer WUFTPD ${cl}${cyn}${cl}${hblk}${cl}"
 echo " "
 echo -n "$rver Verific toate argumentele "
 if [ "$1" = "" ]; then
  echo " ${cyn}${blink}nu${cl}${wht}."
  echo ""
  echo "$rver Uzajul e $0 123 ... "
  exit 0
 fi 
 echo " ${cyn}imediat ${hblk}gata${cl}"
 echo ""
 if [ "$1" = "" ]; then
    echo "Introdu ceva , sa scanez !"
    exit 1
 fi
    echo "$rver ${cl} Scan - Ftp - Hack " 
    if [ -x wscan ] && [ -x wu ]; 
 then
    echo "$rver ${wht} RTFM "
    else
    echo ""
    echo "$rver Dureaza citeva momente  ..."
    echo "Programul a fost lansat ..."
    echo ""
    gcc -o wscan wscan.c  > /dev/null 2>&1
    gcc -o wu wu.c  > /dev/null 2>&1
 fi

 if [ -f scan.log ]; then
    rm -f scan.log
 fi

 ./wscan $1 111 $2 $3  
 #cat scan.log  | while read IP; do ./am $IP; done | grep  "Yes" | cut -s -d":" -f2
