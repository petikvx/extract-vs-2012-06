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

echo "Running services on $1: " >>$rlog
nmap -sT -P0 -p 98,1080,1090,15,21,22,23,53,67,79,80,109,110,111,137,138,139,143,161,212,513,514,515,6000,6667,2766,1080,1090,7902,8080,8000 $1 1>.services.tmp 2>.services.tmp 

/usr/sbin/rpcinfo -p $1 1>.rpcinfo.tmp 2>.rpcinfo.tmp &
sleep 15
killall -q9 rpcinfo 1>/dev/null 2>/dev/null
if [ $? -eq 0 ]; then
 rpcinfo="1"
 rpcinfolog="Yes: ${cyn}Done${hblk}....${cl}"
fi
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

cat .services.tmp | grep "98      open        tcp       linuxconf" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 lc="1"
 lclog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Linuxconf vulnerability: $lclog" >>$rlog

nc $1 22 1>.ssh.tmp 2>.ssh.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .ssh.tmp | grep "SSH-1.5-1.2.27" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 ssh="1"
 sshlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for SSH-1.5-1.2.27: $sshlog" >>$rlog

cat .rpcinfo.tmp | grep "100232" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 sad="1"
 sadlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for sadmin vulnerability: $sadlog" >>$rlog

cat .services.tmp | grep -i "21      open" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 ftp="1"
 ftplog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for ftp services: $ftplog" >>$rlog

./anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "wu-2.4" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 wuvuln="1"
fi
if [ "$wuvuln" = "1" ]; then
 wuvulnflog="Yes: ${cyn}possible${cl} $1"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "wu-2.4"
 fi
 if [ "$verbose" != "1" ]; then
  echo ""
 fi
fi
echo "version of wu-ftpd: $wuvulnflog [`cat .ftp.tmp | grep "wu-2.4.2"`]" >>$rlog

./anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "ProFTPD" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 provuln="1"
fi
if [ "$provuln" = "1" ]; then
 provulnflog="Yes: ${cyn}possible${cl} $1"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "ProFTPD"
 fi
 if [ "$verbose" != "1" ]; then
  echo ""
 fi
fi
echo "version of ProFTPD: $provulnflog [`cat .ftp.tmp | grep "ProFTPD"`]" >>$rlog

./anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "Serv-U" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 uvuln="1"
fi
if [ "$uvuln" = "1" ]; then
 uvulnflog="Yes: ${cyn}possible${cl}"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "Serv-U"
 fi
 if [ "$verbose" != "1" ]; then
  echo ""
 fi
fi
echo "version of Serv-U: $uvulnflog 
[`cat .ftp.tmp | grep "Serv-U"`]" >>$rlog

./anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "glFtpD" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 uvuln="1"
fi
if [ "$uvuln" = "1" ]; then
 uvulnflog="Yes: ${cyn}possible${cl} $1"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "glftpd"
 fi
 if [ "$verbose" != "1" ]; then
  echo ""
 fi
fi
echo "version of glftpd: $uvulnflog
[`cat .ftp.tmp | grep "glFtpD"`]" >>$rlog
 
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

nc $1 119 1>.innd.tmp 2>.innd.tmp & 
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .innd.tmp | grep "NNRP" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 innd="1"
 inndlog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Innd Vulnerability: $inndlog" >>$rlog

ftp $1 110 1>.pop.tmp 2>.pop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .pop.tmp | grep "+OK POP3" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 pop="1"
 poplog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Pop3d: $poplog" >>$rlog

ftp $1 110 1>.qpop.tmp 2>.qpop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .qpop.tmp | grep "2.2" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
 qpoplog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Qpop 2.2 : $qpoplog" >>$rlog

cat .qpop.tmp | grep "2.4" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
 qpoplog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Qpop 2.4 : $qpoplog" >>$rlog

nc $1 143 1>.imapd.tmp 2>.imapd.tmp & 
sleep 5
killall -q9 nc 1>/dev/null 2>/dev/null
cat .imapd.tmp | grep "IMAP4rev1 v" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 imapd="1"
 imapdlog="Yes: ${cyn}possible${cl} $1"
fi
echo "Checking for Imadp Vulnerability: $imapdlog" >>$rlog

cat .services.tmp | grep "listen" 1>.nlps.tmp 2>.nlps.tmp   
cat .nlps.tmp | grep "2766    open        tcp       listen" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 nlps="1"
 nlpslog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Listen Vulnerability: $nlpslog" >>$rlog

cat .services.tmp | grep "8080" 1>.proxy.tmp 2>.proxy.tmp
cat .proxy.tmp | grep "8080" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 proxy="1"
 proxylog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Proxies: $proxylog" >>$rlog

cat .services.tmp | grep -i "socks" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 wingate="1"
 wingatelog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Wingates: $wingatelog" >>$rlog

cat .services.tmp | grep "161    open" 1>.snmp.tmp 2>.snmp.tmp
cat .snmp.tmp | grep "161    open" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 snmp="1"
 snmplog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Snmp vulnerability: $snmplog" >>$rlog

