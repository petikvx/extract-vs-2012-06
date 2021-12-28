@echo off
title ResetMe 2010

if not exist "%AllUsersProfile%\Application Data\Kaspersky Lab\AVP9\Data" goto altpath
echo t.ru>"%AllUsersProfile%\Application Data\Kaspersky Lab\AVP9\Data:extended"
for /f "tokens=*" %%a in ('more^<"%AllUsersProfile%\Application Data\Kaspersky Lab\AVP9\Data:extended"') do if %%a==t.ru goto next
goto error

:altpath
if not exist "%ProgramData%\Kaspersky Lab\AVP9\Data" goto error
echo t.ru>"%ProgramData%\Kaspersky Lab\AVP9\Data:extended"
for /f "tokens=*" %%a in ('more^<"%ProgramData%\Kaspersky Lab\AVP9\Data:extended"') do if %%a==t.ru goto next
goto error

:next
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SPC /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\KasperskyLab\LicStorage /f

:ok
color 0A
echo.
echo.
echo Trial reset OK!
echo.
pause
exit

:error
color 0C
echo.
echo Trial reset ERROR
echo.
pause
exit