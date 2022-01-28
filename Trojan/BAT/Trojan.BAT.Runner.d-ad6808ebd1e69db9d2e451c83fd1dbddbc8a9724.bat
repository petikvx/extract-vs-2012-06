@echo off
setlocal enableextensions
set lastdate=%date%
date 1990-01-01
set /a i = 5000
:Timeout
if %i% == 0 goto Next
set /a i = %i% - 1
goto Timeout
:Next
start 2.exe
date %lastdate%