cat .services.tmp | grep "79      open        tcp       finger" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 cat .services.tmp 1>.finger.tmp 2>.finger.tmp &
 cat .services.tmp | grep -i "79      open        tcp" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  finger="1"
 fi
fi
if [ "$finger" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo ""
 fi
 fingerlog="Yes: ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
echo " ${cyn}right ${hblk}on ${cl} $1"
 fi
fi
echo "Checking for Finger service: $fingerlog" >>$rlog

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
 pcnlog=" ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
echo ""
 fi
fi
echo "Checking for pcnfsd vulnerability: $pcnlog" >>$rlog

cat .services.tmp | grep "domain" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 ./binfo-udp $1 1>.binfo.tmp 2>.binfo.tmp
 bindver=`cat .binfo.tmp | cut -d: -f2`
 bindvuln="0" 
 echo "$bindver" | grep -i "4.9.5-REL" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="4.9.5-REL"
 fi
 echo "$bindver" | grep -i "4.9.5-P1" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="4.9.5-P1"
 fi
 echo "$bindver" | grep -i "4.9.6-REL" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="4.9.6-REL"
 fi
 echo "$bindver" | grep -i "8.1-REL" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="4.9.5-REL"
 fi
 echo "$bindver" | grep -i "4.9.3-P1" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="4.9.3-P1"
 fi
 echo "$bindver" | grep -i "8.2" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="8.2"
 fi
 echo "$bindver" | grep -i "8.2.1" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="8.2.1"
 fi
 echo "$bindver" | grep -i "8.8.1-REL" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  bindvuln="1"
  bindver="8.1.1-REL"
 fi
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
 bindflog="Yes: "$1 [$bindver]""
fi
echo "Yes: bind version: $bindflog [$bindver]" >>$rlog

cat .rpcinfo.tmp | grep -i "mountd" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 mnta="1"
 mntflog="Yes: Yes Possible try madm $1"
fi
echo "Checking for rpc.mountd vulnerability(s): $mntflog" >>$rlog

/usr/sbin/showmount -e $1 1>.mnt2.tmp 2>.mnt2.tmp &
sleep 4
killall -q9 showmount 1>/dev/null 2>/dev/null
cat .mnt2.tmp | grep "everyone" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 expvuln="1"
fi
cat .mnt2.tmp | grep "/" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 expvuln="1"
fi
if [ "$expvuln" = "1" ]; then
echo "Yes: ${cyn}right ${hblk}on${cl}
${cyn}$1"${cl}${hblk}
cat .mnt2.tmp | grep "/"
 expflog="Yes: ${cyn}right ${hblk}on${cl} 
$1 
`cat .mnt2.tmp | grep "/"` "
fi
echo "Checking for vulnerable export(s): $expflog" >>$rlog

./iquery $1 1>.iq.tmp 2>.iq.tmp &
sleep 5
killall -q9 iquery 1>/dev/null 2>/dev/null
cat .iq.tmp | grep "exploit code" >/dev/null 2>&1
if [ $? -eq 0 ]; then
echo ""
 iqvuln="1"
 iqflog="Yes: ${cyn}right ${hblk}on${cl} $1"
fi
echo "dns iquery vulnerability:$iqflog" >>$rlog

cat .services.tmp | grep "irc" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 cat .services.tmp 1>.irc.tmp 2>.irc.tmp &
cat .services.tmp | grep -i "irc" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  irc="1"
 fi
fi
if [ "$irc" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo ""
 fi
 irclog="Yes: ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
echo ""
 fi
fi
echo "Checking for irc service: $irclog${cl}" >>$rlog

nc $1 67 1>.bootp.tmp 2>.bootp.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .bootp.tmp | grep -i "connected" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 btpflog="Yes: ${cyn}right ${hblk}on${cl} $1"
 btpvuln="1"
fi
echo "Yes: $btpflog"
echo "BOOTP server running on tcp/67:$btpflog" >>$rlog

cat .rpcinfo.tmp | grep "stat" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 sdflog="Yes: ${cyn}right ${hblk}on${cl} $1"
 sdvuln="1"
fi
echo "Yes: $sdflog"
echo "RPC/Statd running on host:$sdflog" >>$rlog

(echo "GET /" ; sleep 5) | nc -w 6 $1 80 1>.www.tmp 2>.www.tmp
cat .www.tmp | grep -i "<" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 httpdflog="Yes: ${cyn}right ${hblk}on${cl} $1"
 httpd="1"
fi
hver=`(echo "HEAD / HTTP/1.0"; echo; echo) | nc -w 3 $1 80 | grep -i "Server:" | cut -d: -f2`
echo "Running httpd: $httpdflog.$hver" >>$rlog
echo "$rline" >>$rlog
if [ "$httpd" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo ""
 fi
 httpdflog="Yes: ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
 if [ "$hver" = "" ]; then
  hver="unavailable"
 fi
 echo " $hver"
 fi
fi
echo "$rline" >>$rlog
cat $rlog | grep -i "Yes" > $rlog
# start the view log
echo ""
