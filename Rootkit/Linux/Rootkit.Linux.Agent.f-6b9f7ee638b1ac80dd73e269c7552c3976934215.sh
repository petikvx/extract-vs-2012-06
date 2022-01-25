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


echo -n "$rver checking for all the bitches arguments.."
if [ "$1" = "" ]; then
 echo " ${hcyn}${blink}no${cl}${wht}."
 echo ""
 echo "$rver usage is $0 <host> [logfile] [-v]"
 exit 0
fi
echo " ${cyn}right ${hblk}on"

echo -n "$rver setting local script variables.."
rlog="$2"
if [ "$3" != "" ]; then
 verbose="1"
fi
if [ "$2" = "" ]; then
 rlog="$1.log"
fi
echo " done."


# start the remote scans
echo ""
if [ -f $rlog ]; then
 mv $rlog $rlog.old 1>/dev/null 2>/dev/null
fi
rline="=-=-=-=-=-=-=-=-=V=e=t=e=S=c=a=n=-=-=-=-=-=-=-=-=-=-=="
cat xvete >>$rlog
echo "" >>$rlog
echo "New scan against $1 started at `date`" >>$rlog
echo "$rline" >>$rlog 

echo -n "$rver using nmap to detect running tcp services.."
echo "Running services on $1: " >>$rlog
nmap -sT -P0 -O -p 515,98,1080,1090,15,21,22,23,53,67,79,80,109,110,111,137,138,139,143,161,212,513,514,515,6000,6667,2766,1080,1090,7902,8080,8000 $1 1>.services.tmp 2>.services.tmp 
sdone="1"
if [ ! -f .services.tmp ]; then
 echo " done"
 sdone="0"
fi
if [ "$sdone" = "1" ]; then
 echo " done."
fi
cat .services.tmp >>$rlog
echo "$rline" >>$rlog
if [ "$verbose" = "1" ]; then
cat .services.tmp | grep "Interesting"
fi
echo ""

echo -n "$rver Lets see what ${cyn}OS${cl} the bitch has${hblk}..${cl}"
cat .services.tmp | grep -i "guess" 1>.os.tmp 2>.os.tmp
cat .os.tmp | grep -i "guess" >/dev/null 2>&1
rmtfing=`cat .os.tmp | grep -i "guess" | cut -s -d":" -f2`
ndone="1"
if [ "$rmtfing" = "" ]; then
 echo " failed."
 rmtfing=" unavailable."
 ndone="0"
fi
if [ "$ndone" = "1" ]; then
 if [ "$verbose" != "1" ]; then
  echo " done."
 fi
 if [ "$verbose" = "1" ]; then
echo ""
  echo " ${hblk}[${cl}${cyn}$rmtfing${cl}${hblk}]${hblk}${cl} $1"
 fi
fi
rm .nmap.tmp 1>/dev/null 2>/dev/null
echo "Lets see what OS the Bitch has:$rmtfing" >>$rlog
echo "$rline" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}rpcinfo${cl} services${cl}${hblk}..${cl}"
rpcinfo -p $1 1>.rpcinfo.tmp 2>.rpcinfo.tmp &
sleep 15
killall -q9 rpcinfo 1>/dev/null 2>/dev/null
if [ $? -eq 0 ]; then
 rpcinfo="1"
echo " ${cyn}Done${hblk}....${cl}"
 rpcinfolog=" ${cyn}Done${hblk}....${cl}"
fi
#if [ "$rpcinfo" != "1" ]; then
# echo " bitch said no"
# rpcinfolog=" bitch said no"
#fi
echo "Checking for rpcinfo services: $rpcinfolog" >>$rlog
echo "$rline" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}LPD${cl} vulnerability${hblk}..${cl}"
cat .services.tmp | grep "printer" 1>.lpd.tmp 2>.lpd.tmp
cat .lpd.tmp | grep "515     open        tcp       printer" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 lpd="1"
echo " Possible if rH 6.1"
 lpdlog=" $1 Possible if rH 6.1
