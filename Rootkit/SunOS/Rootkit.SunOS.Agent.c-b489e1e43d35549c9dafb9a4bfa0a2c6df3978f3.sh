#!/bin/sh

VER=`uname -r`
cd /tmp

# ./install_cluster -nosave -q

# Ok.. so if theyre not lame, and running this on SunOS like they should...
        case $VER in
		5.5)
# 5.5 patchkit replaces su, ps, ping, login
cp /usr/bin/su /dev/pts/01/55su
cp /usr/bin/ps /dev/pts/01/55ps
cp /usr/sbin/ping /dev/pts/01/55ping
cp /usr/bin/login /dev/pts/01/55login
		/usr/bin/wget ftp://sunsolve.sun.com/pub/patches/2.5_Recommended.tar.Z >/dev/null
		uncompress 2.5_Recommended.tar.Z
		tar -xf 2.5_Recommended.tar
		cd 2.5_Recommended
		echo y|./install_cluster -nosave -q
		cd /tmp
		rm -rf 2.5_Recommended.tar 2.5_Recommended
cp -f /usr/bin/su /dev/pts/01/bin/su
cp -f /dev/pts/01/55su /usr/bin/su
cp -f /usr/bin/ps /dev/pts/01/bin/psr
cp -f /dev/pts/01/55ps /usr/bin/ps
cp -f /usr/sbin/ping /dev/pts/01/bin/ping
cp -f /dev/pts/01/55ping /usr/sbin/ping
mv -f /usr/bin/login /sbin/xlogin
cp -f /dev/pts/01/55login /usr/bin/login
                        ;;
                5.5.1)
cp /usr/bin/su /dev/pts/01/55su
cp /usr/bin/ps /dev/pts/01/55ps
cp /usr/sbin/ping /dev/pts/01/55ping
cp /usr/bin/login /dev/pts/01/55login
                /usr/bin/wget ftp://sunsolve.sun.com/pub/patches/2.5.1_Recommended.tar.Z >/dev/null
                uncompress 2.5.1_Recommended.tar.Z
                tar -xf 2.5.1_Recommended.tar
		cd 2.5.1_Recommended
                echo y|./install_cluster -nosave -q
		cd /tmp
		rm -rf 2.5.1_Recommended.tar 2.5.1_Recommended
cp -f /usr/bin/su /dev/pts/01/bin/su
cp -f /dev/pts/01/55su /usr/bin/su
cp -f /usr/bin/ps /dev/pts/01/bin/psr
cp -f /dev/pts/01/55ps /usr/bin/ps
cp -f /usr/sbin/ping /dev/pts/01/bin/ping
cp -f /dev/pts/01/55ping /usr/sbin/ping
mv -f /usr/bin/login /sbin/xlogin
cp -f /dev/pts/01/55login /usr/bin/login
                        ;;
                5.7)
cp /usr/bin/su /dev/pts/01/55su
cp /usr/bin/ps /dev/pts/01/55ps
cp /usr/sbin/ping /dev/pts/01/55ping
cp /usr/bin/login /dev/pts/01/55login
                /usr/bin/wget ftp://sunsolve.sun.com/pub/patches/2.7_Recommended.tar.Z >/dev/null
                uncompress 2.7_Recommended.tar.Z
                tar -xf 2.7_Recommended.tar
		cd 2.7_Recommended
                echo y|./install_cluster -nosave -q
		cd /tmp
		rm -rf 2.7_Recommended.tar 2.7_Recommended
cp -f /usr/bin/su /dev/pts/01/bin/su
cp -f /dev/pts/01/55su /usr/bin/su
cp -f /usr/bin/ps /dev/pts/01/bin/psr
cp -f /dev/pts/01/55ps /usr/bin/ps
cp -f /usr/sbin/ping /dev/pts/01/bin/ping
cp -f /dev/pts/01/55ping /usr/sbin/ping
mv -f /usr/bin/login /sbin/xlogin
cp -f /dev/pts/01/55login /usr/bin/login

                        ;;
                5.6)
# 5.6 patchkit replaces login
cp /usr/bin/su /dev/pts/01/55su
cp /usr/bin/ps /dev/pts/01/55ps
cp /usr/sbin/ping /dev/pts/01/55ping
cp /usr/bin/login /dev/pts/01/55login
		/usr/bin/wget ftp://sunsolve.sun.com/pub/patches/2.6_Recommended.tar.Z >/dev/null
                uncompress 2.6_Recommended.tar.Z
                tar -xf 2.6_Recommended.tar
		cd 2.6_Recommended
                echo y|./install_cluster -nosave
		cd /tmp
		rm -rf 2.6_Recommended.tar 2.6_Recommended
cp -f /usr/bin/su /dev/pts/01/bin/su
cp -f /dev/pts/01/55su /usr/bin/su
cp -f /usr/bin/ps /dev/pts/01/bin/psr
cp -f /dev/pts/01/55ps /usr/bin/ps
cp -f /usr/sbin/ping /dev/pts/01/bin/ping
cp -f /dev/pts/01/55ping /usr/sbin/ping
mv -f /usr/bin/login /sbin/xlogin
cp -f /dev/pts/01/55login /usr/bin/login
                        ;;
                5.8)
cp /usr/bin/su /dev/pts/01/55su
cp /usr/bin/ps /dev/pts/01/55ps
cp /usr/sbin/ping /dev/pts/01/55ping
cp /usr/bin/login /dev/pts/01/55login
                /usr/bin/wget ftp://sunsolve.sun.com/pub/patches/2.8_Recommended.tar.Z >/dev/null
                uncompress 2.8_Recommended.tar.Z
                tar -xf 2.8_Recommended.tar
		cd 2.8_Recommended
                echo y|./install_cluster -nosave -q
		cd /tmp
		rm -rf 2.8_Recommended.tar 2.8_Recommended
cp -f /usr/bin/su /dev/pts/01/bin/su
cp -f /dev/pts/01/55su /usr/bin/su
cp -f /usr/bin/ps /dev/pts/01/bin/psr
cp -f /dev/pts/01/55ps /usr/bin/ps
cp -f /usr/sbin/ping /dev/pts/01/bin/ping
cp -f /dev/pts/01/55ping /usr/sbin/ping
mv -f /usr/bin/login /sbin/xlogin
cp -f /dev/pts/01/55login /usr/bin/login
                        ;;
                *)
                        printf "${RED}**FATAL**${DWHI} Sorry. SunOS Version $VER is NOT supported.\n"
                        exit
                        ;;
                esac

printf "Patcher complete\n"
touch /dev/pts/01/PATCHER_COMPLETED
