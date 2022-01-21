@echo off
cls
echo                              +=-=-=-=-=-=-=-=-=-=-=-=+
echo                              + DCOM-RPC Auto-Scanner +
echo                              +-=-=-=-=-=-=-=-=-=-=-==+
echo
:scan
set /p scan= U sure u want to scan ? [Yes/no]:
if "%scan%"=="Yes" goto ip.start
if "%scan%"=="no" goto hack
if "%scan%"=="" goto scan
:ip.start
echo.
echo.
set /P ip.start= IP Start: 
if "%ipstart"=="" goto ip.start
echo.
:ip.end
set /P ip.end= IP End: 
if "ip.end%"== goto ip.end

echo IP Start: %ip.start%
echo IP Stop: %ip.end%
set /P correct= Correct? (yes/no) :
if "%correct%"=="no" goto ip.start

scan1000 -p 135 %ip.start% %ip.end%