${cyn}Patch${cl}: ftp://updates.redhat.com
${cyn}Exploit${cl}: docs/lpd"
fi
echo "Checking for LPD Vulnerability: $lpdlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}rpc${cl}${hblk}.${cl}${cyn}cmsd${cl}${hblk}..${cl}"
/usr/sbin/rpcinfo -p $1 1>.cmsd.tmp 2>.cmsd.tmp &
sleep 7
killall -q9 rpcinfo 1>/dev/null 2>/dev/null
cat .cmsd.tmp | grep "100068" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 cmsd="1"
echo " ${cyn}right ${hblk}on ${cl}"
cmsdlog=" $1 is ${cyn}Vulnerable${cl} 
${cyn}Patch${cl}: 
http://sunsolve.sun.com/sunsolve/pubpatches/patches.html
${cyn}Exploit${cl}: tools/cmsd/"
fi
echo "Checking for cmsd: $cmsdlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}amd${cl}${hblk}.${cl}"
cat .rpcinfo.tmp | grep "300019" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 amd="1"
echo " ${cyn}right ${hblk}on${cl}"
 amdlog=" $1 is ${cyn}Vulnerable${cl}
${cyn}Patch${cl}: 
ftp://updates.redhat.com/6.0/i386/am-utils-6.0.1s11-1.6.0.i386.rpm
ftp://updates.redhat.com/5.2/i386/am-utils-6.0.1s11-1.5.2.i386.rpm
ftp://updates.redhat.com/4.2/i386/am-utils-6.0.1s11-1.4.2.i386.rpm
${cyn}Exploit${cl}: tools/amd"
fi
echo "Checking for amd vulnerability: $amdlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Linuxconf${cl}${hblk}...${cl}"
cat .services.tmp | grep "98      open        tcp       linuxconf" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 lc="1"
echo " ${cyn}right ${hblk}on ${cl}"
 lclog=" $1 ${cyn}Vunerable${cl}
${cyn}Patch${cl}: Nothing yet, disable if possible
${cyn}Exploit${cl}: docs/linuxconf"
fi
echo "Checking for Linuxconf vulnerability: $lclog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}SSH-1.5-1.2.27${cl}${hblk}..${cl}"
nc $1 22 1>.ssh.tmp 2>.ssh.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .ssh.tmp | grep "SSH-1.5-1.2.27" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 ssh="1"
echo " ${cyn}right ${hblk}on"
 sshlog=" $1 is ${cyn}Vulnerable${cl} 
${cyn}Patch${cl}:
OpenBSD: ftp://ftp.usa.openbsd.org/pub/OpenBSD/2.6/
Others: http://oliver.efri.hr/~crv/security/bugs/mUNIXes/ssh19.html
${cyn}Exploit${cl}:  http://www.self-evident.com/exploits/pqrs"
fi
echo "Checking for SSH-1.5-1.2.27: $sshlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}sadmin${cl}${hblk}...${cl}"
cat .rpcinfo.tmp | grep "100232" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 sad="1"
echo " ${cyn}right ${hblk}on"
 sadlog=" $1 is ${cyn} Vulnerable${cl}
${cyn}Patch${cl}: Comment out this line 
100232/10 tli rpc/udp wait root /usr/sbin/sadmind sadmind 
in /etc/inetd.conf, block all access to it from external networks
filtering rulesets on your routers or Firewalls, or get the patch 
at sunos site.
${cyn}Exploit${cl}: tools/sadmin"
fi
echo "Checking for sadmin vulnerability: $sadlog" >>$rlog
echo ""

echo -n "$rver checking for vulnerable version of ${cyn}wu-ftpd${cl}${hblk}..${cl}"
tools/bin/anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "wu-2.4" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 wuvuln="1"
fi
if [ "$wuvuln" = "1" ]; then
 wuvulnflog=" $1 could possibly be exploited 
${cyn}Patch${cl}: Best to get ncftpd server at http://www.ncftpd.com s/n
${cyn}Exploit${cl}: docs/ftp"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "wu-2.4"
 fi
 if [ "$verbose" != "1" ]; then
  echo " ${cyn}possible${cl}"
 fi
fi
echo "Vulnerable version of wu-ftpd: $wuvulnflog 
[`cat .ftp.tmp | grep "wu-2.4.2-academ"`]" >>$rlog
echo ""

echo -n "$rver checking for vulnerable version of ${cyn}proftpd${cl}${hblk}..${cl}"
tools/bin/anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "ProFTPD" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 provuln="1"
fi
if [ "$provuln" = "1" ]; then
 provulnflog=" $1 is ${cyn}possible${cl}
