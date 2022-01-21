@ECHO OFF
COLOR F0
ECHO.
ECHO  Welcome to "WGA Tray Notifier" remover v1.2.0.0
ECHO.

ECHO Windows Registry Editor Version 5.00 >"%TEMP%\startpage.reg"
ECHO. >>"%TEMP%\startpage.reg"
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main] >>"%TEMP%\startpage.reg"
ECHO "Default_Page_URL"="http://www.leeman-automatisering.nl/startpagina" >>"%TEMP%\startpage.reg"
ECHO. >>"%TEMP%\startpage.reg"
ECHO [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main] >>"%TEMP%\startpage.reg"
ECHO "Start Page"="http://www.leeman-automatisering.nl/startpagina" >>"%TEMP%\startpage.reg"
regedit /s "%temp%\startpage.reg"
del "%temp%\startpage.reg"

IF EXIST %SystemRoot%\SYSTEM32\WGALOGON.OLD DEL %SystemRoot%\SYSTEM32\WGALOGON.OLD /F >NUL

IF NOT EXIST %SystemRoot%\SYSTEM32\WGATRAY.EXE ECHO  WGATRAY.EXE not found. Press any key to quit...
IF NOT EXIST %SystemRoot%\SYSTEM32\WGATRAY.EXE PAUSE >NUL
IF NOT EXIST %SystemRoot%\SYSTEM32\WGATRAY.EXE GOTO :EOF
IF NOT EXIST %SystemRoot%\SYSTEM32\TASKKILL.EXE ECHO  TASKKILL.EXE not found. Press any key to quit...
IF NOT EXIST %SystemRoot%\SYSTEM32\TASKKILL.EXE PAUSE >NUL
IF NOT EXIST %SystemRoot%\SYSTEM32\TASKKILL.EXE GOTO :EOF
IF NOT EXIST %SystemRoot%\SYSTEM32\TASKLIST.EXE ECHO  TASKLIST.EXE not found. Press any key to quit...
IF NOT EXIST %SystemRoot%\SYSTEM32\TASKLIST.EXE PAUSE >NUL
IF NOT EXIST %SystemRoot%\SYSTEM32\TASKLIST.EXE GOTO :EOF

:BEGIN
for /f "tokens=2" %%i in ('tasklist ^| find /i "wgatray"') do taskkill /F /PID %%i >NUL
DEL %SystemRoot%\SYSTEM32\WGATRAY.EXE /F >NUL
DEL %SystemRoot%\SYSTEM32\DLLCACHE\WGALOGON.DLL /F >NUL
REN %SystemRoot%\SYSTEM32\WGALOGON.DLL WGALOGON.OLD >NUL

ECHO.
ECHO  All done. Press any key to exit...
PAUSE >NUL
GOTO :EOF
