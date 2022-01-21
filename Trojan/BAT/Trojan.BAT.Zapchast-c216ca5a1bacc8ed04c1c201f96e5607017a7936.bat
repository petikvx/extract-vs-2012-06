@echo off
net start scvhost.exe
net stop "radmm"
net stop "r_server"
exit