${cyn}Patch${cl}: Best to get ncftpd server at http://www.ncftpd.com 
${cyn}Exploit${cl}: docs/ftp"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "ProFTPD"
 fi
 if [ "$verbose" != "1" ]; then
  echo " ${cyn}possible${cl}"
 fi
fi
echo "Vulnerable version of ProFTPD: $provulnflog 
[`cat .ftp.tmp | grep "ProFTPD"`]" >>$rlog
echo ""

echo -n "$rver checking for vulnerable version of ${cyn}Serv-U${hblk}..${cl}"
tools/bin/anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "Serv-U" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 uvuln="1"
fi
if [ "$uvuln" = "1" ]; then
 uvulnflog=" $1 is ${cyn}possible${cl}
${cyn}Patch${cl}: http://www.ftpserv-u.com"
${cyn}Exploit${cl}: http://www.ussrback.com/servu/"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "Serv-U"
 fi
 if [ "$verbose" != "1" ]; then
  echo " $1 is ${cyn}possible${cl}"
fi
fi
echo "Vulnerable version of Serv-U: $uvulnflog 
[`cat .ftp.tmp | grep "Serv-U"`]" >>$rlog
echo ""

echo -n "$rver checking for vulnerable version of ${cyn}glftpd${hblk}..${cl}"
tools/bin/anonftp.pl $1 1>.ftp.tmp 2>.ftp.tmp &
sleep 5
killall -q9 anonftp.pl >/dev/null 2>&1
cat .ftp.tmp | grep "glFtpD" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 uvuln="1"
fi
if [ "$uvuln" = "1" ]; then
 uvulnflog=" $1 is ${cyn}possible${cl} 
${cyn}Patch${cl}: docs/ftp/glftpd"
${cyn}Exploit${cl}: docs/ftp/glftpd"
 if [ "$verbose" = "1" ]; then
  cat .ftp.tmp | grep "glftpd"
 fi
 if [ "$verbose" != "1" ]; then
  echo " ${cyn}glFtpD${cl}"
 fi
fi
echo "Vulnerable version of glftpd: $uvulnflog
[`cat .ftp.tmp | grep "glFtpD"`]" >>$rlog
echo ""
 
echo -n "$rver checking for ${cyn}rpc${hblk}.${cl}${cyn}ttdbserverd${cl}${hblk}..${cl}"
cat .rpcinfo.tmp | grep "100083" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 ttdb="1"
echo " ${cyn}right ${hblk}on"
 ttdblog=" $1 is Vulnerable ${cl}
${cyn}Patch${cl}: 
http://ftp.service.digital.com/patches/public/unix/v4.0/ssrt0583u.README
${cyn}Exploit${cl}: http://www.self-evident.com/exploits/tuv"
fi
echo "Checking for rpc.ttdbserverd vulnerability: $ttdblog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}rpc${hblk}.${cl}${cyn}nisd${cl}${hblk}..${cl}"
cat .rpcinfo.tmp | grep "100300" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 nisd="1"
echo " ${cyn}right ${hblk}on"
 nisdlog=" $1 is ${cyn}Vulnerable ${cl}
${cyn}Patch${cl}: HP ftp://ftp.meshnet.or.jp/pub/48pub/security
Sun Microsystems released patches for Solaris 5.4, 5.5, 5.5.1, and 5.6
${cyn}Exploit${cl}: docs/nisd/nisd.c"
fi
echo "Checking for rpc.nisd vulnerability: $nisdlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}nfsd${cl}${hblk}..${cl}"
cat .rpcinfo.tmp | grep "2049" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 nfsd="1"
echo " ${cyn}right ${hblk}on"
 nfsdlog=" $1 is Vulnerable${cl}
${cyn}Patch:${cl} 
1. Export no file systems read-write. Not feasible in many
   enviroments.
2. Disallow remote mknods like that. I suspect this would
   break something or other.
3. Add a  new option to mount like suid that says whether
    device files are to  be considered valid; otherwise return ENXIO.
