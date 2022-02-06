@echo off
regedit /s ra.reg
service /install /silence
net start r_server
%systemroot%\system32\regsvr -run
