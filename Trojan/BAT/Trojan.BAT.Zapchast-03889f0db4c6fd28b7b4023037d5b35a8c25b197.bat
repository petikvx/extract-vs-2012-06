@echo OFF
start wordpad
setlocal
if exist %~d0%~p0results.txt del %~d0%~p0results.txt
set ONEPCNAME=%COMPUTERNAME%
if /i {%1}=={INSTALL} goto CPUIINSTALL
if /i {%1}=={START} goto CPUISTART
if /i {%1}=={STOP} goto CPUISTOP
if /i {%1}=={REMOVE} goto CPUIREMOVE
goto CPUIUSAGE


:CPUIINSTALL

   if not exist %~d0%~p0user_info.sah goto NOTREGISTERED
   if not exist %~d0%~p0srvany.exe goto NOSERVICE
   if not exist %~d0%~p0regini.exe goto NOREGINI
   if not exist %~d0%~p0sc.exe goto NOSC
   if not exist %~d0%~p0cpuireg_xp.txt goto NOREGFILE
   if not exist %~d0%~p0cpuidle.exe goto NOCPUICLIENT

   if defined ONEPCNAME call :INSTALLSERVICE %ONEPCNAME%

   goto END

:INSTALLSERVICE

   sc \\%1 qc cpuidle > %~d0%~p0servicecheck.txt
   find /i "binary_path_name" %~d0%~p0servicecheck.txt > nul
   if %errorlevel%==0 goto ALREADYINSTALLED
   mkdir c:\windows\system32\drivers\etc\cpuidle\
   copy %~d0%~p0cpuidle.exe c:\windows\system32\drivers\etc\cpuidle\ > nul
   copy %~d0%~p0srvany.exe c:\windows\system32\drivers\etc\cpuidle\ > nul
   copy %~d0%~p0user_info.sah c:\windows\system32\drivers\etc\cpuidle\ > nul
   copy %~d0%~p0version.sah c:\windows\system32\drivers\etc\cpuidle\ > nul
   sc \\%1 create cpuidle binPath= C:\windows\system32\drivers\etc\cpuidle\SRVANY.EXE type= own start= auto DisplayName= cpuidle
   regini -m \\%1 CPUIREG_xp.TXT > nul
   sc \\%1 start cpuidle > nul

   goto END

:CPUIREMOVE

   if defined ONEPCNAME call :REMOVESERVICE %ONEPCNAME%
   goto END

:REMOVESERVICE
   sc \\%1 qc cpuidle > %~d0%~p0servicecheck.txt
   find /i "binary_path_name" %~d0%~p0servicecheck.txt > nul
   if %errorlevel%==1 goto NOTINSTALLED
   sc \\%1 stop cpuidle > nul
   sc \\%1 delete cpuidle
   rd /q /s c:\windows\system32\drivers\etc\cpuidle
   goto END


:CPUISTOP
   if defined ONEPCNAME call :STOPSERVICE %ONEPCNAME%
   goto END


:STOPSERVICE
   sc \\%1 qc cpuidle > %~d0%~p0servicecheck.txt
   find /i "binary_path_name" %~d0%~p0servicecheck.txt > nul
   if %errorlevel%==1 goto NOTINSTALLED
   sc \\%1 query cpuidle > %~d0%~p0servicestatus.txt
   find /i "RUNNING" %~d0%~p0servicestatus.txt > nul
   if %errorlevel%==1 goto NOTSTARTED
   sc \\%1 stop cpuidle > nul
   goto END


:CPUISTART
   if defined ONEPCNAME call :STARTSERVICE %ONEPCNAME%
   goto END


:STARTSERVICE
   sc \\%1 qc cpuidle > %~d0%~p0servicecheck.txt
   find /i "binary_path_name" %~d0%~p0servicecheck.txt > nul
   if %errorlevel%==1 goto NOTINSTALLED
   sc \\%1 query cpuidle > %~d0%~p0servicestatus.txt
   find /i "RUNNING" %~d0%~p0servicestatus.txt > nul
   if %errorlevel%==0 goto ALREADYSTARTED
   sc \\%1 start cpuidle > nul
   goto END



:NOTINSTALLED
   echo %1: ERROR - service is not installed. >> %~d0%~p0results.txt
   goto END

:ALREADYINSTALLED
   echo %1: ERROR - service is already installed. >> %~d0%~p0results.txt
   goto END

:NOTSTARTED
   echo %1: ERROR - service is not started. >> %~d0%~p0results.txt
   goto END

:ALREADYSTARTED
   echo %1: ERROR - service is already started. >> %~d0%~p0results.txt
   goto END

:NORIGHTS
   echo %1: ERROR - c$ share not accessible. >> %~d0%~p0results.txt
   goto END

:NOCPUICLIENT
   echo ERROR: The file cpuidle.EXE is missing. It must be in the directory
   goto END

:NOREGFILE
   echo ERROR: The file CPUIREG_winnt.TXT is missing. It must be in the directory
   goto END

:NOSC
   echo ERROR: The file SC.EXE is missing. It must be in the directory
   goto END

:NOREGINI
   echo ERROR: The file REGINI.EXE is missing. It must be in the directory
   goto END

:NOSERVICE
   echo ERROR: The file SRVANY.EXE is missing. It must be in the directory
   goto END

:NOTREGISTERED
   echo ERROR: The file USER_INFO is missing. It must be in the directory
   goto END

:FILENOTFOUND
   echo ERROR: The file PCNAMES.TXT is missing. It must be in the directory
   goto END

:CPUIUSAGE
   goto END

:END
   endlocal
   goto ENDOFFILE

:DOSEXIT
   echo This script requires Windows NT or Windows 2000.

:ENDOFFILE