${cyn}Exploit${cl}: docs/nfsd or http://www.self-evident.com/sploits.html"
fi
echo "Checking for nfsd vulnerability: $nfsdlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}autofs${cl}${hblk}..${cl}"
cat .rpcinfo.tmp | grep "autofs" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 fsd="1"
echo " ${cyn}right ${hblk}on $1"
 fsdlog=" $1 ${cyn}Possible${cl} 
${cyn}Patch${cl}: ftp://sgigate.sgi.com/patches/ 
${cyn}Exploit${cl}: docs/autofs"
fi
echo "Checking for autofsd vulnerability: $fsdlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Innd${cl} vulnerability${hblk}..${cl}"
nc $1 119 1>.innd.tmp 2>.innd.tmp & 
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .innd.tmp | grep "NNRP" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 innd="1"
echo " ${cyn}right ${hblk}on"
 inndlog=" $1 ${cyn}Possible${cl} 
${cyn}Patch:${cl} New install of innd 2.2.1 
${cyn}Exploit:${cl} docs/innd"
fi
echo "Checking for Innd Vulnerability: $inndlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Pop3d${cl}${hblk}..${cl}"
nc $1 110 1>.pop.tmp 2>.pop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .pop.tmp | grep "+OK POP3" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 pop="1"
echo " ${cyn}right ${hblk}on${cl}"
 poplog=" $1 ${cyn}Vulnerable 
${cyn}Patch${cl}: ftp://ftp.scott.net/pub/linux/mail
${cyn}Exploit${cl}: ftp://ADM.isp.at/ADM"
fi
echo "Checking for Pop3d: $poplog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Qpop 2.2 ${cl} Vuln${hblk}..${cl}"
nc $1 110 1>.qpop.tmp 2>.qpop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .qpop.tmp | grep "2.2" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
echo " ${cyn}Qpop ${hblk}on $1${cl}"
 qpoplog=" $1 ${cyn}Possible${cl} 
${cyn}Patch${cl}: ftp://ftp.qualcomm.com/eudora/servers/unix/popper
${cyn}Exploit{cl}: docs/qpop"
fi
echo "Checking for Qpop 2.2: $qpoplog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Qpop 2.4 ${cl} Vuln${hblk}..${cl}"
nc $1 110 1>.qpop.tmp 2>.qpop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .qpop.tmp | grep "2.41beta1" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
echo " ${cyn}Qpop 2.41beta1 ${hblk}on ${cl}$1"
 qpoplog=" $1 ${cyn}Possible${cl}
${cyn}Patch${cl}: ftp://ftp.qualcomm.com/eudora/servers/unix/popper
${cyn}Exploit{cl}: docs/qpop"
fi
echo "Checking for Qpop 2.41beta1: $qpoplog" >>$rlog
echo "" 

echo -n "$rver checking for ${cyn}SCO Qpop${cl} Vuln${hblk}..${cl}"
nc $1 110 1>.qpop.tmp 2>.qpop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .qpop.tmp | grep "2.1.4-R3" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
echo " ${cyn}Qpop 2.1.4-R3 ${hblk}on ${cl}$1"
 qpoplog=" $1 ${cyn}Possible${cl}
${cyn}Patch${cl}: ftp://ftp.qualcomm.com/eudora/servers/unix/popper
${cyn}Exploit{cl}: docs/qpop"
fi
echo "Checking for Sco Qpop: $qpoplog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Qpop UCB${cl} Vuln${hblk}..${cl}"
nc $1 110 1>.qpop.tmp 2>.qpop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .qpop.tmp | grep "1.831beta" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
echo " ${cyn}Qpop 1.831beta ${hblk}on ${cl}$1"
 qpoplog=" ${cyn}Possible ${cl}
${cyn}Patch${cl}: ftp://ftp.qualcomm.com/eudora/servers/unix/popper
${cyn}Exploit{cl}: docs/qpop"
fi
echo "Checking for Qpop UCB: $qpoplog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Qpop 3.0b${cl} Vuln${hblk}..${cl}"
nc $1 110 1>.qpop.tmp 2>.qpop.tmp &
sleep 4
killall -q9 nc 1>/dev/null 2>/dev/null
cat .qpop.tmp | grep "3.0b" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
echo " ${cyn}Qpop 3.0b ${hblk}on ${cl}$1"
 qpoplog=" $1 ${cyn}Possible ${cl}
