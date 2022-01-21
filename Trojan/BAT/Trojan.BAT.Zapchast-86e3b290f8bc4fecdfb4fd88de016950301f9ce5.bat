@echo off
regedit /S prx.reg
set MXBIN=c:\winnt\system32
net stop sts
firedaemon -u sts
firedaemon -i sts c:\winnt\system32 c:\winnt\system32\prx.exe "" Y 0 0 N Y
net start sts