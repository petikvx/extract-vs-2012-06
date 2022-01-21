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
rver="${cl}${hblk}[${cl}${hcyn}Ve${cl}${cyn}te${cl}${hblk}sCan${hblk}]${cl}${mag}:${cl}${wht}"

clear
echo " "
echo "${cyn}http${hblk}:${cyn}//${hblk}www${cyn}.${hblk}self-evident${cyn}.${hblk}com${cyn}/${cl}"
echo " "

#echo -n "$rver setting local script variables.."
rlog="$2"
if [ "$3" != "" ]; then
 verbose="1"
fi
if [ "$2" = "" ]; then
 rlog="$1.log"
fi

# start the remote scans
echo ""
if [ -f $rlog ]; then
 mv $rlog $rlog.old 1>/dev/null 2>/dev/null
fi
rline="-=-=-=-=-=-=-=V=S=C=A=N=-=T=C=L=-=-=-=-=-=-=-=-=-=-=-=-"
echo "" >>$rlog
#echo "New scan against $1 started at `date`" >>$rlog
echo "$rline" >>$rlog 

nmap -sT -P0 -p 53 $1 1>.services.tmp 2>.services.tmp
sdone="1"
if [ ! -f .services.tmp ]; then
 echo " bitch said no"
 sdone="0"
fi
if [ "$sdone" = "1" ]; then
 echo ""
fi
if [ "$verbose" = "1" ]; then
cat .services.tmp | grep "Interesting"
fi

cat .services.tmp | grep "domain" >/dev/null 2>&1
if [ $? -eq 0 ]; then
./binfo-udp $1 1>.binfo.tmp 2>.binfo.tmp
 bindver=`cat .binfo.tmp | cut -d: -f2`
# rm .binfo.tmp
 bindvuln="0"
 echo "$bindver" | grep -i "8.2" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="8.2"
 fi
 echo "$bindver" | grep -i "8.2.1" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver= "8.2.1"
 fi
 echo "$bindver" | grep -i "4.9.7-REL" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver= "4.9.7-REL"
 fi
 echo "$bindver" | grep -i "8.1.2" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver= "8.1.2"
 fi
if [ "$bindvuln" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo "Yes: $1 [$bindver]"
 fi
 bindflog=" "
 if [ "$verbose" = "1" ]; then
 echo "Yes: $1" "[$bindver]"
 fi
fi
if [ "$bindvuln" != "1" ]; then
 echo ""
 bindflog=""
fi
fi
echo "Yes: bind version: $bindflog [$bindver]" >>$rlog
cat $rlog | grep -i "Yes:" > $rlog
# start the view log
echo ""