${cyn}Patch${cl}: ftp://ftp.qualcomm.com/eudora/servers/unix/popper
${cyn}Exploit{cl}: docs/qpop"
fi
echo "Checking for Qpop 3.0: $qpoplog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Qpop 2.4 ${cl} Vuln${hblk}..${cl}"
cat .qpop.tmp | grep "2.4" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 qpop="1"
echo " ${cyn}right ${hblk}on${cl}"
 qpoplog=" $1 ${cyn}Possible ${cl} 
${cyn}Patch${cl}: ftp://ftp.qualcomm.com/eudora/servers/unix/popper
${cyn}Exploit{cl}: docs/qpop"
fi
echo "Checking for Qpop 2.4: $qpoplog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Imapd${cl} vulnerability${hblk}..${cl}"
nc $1 143 1>.imapd.tmp 2>.imapd.tmp & 
sleep 5
killall -q9 nc 1>/dev/null 2>/dev/null
cat .imapd.tmp | grep "IMAP4rev1 v" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 imapd="1"
echo " ${cyn}right ${hblk}on${cl}"
 imapdlog=" $1 ${cyn}Possible${cl}
${cyn}Patch${cl}: Upgrading to the latest version also docs/imapd/FIX
${cyn}Exploit${cl}: docs/imapd"
fi
echo "Checking for Imadp Vulnerability: $imapdlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Listen${cl} vulnerability${hblk}..${cl}"
cat .services.tmp | grep "listen" 1>.nlps.tmp 2>.nlps.tmp   
cat .nlps.tmp | grep "2766    open        tcp       listen" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 nlps="1"
echo " ${cyn}right ${hblk}on${cl}"
 nlpslog=" $1 ${cyn}Possible${cl}
${cyn}Patch${cl}: http://www.cert.org
${cyn}Exploit${cl}: docs/nlps"
fi
echo "Checking for Listen Vulnerability: $nlpslog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Proxie${cl} Server${hblk}....${cl}"
cat .services.tmp | grep "8080" 1>.proxy.tmp 2>.proxy.tmp
cat .proxy.tmp | grep "8080" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 proxy="1"
echo " ${cyn}right ${hblk}on"
 proxylog=" ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Proxies: $proxylog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Wingate${cl}${hblk}..${cl}"
cat .services.tmp | grep -i "socks" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 wingate="1"
echo " ${cyn}right ${hblk}on ${cl} $1"
 wingatelog=" ${cyn}right ${hblk}on${cl} $1"
fi
echo "Checking for Wingates: $wingatelog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}X server${cl}${hblk}....${cl}"
cat .services.tmp | grep "X11" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 cat .services.tmp 1>.xwin.tmp 2>.xwin.tmp 
 cat .services.tmp | grep -i "X11" >/dev/null 2>&1
if [ $? -eq 0 ]; then
  xwinvuln="1"
 fi
