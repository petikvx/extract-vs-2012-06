@echo off
echo *-------------------------------------------------------------------*>info.txt
echo *--Computer Specs....                                             --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
psinfo.exe -d >>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--List of Current Processes Running....                          --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
fport.exe /ap >>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--List of Current Running/Stopped Services..                     --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo Option Disabled For Security Purposes >>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--List of Whois Info..                                           --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
cls
echo Whoami >> info.txt
echo. >> info.txt
echo Computer Name= %COMPUTERNAME% >> info.txt
echo Login Name=    %USERNAME% >> info.txt
echo Login Domain=  %USERDOMAIN% >> info.txt
echo Logon Server=  %LOGONSERVER% >> info.txt
echo. >> info.txt
echo Home Drive=    %HOMEDRIVE% >> info.txt
echo Home Share=    %HOMESHARE% >> info.txt
echo System Drive=  %SYSTEMDRIVE% >> info.txt
echo System Root=   %SYSTEMROOT% >> info.txt
echo Win Directory= %WINDIR% >> info.txt
echo User Profile Path= %USERPROFILE% >> info.txt
echo. >> info.txt
echo Groups user belongs to: >> info.txt
echo. >> info.txt
.\whoami.exe /user /groups /fo list >> info.txt
echo. >> info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo *--Result of speed test from various countries....                --*>>info.txt
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: DENMARK >>info.txt
ftpc.exe -n -A -s:ftpc.cmds ftp.dk.FreeBSD.org >Status-1of20
findstr /C:"bytes rec" Status-1of20>>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: GERMANY >>info.txt
del Status-1of20
ftpc.exe -n -A -s:ftpcg.cmds ftp7.de.FreeBSD.org >Status-2of20
findstr /C:"bytes rec" Status-2of20 >>info.txt
del elements.zip
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NETHERLANDS 1 >>info.txt
del Status-2of20
ftpc.exe -n -A -s:ftpc.cmds ftp2.nl.freebsd.org >Status-3of20
findstr /C:"bytes rec" Status-3of20 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NETHERLANDS 2 >>info.txt
del Status-3of20
ftpc.exe -n -A -s:ftpco.cmds ftp.nic.surfnet.nl >Status-4of20
findstr /C:"bytes rec" Status-4of20 >>info.txt
del winhtml.zip
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NETHERLANDS 3 >>info.txt
del Status-4of20
ftpc.exe -n -A -s:ftpc5.cmds ftp.cs.ruu.nl >Status-5of20
findstr /C:"bytes rec" Status-5of20 >>info.txt
del ls-lR.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: CANADA >>info.txt
del Status-5of20
ftpc.exe -n -A -s:ftpca.cmds ftp.ryerson.ca >Status-6of20
findstr /C:"bytes rec" Status-6of20 >>info.txt
del qvt415e.exe
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: SWEDEN >>info.txt
del Status-6of20
ftpc.exe -n -A -s:ftpc.cmds ftp.se.FreeBSD.org >Status-7of20
findstr /C:"bytes rec" Status-7of20 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: UK >>info.txt
del Status-7of20
ftpc.exe -n -A -s:ftpc.cmds ftp.uk.FreeBSD.org >Status-8of20
findstr /C:"bytes rec" Status-8of20 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: FRANCE >>info.txt
del Status-8of20
ftpc.exe -n -A -s:ftpc.cmds ftp8.fr.FreeBSD.org >Status-9of20
findstr /C:"bytes rec" Status-9of20 >>info.txt
del ncurses.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: TAIWAN >>info.txt
del Status-9of20
ftpc.exe -n -A -s:ftptw.cmds ftp.tw.freebsd.org >Status-10of20
findstr /C:"bytes rec" Status-10of20 >>info.txt
del security-patch-signal-01.42.tgz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: JAPAN >>info.txt
del Status-10of20
ftpc.exe -n -A -s:ftpce.cmds ftp2.jp.FreeBSD.org >Status-11of20
findstr /C:"bytes rec" Status-11of20 >>info.txt
del 5.0R-R01.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: AUSTRALIA >>info.txt
del Status-11of20
ftpc.exe -n -A -s:ftpcy.cmds ftp3.au.FreeBSD.org >Status-12of20
findstr /C:"bytes rec" Status-12of20 >>info.txt
del initrd-20040210.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: NORWAY >>info.txt
del Status-12of20
ftpc.exe -n -A -s:ftpcx.cmds ftp.no.FreeBSD.org >Status-13of20
findstr /C:"bytes rec" Status-13of20 >>info.txt
del MBM5300.EXE
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: AT >>info.txt
del Status-13of20
ftpc.exe -n -A -s:ftpch.cmds ftp.chello.at >Status-14of20
findstr /C:"bytes rec" Status-14of20 >>info.txt
del dx5ger.exe
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: HUNGARY >>info.txt
del Status-14of20
ftpc.exe -n -A -s:ftpch.cmds ftp.chello.hu >Status-15of20
findstr /C:"bytes rec" Status-15of20 >>info.txt
del dx5ger.exe
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: FINLAND >>info.txt
del Status-15of20
ftpc.exe -n -A -s:ftpfn.cmds garbo.uwasa.fi >Status-16of20
findstr /C:"bytes rec" Status-16of20 >>info.txt
del nasm-0.97.tar.gz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: USA 1 >>info.txt
del Status-16of20
ftpc.exe -n -A -s:ftpc4.cmds rtfm.mit.edu >Status-17of20
findstr /C:"bytes rec" Status-17of20 >>info.txt
del Index-bytime
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: USA 2 >>info.txt
del Status-17of20
ftpc.exe -n -A -s:ftpc6.cmds ftp.wustl.edu >Status-18of20
findstr /C:"bytes rec" Status-18of20 >>info.txt
del hdlist.cz
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: USA 3 >>info.txt
del Status-18of20
ftpc.exe -n -A -s:ftpc2.cmds ftp.primushost.com >Status-19of20
findstr /C:"bytes rec" Status-19of20 >>info.txt
del 5meg
echo *-------------------------------------------------------------------*>>info.txt
echo COUNTRY: USA 4 >>info.txt
del Status-19of20
ftpc.exe -n -A -s:ftpc3.cmds ftp.simtel.net >Status-20of20
findstr /C:"bytes rec" Status-20of20 >>info.txt
del tuner25.zip
del Status-20of20
echo *---------------------------------- DONE ---------------------------*>>info.txt
ipconfig /all >> info.txt
echo . > "+Speed Test Complete"