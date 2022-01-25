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
rver="${cl}${hblk}[${cl}${hcyn}Ftpd ${cl}${cyn}class${cl}${hblk}a${cl}${hblk}]${cl}${mag}:${cl}${wht}"

clear
echo " "
echo "${cyn}http${hblk}:${cyn}//${hblk}www${cyn}.${hblk}rohackers${cl}${cyn}.${cl}${hblk}info${cl}${cyn}${cl}${hblk}${cl}"
echo " "
echo "${cl}${cyn}----${cl}${hblk}[${cl}${cyn}daddy${cl}${hblk}@${cl}${cyn}prietenii${cl}${hblk}${cl}.${cyn}${cl}com${hblk}]${cl}${cyn}----" 
echo " "
echo -n "$rver Acum incercam sa vedem daca puteam roota."
if [ "$1" = "" ]; then
 echo " ${cyn}${blink}no${cl}${wht}."
 echo ""
 echo "$rver usage is $0 123 .Pentrru al folosi trebuie sa da-ti urmatoarea comanda de ex:./r00t 65 23. "
 exit 0
fi
echo " ${cyn}right ${hblk}on${cl}"
echo ""

if [ "$1" = "" ]; then
   echo "Introducetzi clasa dorita (A,B,C) ptr a scana ."
   exit 1
fi
   echo "$rver class a ${cl}${hblk} wu-ftpd${cl}${cyn}${cl}${hblk} scaner${cl}${cyn} de ${cl}${hblk}daddy_cad" 
   if [ -x luckscan ] && [ -x luckstatdx ]; then
   echo "$rver Statdx class A scanner-cnxhack"
   else
   echo ""
   echo "$rver Pentru fiecare rutare va fi un timp de maxim 10secunde.."
   echo "My master is daddy_cad:daddy@prietenii.com"
   echo "Greeting to :RHC Team ( Hacking Team http://rohackers.info) !"
   echo ""
   gcc -o sc sc.c  > /dev/null 2>&1
fi

if [ -f scan.log ]; then
   rm -f scan.log
fi

./sc $1 21 $2 $3
#cat scan.log  | while read IP; do ./am $IP; done | grep  "Yes" | cut -s -d":" -f2
 