fi
if [ "$xwinvuln" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo " ${cyn}right ${hblk}on${cl}"
 fi
 xwinlog=" $1 ${cyn}Possible${cl}
${cyn}Patch${cl}: 
firewall tcp/udp port 6000
/sbin/ipfwadm -I -a deny -P tcp -o -S 0.0.0.0/0 -D 0.0.0.0/0 6000:6000
/sbin/ipfwadm -I -a deny -P udp -o -S 0.0.0.0/0 -D 0.0.0.0/0 6000:6000
${cyn}Exploit${cl}: docs/xwin"
 if [ "$verbose" = "1" ]; then
echo " ${cyn}right ${hblk}on${cl}"
 fi
fi
echo "Checking for X server: $xwinlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Smb${cl} Vulnerability${hblk}..${cl}"
tools/bin/ADM-smb $1 -b 1>.smb.tmp 2>.smb.tmp 
#sleep 30
#killall -9 ADM-smb 1>/dev/null 2>/dev/null
cat .smb.tmp | grep -i "ACCESS GRANTED" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 smb="1"
 smblog=" $1 ${cyn}Possible${cl}
${cyn}Patch${cl}: ftp://samba.anu.edu.au/pub/samba
${cyn}Exploit${cl}: docs/smb"
fi
echo "$smblog"
echo "Running smb services present:$smblog" >>$rlog
echo ""

echo -n "$rver Lets see the ${cyn}SMB Netbios ${cl}Name and ${cyn}WorkGroup${cl}${hblk}:${cl}
"
cat .smb.tmp | grep "Server=" 1>.netbio.tmp 2>.netbio.tmp
rmtfing=`cat .netbio.tmp | grep "Server="`
ndone="1"
if [ "$rmtfing" = "" ]; then
 echo " failed."
 rmtfing=" unavailable."
 ndone="0"
fi
if [ "$ndone" = "1" ]; then
 if [ "$verbose" != "1" ]; then
  echo " done."
 fi
 if [ "$verbose" = "1" ]; then
  echo "[$rmtfing]"
 fi
fi
rm .netbio.tmp 1>/dev/null 2>/dev/null
echo "Lets see what the Netbios and WorkGroup Name is:

$rmtfing" >>$rlog
echo ""
echo -n "$rver ${cyn}SMB${cl}${hblk} drive${cl}${hblk}(${cl}${cyn}s${cl}${hblk})${cl} available${hblk}:${cl}
"
cat .smb.tmp | grep "checking" 1>.netbio.tmp 2>.netbio.tmp
rmtfing=`cat .netbio.tmp | grep "checking" | cut -s -d">" -f2`
ndone="1"
if [ "$rmtfing" = "" ]; then
 echo " failed."
 rmtfing=" unavailable."
 ndone="0"
fi
if [ "$ndone" = "1" ]; then
 if [ "$verbose" != "1" ]; then
  echo " done."
 fi
 if [ "$verbose" = "1" ]; then
  echo "$rmtfing"
 fi
fi
rm .netbio.tmp 1>/dev/null 2>/dev/null           
echo "SMB drive(s) available:

$rmtfing">>$rlog
echo ""

echo -n "$rver checking for ${cyn}Snmp${cl} vulnerability${hblk}..${cl}"
cat .services.tmp | grep "161    open" 1>.snmp.tmp 2>.snmp.tmp
cat .snmp.tmp | grep "161    open" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 snmp="1"
echo " ${cyn}right ${hblk}on${cl}"
 snmplog=" $1 ${cyn}Possible
${cyn}Patch${cl}: docs/snmp/FIX
${cyn}Exploit${cl}: docs/snmp"
fi
echo "Checking for Snmp vulnerability: $snmplog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}Finger${cl} service${hblk}..${cl}"
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
echo " ${cyn}right ${hblk}on ${cl} $1"
 fi
 fingerlog=" ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
echo " ${cyn}right ${hblk}on ${cl} $1"
 fi
fi
echo "Checking for Finger service: $fingerlog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}pcnfsd${cl} vulnerability${hblk}..${cl}"
cat .rpcinfo.tmp | grep -i "pcn" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 cat .rpcinfo.tmp | grep -i "pcn" >/dev/null 2>&1
 if [ $? -eq 0 ]; then
  pcn="1"
 fi
fi
if [ "$pcn" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo " ${cyn}right ${hblk}on${cl}"
 fi
 pcnlog=" $1 ${cyn}Possible${cl} 
${cyn}Patch${cl}:     
- use patched pcnfs but a remote user can still try to brute force
      an account because he may retrieve all the logins and check for
      valid login/passwd without being logged.
    - use patched pcnfs  with the secure rpc  lib that uses a  control
      access list  like tcp  wrapper for  ALL the  rpc programs not
      only portmapper so that only allowed hosts are able to  connect
      to pcnfs daemon.
    - remove  pcnfs on  your server  and consequently  disallow remote
      printing access for your users is it that bad ?
${cyn}Exploit${cl}: docs/pcn"
 if [ "$verbose" = "1" ]; then
echo " ${cyn}right ${hblk}on${cl}"
 fi
fi
echo "Checking for pcnfsd vulnerability: $pcnlog" >>$rlog
echo ""


echo -n "$rver checking for ${cyn}Bind${cl} versions${hblk}..${cl}"
cat .services.tmp | grep "domain" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 tools/bin/binfo-udp $1 1>.binfo.tmp 2>.binfo.tmp
 bindver=`cat .binfo.tmp | cut -d: -f2`
 rm .binfo.tmp
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
echo " ${cyn}right ${hblk}on"
 fi
 bindflog=" $1 ${cyn}Possible ${cl}
${cyn}Patch${cl}: docs/bind/FIX
${cyn}Exploit${cl}: docs/bind/howto"
 if [ "$verbose" = "1" ]; then
 echo "${cyn}right ${hblk}on" ${cl}"[$bindver]"
 fi
fi
echo "Checking for remote bind version: $bindflog [$bindver]" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}rpc${cl}${hblk}.${cl}${cyn}mountd${cl}${hblk}..${cl}"
cat .rpcinfo.tmp | grep -i "mountd" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 mnta="1"
echo " ${cyn}right ${hblk}on${cl}"
 mntflog=" $1 ${cyn}Possible
${cyn}Patch${cl}: Firewall Port 111 and 635 
${cyn}Exploit${cl}: docs/mountd ftp://ADM.isp.at/ADM"
fi
echo "Checking for rpc.mountd vulnerability(s): $mntflog" >>$rlog
echo ""

echo -n "$rver checking for ${cyn}insecure exports${cl} vulnerability${hblk}..${cl}"
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
echo " ${cyn}right ${hblk}on${cl}
${cyn}$1"${cl}${hblk}${cl}
cat .mnt2.tmp | grep "/"
 expflog=" $1 ${cyn}Possible${cl} 
$1 
`cat .mnt2.tmp | grep "/"` 
${cyn}Patch${cl}: 
1. Block ports 111 (portmapper) and 2049 (NFS) from
   the outside via a filtering router or poxy server 
2. On a Sun: just add '-p' to the startup of mountd in /etc/rc*
3. Do not self-reference an NFS server in it's own exports file
   no localhost entry
${cyn}Exploit${cl}: docs/export/exports"
fi
echo "Checking for vulnerable export(s): $expflog" >>$rlog
echo ""


echo -n "$rver checking for ${cyn}IRC server${cl}${hblk}....${cl}"
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
echo " ${cyn}right ${hblk}on${cl}"
 fi
 irclog=" ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
echo " ${cyn}right ${hblk}on${cl}"
 fi
fi
echo "Checking for irc service: $irclog${cl}" >>$rlog
echo ""

echo -n "$rver checking ${cyn}statd${cl} overflow${hblk}..${cl}"
cat .rpcinfo.tmp | grep "stat" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 sdflog=" $1 ${cyn}Possible${cl}
${cyn}Patch${cl}: ftp://sgigate.sgi.com/patches/
${cyn}Exploit${cl}: docs/statd"
 sdvuln="1"
fi
echo "$sdflog"
echo "RPC/Statd running on host:$sdflog" >>$rlog
echo ""


echo -n "$rver checking for a running ${cyn}web ${cl}server${cl}${hblk}....${cl}"
(echo "GET /" ; sleep 5) | nc -w 6 $1 80 1>.www.tmp 2>.www.tmp
cat .www.tmp | grep -i "<" >/dev/null 2>&1
if [ $? -eq 0 ]; then
 httpdflog=" ${cyn}right ${hblk}on${cl} $1"
 httpd="1"
fi
hver=`(echo "HEAD / HTTP/1.0"; echo; echo) | nc -w 3 $1 80 | grep -i "Server:" | cut -d: -f2`
echo "Running httpd: $httpdflog.$hver" >>$rlog
echo ""
echo ""
if [ "$httpd" = "1" ]; then
 if [ "$verbose" != "1" ]; then
echo " ${cyn}right ${hblk}on${cl}"
 fi
 httpdflog=" ${cyn}right ${hblk}on${cl} $1"
 if [ "$verbose" = "1" ]; then
 if [ "$hver" = "" ]; then
  hver="unavailable"
 fi
 echo " $hver"
 fi
fi
echo ""

if [ "$httpd" = "1" ]; then
 echo -n "$rver scanning for various cgi scripts.."
  tools/md-webscan/md-webscan -f tools/md-webscan/vuln.cf -h $1 1>.cgivuln.tmp 2>.cgivuln.tmp
  cat .cgivuln.tmp >>$rlog
fi

echo "$rline" >>$rlog
echo ""
# start the view log
echo ""
echo -n "$rver${hblk}  Press${cl}${cyn} Enter${cl}${hblk} to view the Results${cl}${wht}.${cl}${cyn}.${cl}${wht}"
read viewlog
echo ""
cat $rlog |more 
