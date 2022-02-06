@echo off
echo This batch file will compress the project, 
echo and place the newly  compressed executables
echo into the "Packed" directory.
echo.
pause
mkdir Packed
del Packed\LithiumServer.exe
echo.
upx --best -o Packed\LithiumServer.exe ..\LithiumServer.exe
REM upx --best -o Packed\Lithium.exe ..\Lithium.exe
REM upx --best -o Packed\ServerEdit.exe ..\ServerEdit.exe
REM upx --best -o Packed\srv_funstuff.dll ..\srv_funstuff.dll
REM upx --best -o Packed\srv_capture.dll ..\srv_capture.dll
REM upx --best -o Packed\cli_capture.dll "..\Client Plugins\cli_capture.dll"
echo.
echo Compression complete.
echo.
pause