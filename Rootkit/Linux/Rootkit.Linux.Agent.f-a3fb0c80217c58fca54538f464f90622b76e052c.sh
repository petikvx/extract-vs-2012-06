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
echo "${cyn}http${hblk}:${cyn}//${hblk}www${cyn}.${hblk}self-evident${cyn}.${hblk}com${cyn}/${cl}"

#echo -n "$rver setting local script variables.."
rlog="$2"
if [ "$3" != "" ]; then
 verbose="1"
fi
if [ "$2" = "" ]; then
 rlog="$1.log"
fi

# start the remote scans
if [ -f $rlog ]; then
 mv $rlog $rlog.old 1>/dev/null 2>/dev/null
fi 
rline="${hblk}-=-=-=-=-=-=-=${cl}${cyn}V${cl}${hblk}=${cl}${cyn}S${cl}${hblk}=${cl}${cyn}C${cl}${hblk}=${cl}${cyn}A${cl}${hblk}=${cl}${cyn}N${cl}${hblk}=-=${cl}${cyn}T${cl}${hblk}=${cl}${cyn}C${cl}${hblk}=${cl}${cyn}L${cl}${hblk}=-=-=-=-=-=-=-=-=-=-=-=-"
echo "" >>$rlog
echo "$rline" >>$rlog 

/usr/sbin/rpcinfo -p $1 1>.rpcinfo.tmp 2>.rpcinfo.tmp &
sleep 15
killall -q9 rpcinfo 1>/dev/null 2>/dev/null
echo "Checking for rpcinfo services: $rpcinfolog" >>$rlog

cat .rpcinfo.tmp | grep "100068" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 cmsd="1"
 cmsdlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for rpc.cmsd vulnerability: $cmsdlog" >>$rlog

cat .rpcinfo.tmp | grep "8000" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 ol="1"
 ollog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for OpenLink 3.2 vulnerability: $ollog" >>$rlog

cat .rpcinfo.tmp | grep "300019" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 amd="1"
 amdlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for amd vulnerability: $amdlog" >>$rlog

cat .rpcinfo.tmp | grep "100232" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 sad="1"
 sadlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for sadmin vulnerability: $sadlog" >>$rlog

cat .rpcinfo.tmp | grep "100083" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 ttdb="1"
 ttdblog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for rpc.ttdbserverd vulnerability: $ttdblog" >>$rlog

cat .rpcinfo.tmp | grep "100024" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 stat="1"
 statlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for status vulnerability: $statlog" >>$rlog

cat .rpcinfo.tmp | grep "100300" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 nisd="1"
 nisdlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for rpc.nisd vulnerability: $nisdlog" >>$rlog

cat .rpcinfo.tmp | grep "2049" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 nfsd="1"
 nfsdlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for nfsd vulnerability: $nfsdlog" >>$rlog

cat .rpcinfo.tmp | grep "autofs" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 fsd="1"
 fsdlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for autofsd vulnerability: $fsdlog" >>$rlog

cat .rpcinfo.tmp | grep "7902" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 dope="1"
 dopelog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for dopewars vulnerability: $dopelog" >>$rlog

cat .rpcinfo.tmp | grep -i "pcn" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 cat .rpcinfo.tmp | grep -i "pcn" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  pcn="1"
 fi
fi
if [ "$pcn" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo ""
 fi
 pcnlog="Yes: ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
echo ""
 fi
fi
echo "Checking for pcnfsd vulnerability: $pcnlog" >>$rlog

cat .rpcinfo.tmp | grep -i "mountd" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 mnta="1"
 mntflog="Yes: try madm $1"
fi
echo "Checking for rpc.mountd vulnerability(s): $mntflog" >>$rlog

cat .rpcinfo.tmp | grep "stat" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 sdflog="Yes: ${cyn}right ${hblk}on${cl} $1"
 sdvuln="1"
fi
echo "RPC/Statd running on host:$sdflog" >>$rlog
echo "Yes: $rline" >>$rlog
cat $rlog | grep -i "Yes" > $rlog
# start the view log
echo ""
